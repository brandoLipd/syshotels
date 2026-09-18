package com.syshotels.hotels.models;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data 
@NoArgsConstructor 
@AllArgsConstructor
@Entity
@Table(name = "sedes")
public class Sede {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    public Sede(String nombre) {
        this.nombre = nombre;
    }
    @Column(nullable = false, unique = true)
    private String nombre; // Barranquilla, Cali, Cartagena, Bogotá

    @OneToMany(mappedBy = "sede", cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Habitacion> habitaciones;

   
}