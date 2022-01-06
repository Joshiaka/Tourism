package com.tours.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tours.models.Flight;

@Repository
public interface FlightRepository extends JpaRepository<Flight, Integer> {

}
