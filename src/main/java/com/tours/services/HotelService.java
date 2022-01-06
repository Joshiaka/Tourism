package com.tours.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tours.models.Hotel;
import com.tours.repos.HotelRepository;

@Service
public class HotelService {

	@Autowired HotelRepository repo;
	
	public void saveHotel(Hotel hotel) {
		repo.save(hotel);
	}
	
	public List<Hotel> listall(){
		return repo.findAll();
	}
	
	public Hotel findById(int id) {
		return repo.getById(id);
	}
}
