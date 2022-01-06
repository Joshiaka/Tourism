package com.tours.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tours.models.Place;

@Repository
public interface PlaceRepository extends JpaRepository<Place, Integer> {

}
