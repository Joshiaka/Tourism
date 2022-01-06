package com.tours.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tours.models.Flight;
import com.tours.models.Hotel;
import com.tours.models.Place;
import com.tours.models.TourPackage;
import com.tours.services.BookingService;
import com.tours.services.FlightService;
import com.tours.services.HotelService;
import com.tours.services.PlaceService;
import com.tours.services.TourPackageService;
import com.tours.services.UserService;

@Controller
public class AdminController {

	@Autowired UserService uservice;
	@Autowired BookingService bservice;
	@Autowired HotelService hservice;
	@Autowired FlightService fservice;
	@Autowired PlaceService pservice;
	@Autowired TourPackageService tservice;
	@Autowired HttpSession session;

	@GetMapping("/bookings")
	public String bookings(Model model) {
		model.addAttribute("list", bservice.getAllBookings());
		return "allbookings";
	}
	
	@GetMapping("/users")
	public String users(Model model) {
		model.addAttribute("list", uservice.getAllUsers());
		return "users";
	}
	
	@PostMapping("/hotels")
	public String saveHotel(Hotel hotel,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", "Hotel added successfully");
		hservice.saveHotel(hotel);
		return "redirect:/hotels";
	}
	
	@PostMapping("/flights")
	public String flights(Flight flight,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", "Flight added successfully");
		fservice.saveFlight(flight);
		return "redirect:/flights";
	}
	
	@PostMapping("/places")
	public String places(Place place,MultipartFile pic,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", "Place added successfully");
		pservice.savePlace(place, pic);
		return "redirect:/places";
	}
	
	@PostMapping("/packages")
	public String tours(TourPackage pkg,MultipartFile pic,RedirectAttributes ra) {
		ra.addFlashAttribute("msg", "Place added successfully");
		tservice.savePakage(pkg, pic);
		return "redirect:/packages";
	}
	
}
