package mum.waa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import mum.waa.model.Notice;
import mum.waa.service.NoticeService;

@RestController
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	
	@RequestMapping(value="/Notices")
	public List<Notice> getAllNotices(){
		
		return noticeService.getAllNotices();
	}
	
	
	@RequestMapping(value="/addNotice", method= RequestMethod.POST)
	public void addNotice(@RequestBody Notice notice){

		noticeService.addNotice(notice);
		
	}
	
	
	@RequestMapping(value="/notice/{id}", method= RequestMethod.PUT)
	public void updateNotice(@RequestBody Notice notice, @PathVariable String id){
		
		noticeService.updateNotice(notice);
		
	}
	
	
	@RequestMapping(value="/notice/{id}", method= RequestMethod.DELETE)
	public void deleteNotice(@RequestBody Notice notice, @PathVariable String id){
		
		noticeService.deleteNotice(id);
		
	}
}
