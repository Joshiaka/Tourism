package com.tours.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Flight {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int fare;
	private String fname;
	private String fromcity;
	private String tocity;
	private String fromstate;
	private String fromcountry;
	private String tostate;
	private String tocountry;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFare() {
		return fare;
	}
	public void setFare(int fare) {
		this.fare = fare;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFromcity() {
		return fromcity;
	}
	public void setFromcity(String fromcity) {
		this.fromcity = fromcity;
	}
	public String getTocity() {
		return tocity;
	}
	public void setTocity(String tocity) {
		this.tocity = tocity;
	}
	public String getFromstate() {
		return fromstate;
	}
	public void setFromstate(String fromstate) {
		this.fromstate = fromstate;
	}
	public String getFromcountry() {
		return fromcountry;
	}
	public void setFromcountry(String fromcountry) {
		this.fromcountry = fromcountry;
	}
	public String getTostate() {
		return tostate;
	}
	public void setTostate(String tostate) {
		this.tostate = tostate;
	}
	public String getTocountry() {
		return tocountry;
	}
	public void setTocountry(String tocountry) {
		this.tocountry = tocountry;
	}
	@Override
	public String toString() {
		return "Flight [id=" + id + ", fare=" + fare + ", fname=" + fname + ", fromcity=" + fromcity + ", tocity="
				+ tocity + ", fromstate=" + fromstate + ", fromcountry=" + fromcountry + ", tostate=" + tostate
				+ ", tocountry=" + tocountry + "]";
	}
	
	
	
}
