package com.tours.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tours.models.User;
import com.tours.repos.UsersRepository;

@Service
public class UserService {

	@Autowired UsersRepository repo;
	
	public void saveUser(User user) {
		if(user.getRole()==null)
			user.setRole("User");
		repo.save(user);
	}
	
	public List<User> getAllUsers(){
		return repo.findAll();
	}
	
	public User findByUserId(String userid) {
		return repo.getById(userid);
	}
	
	public User ValidateLogin(String userid,String pwd) {
		Optional<User> u=repo.findById(userid);
		if(u.isPresent() && u.get().getPwd().equals(pwd)) {
			return u.get();
		}
		else  {
			return null;
		}
	}
	
}
