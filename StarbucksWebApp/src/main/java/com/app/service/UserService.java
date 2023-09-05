package com.app.service;

import java.util.ArrayList;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.app.model.Card;
import com.app.model.User;
import com.app.model.Order;
import com.app.repository.CardRepository;
import com.app.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
		
	@Autowired
	private CardRepository cardRepository;
		
	/** Adding users into database*/
	public boolean adduser(User user) {
		try {
			userRepository.save(user);
			return true;
		} catch (Exception e) {

		}
		return false;
	}

	public User getUser(String email, String password) {	
	User user = userRepository.findUser(email);
	if (user != null && user.getPassword().equals(password)) {
		return user;
		}
	return null;
	}
	
	public Card getCardDetails(String email) {
		Card card = cardRepository.getCardDetails(email);
		if (card != null) {
			return card;
		}
		return null;
	}
	
	/** Adding cards into db*/
	public boolean addCard(Card card) {
		try {
			cardRepository.save(card);
			return true;
		} catch (Exception e) { }
		return false;
	}
	
	public ArrayList<Order> createOrder(Map<String, Integer> m) {
		Order o;
		ArrayList<Order> orderarray = new ArrayList<Order>();
		Double price = 0.00;
		for(Map.Entry<String, Integer> entry : m.entrySet()) {
			o = new Order();
			if(entry.getValue() != 0) {				
				switch ( entry.getKey() )
				{
				case "Cappucino": price = 3.25; break ;
				case "Latte": price = 4.25; break ;
				case "Macchiato": price = 4.00; break ;
				case "Mocha": price = 3.50; break ;
				default: price = 0.0; break ;
				}
				o.setType(entry.getKey());
				o.setCount(entry.getValue());
				o.setPrice((entry.getValue()*price));
				orderarray.add(o);
			}
		}
		return orderarray;
	}
	
	public boolean deleteCard(String emailId) {
		try {
			cardRepository.deleteById(emailId);
			return true;
		} catch (Exception e) {

		}
		return false;
		
	}
	
	public User getUserDetails(String emailId) {
		try {
			User user = userRepository.getUserDetails(emailId);
			return user;
		} catch (Exception e) {

		}
		return null;
		
	}
}