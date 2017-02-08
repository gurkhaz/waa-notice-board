package mum.waa.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Notice {

	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title;
	private String description;
	@DateTimeFormat(pattern = "MM-dd-yyyy")
	private Date eventDate; 
	@DateTimeFormat(pattern = "MM-dd-yyyy")
	private Date addDate;
	private String venue;
	private String faculty;
	private boolean focused;
	
	
	public Notice(){
		
	}
	
	public Notice(int id,String title,String description,Date eventDate,Date addDate,String venue,String faculty,boolean focused){
		this.id = id;
		this.title = title;
		this.description = description;
		this.eventDate = eventDate;
		this.addDate = addDate;
		this.venue = venue;
		this.faculty = faculty;
		this.focused = focused;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
