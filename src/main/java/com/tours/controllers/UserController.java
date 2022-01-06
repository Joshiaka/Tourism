package com.tours.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.tours.models.Booking;
import com.tours.models.Payment;
import com.tours.services.BookingService;
import com.tours.services.FlightService;
import com.tours.services.HotelService;
import com.tours.services.TourPackageService;
import com.tours.services.UserService;

@Controller
public class UserController {
	
	@Autowired UserService uservice;
	@Autowired BookingService bservice;
	@Autowired HotelService hservice;
	@Autowired FlightService fservice;
	@Autowired TourPackageService tservice;
	@Autowired HttpSession session;

	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("list", bservice.getMyBookings(userid));
		return "dashboard";
	}
	
	@PostMapping("/book")
	public String savebooking(Booking book,int pkgid,int hid,int fid) {
		System.out.println(book);
		String userid=session.getAttribute("userid").toString();
		book.setUser(uservice.findByUserId(userid));
		book.setHotel(hservice.findById(hid));
		book.setFlight(fservice.findById(fid));
		book.setTour(tservice.findById(pkgid));
		Booking bk= bservice.saveBooking(book);
		return "redirect:/payment?bid="+bk.getBid();
	}
	
	@PostMapping("/payment")
	public String savePayment(Payment pmt,int bid,String userid) {
		pmt.setBooking(bservice.findById(bid));
		pmt.setUser(uservice.findByUserId(userid));
		bservice.savePayment(pmt);
		return "redirect:/dashboard";
	}
}
