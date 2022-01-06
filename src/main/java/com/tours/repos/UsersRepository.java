package com.tours.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tours.models.User;

@Repository
public interface UsersRepository extends JpaRepository<User, String>{

	
}
