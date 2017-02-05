package mum.waa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



import mum.waa.model.User;
import mum.waa.service.UserService;

@RestController
public class UserController {
	
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/fine")
	public String ok(){
		
		return "fine";
	}
	
	
	@RequestMapping(value="/users")
	public List<User> getAllUsers(){
		
		return userService.getAllUsers();
	}
	
	
	@RequestMapping(value="/addUser", method= RequestMethod.POST)
	public void addUser(@RequestBody User user){
		
	
		userService.addUser(user);
		
	}
	
	
	@RequestMapping(value="/user/{id}", method= RequestMethod.PUT)
	public void uppdateUser(@RequestBody User user, @PathVariable String id){
		
		
		userService.uppdateUser(user);
		
	}
	
	
	@RequestMapping(value="/user/{id}", method= RequestMethod.DELETE)
	public void deleteUser(@RequestBody User user, @PathVariable String id){
		
		userService.deleteUser(id);
		
	}
	
	

}
