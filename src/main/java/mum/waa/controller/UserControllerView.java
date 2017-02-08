package mum.waa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import mum.waa.model.Notice;
import mum.waa.model.User;
import mum.waa.service.UserService;

@Controller
public class UserControllerView {

	@Autowired
	UserService userService;
	
	@RequestMapping(value="/user", method=RequestMethod.GET)
	public String notice(User user,Model model){
		
		model.addAttribute("user", userService.getAllUsers());
		return "notice";
	}
	
	@RequestMapping(value="/createUser", method=RequestMethod.GET )
	public String creatUserForm(Model model){
		User user = new User();
		model.addAttribute("user",user);
		return "adduserform";
	}
	
	@RequestMapping(value="/createUser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user, Model model){
		userService.addUser(user);
		return  "redirect:listAllUsers";
	}
	
	@RequestMapping(value="/listAllUsers", method=RequestMethod.GET )
	public String listAllUsers(Model model){
		List<User> userList = userService.getAllUsers();
		model.addAttribute("listUsers",userList);
		return "listAllUsers";
	}
	
	
	@RequestMapping(value="/getUserById", method=RequestMethod.GET )
	public @ResponseBody User editUser(@RequestBody Integer userId){
		return userService.getUser(userId);
	}
	
	@RequestMapping(value="/user/edit/{id}", method=RequestMethod.POST)
	public String editUsers(@ModelAttribute("user")  User user, @PathVariable int id,Model model){
		userService.uppdateUser(user);
		return "redirect:/listAllUsers";
		
	}
	
	@RequestMapping(value="/user/edit/{id}", method=RequestMethod.GET)
	public String getUsers(@ModelAttribute("user")  User user, @PathVariable int id,Model model){
		model.addAttribute("user", userService.getUser(id));
		return "editUser";
		
	}
	
	
	@RequestMapping(value="/deleteUser/{id}", method=RequestMethod.GET)
	public String deleteUser(@PathVariable int id,Model model){
		userService.deleteUser(id);
		return "listAllUsers";
	}
}
