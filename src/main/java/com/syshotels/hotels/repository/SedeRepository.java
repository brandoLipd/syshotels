package com.syshotels.hotels.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.syshotels.hotels.models.Sede;

@Repository
public interface SedeRepository extends JpaRepository<Sede, Long> {
}