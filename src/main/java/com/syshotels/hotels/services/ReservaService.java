package com.syshotels.hotels.services;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syshotels.hotels.models.CalculoTarifaDTO;
import com.syshotels.hotels.models.Habitacion;
import com.syshotels.hotels.models.Tarifa;
import com.syshotels.hotels.models.TipoAlojamiento;
import com.syshotels.hotels.repository.HabitacionRepository;
import com.syshotels.hotels.repository.ReservaRepository;
import com.syshotels.hotels.repository.TarifaRepository;

@Service
public class ReservaService {

    @Autowired
    private TarifaRepository tarifaRepository;

    @Autowired
    private HabitacionRepository habitacionRepository;

    @Autowired
    private ReservaRepository reservaRepository;

    // 1. Ver disponibilidad de habitaciones
    public List<Habitacion> buscarDisponibles(Long sedeId, TipoAlojamiento tipo, LocalDate inicio, LocalDate fin, int personas) {
        List<Habitacion> habitaciones = habitacionRepository.findBySedeIdAndTipo(sedeId, tipo);

        return habitaciones.stream()
            .filter(h -> h.getCupoMaximoPersonas() >= personas) // Cumple con el cupo
            .filter(h -> reservaRepository.countReservasSuperpuestas(h.getId(), inicio, fin) == 0) // Sin cruce de fechas
            .toList();
    }

    // 2. Calcular tarifa total
    public BigDecimal calcularTarifaTotal(CalculoTarifaDTO dto) {
        // Validar cupo máximo de la habitación elegida
        Habitacion habitacion = habitacionRepository.findById(dto.getHabitacionId())
            .orElseThrow(() -> new IllegalArgumentException("Habitación no encontrada"));

        if (dto.getNumeroPersonas() > habitacion.getCupoMaximoPersonas()) {
            throw new IllegalArgumentException("El número de personas excede el cupo máximo permitido.");
        }

        // Buscar tarifa según sede, tipo y temporada
        Tarifa tarifa = tarifaRepository.findBySedeIdAndTipoAlojamientoAndTemporada(
            habitacion.getSede().getId(), 
            habitacion.getTipo(), 
            dto.getTemporada()
        ).orElseThrow(() -> new IllegalArgumentException("Tarifa no configurada para estas variables"));

        long noches = ChronoUnit.DAYS.between(dto.getFechaInicio(), dto.getFechaFin());
        
        // Cálculo base: (Precio Noche * Habitaciones * Noches) + (Recargo Persona * Personas * Noches)
        BigDecimal costoHabitaciones = tarifa.getPrecioBasePorNoche()
            .multiply(BigDecimal.valueOf(dto.getCantidadHabitaciones()))
            .multiply(BigDecimal.valueOf(noches));

        BigDecimal costoPersonas = tarifa.getRecargoPorPersona()
            .multiply(BigDecimal.valueOf(dto.getNumeroPersonas()))
            .multiply(BigDecimal.valueOf(noches));

        return costoHabitaciones.add(costoPersonas);
    }
}