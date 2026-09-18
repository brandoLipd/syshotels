package com.syshotels.hotels.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;



@Data 
@NoArgsConstructor 
@AllArgsConstructor
@Entity
@Table(name = "habitaciones")
public class Habitacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    private TipoAlojamiento tipo;

    private Integer cupoMaximoPersonas;
    @ToString.Exclude
    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "sede_id")
    @JsonBackReference
    private Sede sede;
public Habitacion(TipoAlojamiento tipo, Integer cupoMaximoPersonas, Sede sede) {
        this.tipo = tipo;
        this.cupoMaximoPersonas = cupoMaximoPersonas;
        this.sede = sede;
    }

}