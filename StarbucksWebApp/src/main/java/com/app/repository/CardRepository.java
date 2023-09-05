package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.app.model.Card;

@Repository
public interface CardRepository  extends JpaRepository<Card,String>{
	@Query("SELECT c FROM Card c WHERE LOWER(c.emailID) = LOWER(:emailID)")
	  public Card getCardDetails(@Param("emailID") String emailID);
}
