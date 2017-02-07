package mum.waa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.waa.model.User;

@Controller
public class StudentControllerView {
	
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signUpaa(User user){
		return  "signUp";
	}


}
