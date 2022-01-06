package com.tours.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	@ManyToOne
	@JoinColumn(name="bookingid")
	private Booking booking;
	@ManyToOne
	@JoinColumn(name="userid")
	private User user;
	private int amount;
	private String mode;
	private String pmtdate;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public Booking getBooking() {
		return booking;
	}
	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		this.mode = mode;
	}
	public String getPmtdate() {
		return pmtdate;
	}
	public void setPmtdate(String pmtdate) {
		this.pmtdate = pmtdate;
	}
	@Override
	public String toString() {
		return "Payment [pid=" + pid + ", booking=" + booking + ", user=" + user + ", amount=" + amount + ", mode="
				+ mode + ", pmtdate=" + pmtdate + "]";
	}
	
}
