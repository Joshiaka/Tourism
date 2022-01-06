package com.tours.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tours.models.TourPackage;

@Repository
public interface PackageRepository extends JpaRepository<TourPackage, Integer> {

}
