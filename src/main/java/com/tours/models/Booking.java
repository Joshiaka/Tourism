package com.tours.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Booking {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;
	@ManyToOne
	@JoinColumn(name="flightid")
	private Flight flight;
	
	@ManyToOne
	@JoinColumn(name="pkgid")
	private TourPackage tour;
	
	@ManyToOne
	@JoinColumn(name="hotelid")
	private Hotel hotel;
	
	private boolean insurance;
	private String bdate;
	@ManyToOne
	@JoinColumn(name="userid")
	private User user;
	
	private String status;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	
	public TourPackage getTour() {
		return tour;
	}

	public void setTour(TourPackage tour) {
		this.tour = tour;
	}

	public Flight getFlight() {
		return flight;
	}

	public void setFlight(Flight flight) {
		this.flight = flight;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public boolean isInsurance() {
		return insurance;
	}

	public void setInsurance(boolean insurance) {
		this.insurance = insurance;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Booking [bid=" + bid + ", tour=" + tour + ", flight=" + flight + ", hotel=" + hotel + ", insurance="
				+ insurance + ", bdate=" + bdate + ", user=" + user + ", status=" + status + "]";
	}
	
	
	
}
