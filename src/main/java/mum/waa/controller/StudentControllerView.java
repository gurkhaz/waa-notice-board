package mum.waa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.waa.model.Student;

@Controller
public class StudentControllerView {
	
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signUpaa(Student student){
		return  "signUp";
	}
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Student student){
		
		return "login";
	}


}
