package mum.waa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.waa.model.User;

@Controller
public class UserControllerView {

	@RequestMapping(value="/createUser", method=RequestMethod.GET )
	public String creatUserForm(User user){
		return "adduserform";
	}
	
	@RequestMapping(value="/createUser", method=RequestMethod.POST)
	public String addUser(){
		return  "adduserform";
	}

}
