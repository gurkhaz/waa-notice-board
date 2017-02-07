package mum.waa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.waa.model.Student;
import mum.waa.service.StudentService;

@Controller
public class StudentControllerView {
	
	
	@Autowired
	StudentService studentService;
	
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String getSignUpForm(Student student){
		return  "signUp";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signUp(@ModelAttribute("student")  Student student, Model model){
		
		studentService.addStudent(student);
		
		return "redirect:notice";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Student student){
		
		return "login";
	}


}
