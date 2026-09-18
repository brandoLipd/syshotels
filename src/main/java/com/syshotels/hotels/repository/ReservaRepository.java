package com.syshotels.hotels.repository;
import java.time.LocalDate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.syshotels.hotels.models.Reserva;

@Repository
public interface ReservaRepository extends JpaRepository<Reserva, Long> {


    @Query("""
        SELECT COUNT(r) FROM Reserva r 
        WHERE r.habitacion.id = :habitacionId 
        AND (:fechaInicio < r.fechaFin AND :fechaFin > r.fechaInicio)
    """)
    long countReservasSuperpuestas(
        @Param("habitacionId") Long habitacionId,
        @Param("fechaInicio") LocalDate fechaInicio,
        @Param("fechaFin") LocalDate fechaFin
    );
}