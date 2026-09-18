package com.syshotels.hotels.controllers;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.syshotels.hotels.models.CalculoTarifaDTO;
import com.syshotels.hotels.models.Habitacion;
import com.syshotels.hotels.models.TipoAlojamiento;
import com.syshotels.hotels.services.ReservaService;

@RestController
@RequestMapping("/api/v1/reservas")
public class ReservaController {

    @Autowired
    private ReservaService reservaService;


    @GetMapping("/disponibilidad")
    public ResponseEntity<List<Habitacion>> consultarDisponibilidad(
            @RequestParam Long sedeId,
            @RequestParam TipoAlojamiento tipo,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fechaInicio,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fechaFin,
            @RequestParam int numeroPersonas) {
        
        return ResponseEntity.ok(reservaService.buscarDisponibles(sedeId, tipo, fechaInicio, fechaFin, numeroPersonas));
    }

    
    @PostMapping("/calcular-tarifa")
    public ResponseEntity<BigDecimal> calcularTarifa(@RequestBody CalculoTarifaDTO dto) {
        BigDecimal total = reservaService.calcularTarifaTotal(dto);
        return ResponseEntity.ok(total);
    }
}