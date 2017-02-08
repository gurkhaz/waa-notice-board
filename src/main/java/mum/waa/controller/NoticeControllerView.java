package mum.waa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mum.waa.model.Notice;
import mum.waa.model.Student;
import mum.waa.service.NoticeService;

@Controller
public class NoticeControllerView {
	
	
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice(Notice notice){
		
		return "notice";
	}
	
	
	@RequestMapping(value="/addNotification", method=RequestMethod.GET)
	public String getNotificationForm(Notice notice){
		
		return "addNotification";
	}
	
	@RequestMapping(value="/addNotification", method=RequestMethod.POST)
	public String addNotification(@ModelAttribute("notice")  Notice notice, Model model){
		
		noticeService.addNotice(notice);
		return "redirect:listNotification";
	}
	
	
	@RequestMapping(value="/listNotification", method=RequestMethod.GET)
	public String getListNotificationForm(Model model){
		
		model.addAttribute("Notification", noticeService.getAllNotices());
		return "listNotification";
	}
	


}
