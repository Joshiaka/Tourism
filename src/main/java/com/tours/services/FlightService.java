package com.tours.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tours.models.Flight;
import com.tours.repos.FlightRepository;

@Service
public class FlightService {

	@Autowired FlightRepository repo;
	
	public void saveFlight(Flight flight) {
		repo.save(flight);
	}
	
	public List<Flight> listall(){
		return repo.findAll();
	}
	
	public Flight findById(int id) {
		return   repo.getById(id);
	}
}
