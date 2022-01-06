package com.tours.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tours.models.Payment;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Integer> {

}
