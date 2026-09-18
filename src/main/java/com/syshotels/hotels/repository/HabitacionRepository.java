package com.syshotels.hotels.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.syshotels.hotels.models.Habitacion;
import com.syshotels.hotels.models.TipoAlojamiento;

@Repository
public interface HabitacionRepository extends JpaRepository<Habitacion, Long> {
    List<Habitacion> findBySedeIdAndTipo(Long sedeId, TipoAlojamiento tipo);
}