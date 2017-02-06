package mum.waa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserControllerView {

	@RequestMapping("/tiles")
	public String ok(){
		
		return "site.homepage";
	}

}
