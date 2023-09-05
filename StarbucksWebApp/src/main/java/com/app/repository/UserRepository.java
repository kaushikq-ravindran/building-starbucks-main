package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.app.model.User;

@Repository
public interface UserRepository  extends JpaRepository<User,String>{
	@Query("SELECT u FROM User u WHERE LOWER(u.emailID) = LOWER(:emailID)")
	  public  User findUser(@Param("emailID") String emailID);
	
	@Query("SELECT u FROM User u WHERE LOWER(u.emailID) = LOWER(:emailID)")
	  public  User getUserDetails(@Param("emailID") String emailID);
	
}
