package com.syshotels.hotels.models;


import java.time.LocalDate;




import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalculoTarifaDTO {

    private Long habitacionId;


    private LocalDate fechaInicio;

    private LocalDate fechaFin;



    private Integer numeroPersonas;


    private Integer cantidadHabitaciones;

    private Temporada temporada;
}