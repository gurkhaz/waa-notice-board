package mum.waa.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Notice {

	@Id 
	private String id;
	private String title;
	private String description;
	private Date eventDate; 
	private Date addDate;
	private String venue;
	private String faculty;
	private boolean focused;
	
	
	public Notice(){
		
	}
	
	public Notice(String id,String title,String description,Date eventDate,Date addDate,String venue,String faculty,boolean focused){
		this.id = id;
		this.title = title;
		this.description = description;
		this.eventDate = eventDate;
		this.addDate = addDate;
		this.venue = venue;
		this.faculty = faculty;
		this.focused = focused;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}
	
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	
	public boolean isFocused() {
		return focused;
	}
	public void setFocused(boolean focused) {
		this.focused = focused;
	}
	
	
}
