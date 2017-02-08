package mum.waa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.waa.model.Notice;

@Controller
public class NoticeControllerView {
	
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice(Notice notice){
		
		return "notice";
	}
	
	
	@RequestMapping(value="/addNotification", method=RequestMethod.GET)
	public String addNotification(Notice notice){
		
		return "addNotification";
	}


}
