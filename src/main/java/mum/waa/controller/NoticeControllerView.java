package mum.waa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String notice(Notice notice,Model model){
		
		model.addAttribute("Notice", noticeService.getAllNotices());
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
	
	
	@RequestMapping(value="/deleteNotice/{id}", method=RequestMethod.GET)
	public String deleteNotification(@PathVariable int id,Model model){
		
		noticeService.deleteNotice(id);
		return "redirect:/listNotification";
		
	}
	
	
	@RequestMapping(value="/notice/edit/{id}", method=RequestMethod.GET)
	public String getNotificationEdit(@PathVariable int id,Model model){
		
		
		model.addAttribute("notice", noticeService.getNotice(id));
		return "editNotification";
		
	}
	
	@RequestMapping(value="/notice/edit/{id}", method=RequestMethod.POST)
	public String editNotification(@ModelAttribute("notice")  Notice notice, @PathVariable int id,Model model){
		
		
		
		return "editNotification";
		
	}

}
