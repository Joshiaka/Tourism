package com.tours.services;

import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.tours.models.Place;
import com.tours.repos.PlaceRepository;

@Service
public class PlaceService {

	@Autowired PlaceRepository repo;
	@Autowired ServletContext ctx;
	
	public void savePlace(Place place,MultipartFile photo) {
		try {
			photo.transferTo(Paths.get(ctx.getRealPath("/pics/"), photo.getOriginalFilename()));
		}catch(Exception ex) {
			System.err.println("Error "+ex.getMessage());
		}
		
		place.setPhoto("/pics/"+photo.getOriginalFilename());
		repo.save(place);
	}
	
	public List<Place> listAll(){
		return repo.findAll();
	}
	
}
