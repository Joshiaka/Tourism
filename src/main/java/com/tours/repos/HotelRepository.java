package com.tours.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tours.models.Hotel;

@Repository
public interface HotelRepository extends JpaRepository<Hotel, Integer> {

}
