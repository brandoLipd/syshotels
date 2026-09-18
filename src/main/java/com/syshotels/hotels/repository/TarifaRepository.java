package com.syshotels.hotels.repository;



import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.syshotels.hotels.models.Tarifa;
import com.syshotels.hotels.models.Temporada;
import com.syshotels.hotels.models.TipoAlojamiento;

@Repository
public interface TarifaRepository extends JpaRepository<Tarifa, Long> {
    Optional<Tarifa> findBySedeIdAndTipoAlojamientoAndTemporada(Long sedeId, TipoAlojamiento tipoAlojamiento, Temporada temporada);
}