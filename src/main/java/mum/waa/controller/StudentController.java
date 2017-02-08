package mum.waa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import mum.waa.model.Student;
import mum.waa.service.StudentService;

@RestController
public class StudentController {
	
	
	@Autowired
	StudentService studentService;
	
	
	@RequestMapping(value="/Students")
	public List<Student> getAllStudents(){
		
		return studentService.getAllStudents();
	}
	
	
	@RequestMapping(value="/addStudent", method= RequestMethod.POST)
	public void addStudent(@RequestBody Student student){
		
	
		studentService.addStudent(student);
		
	}
	
	
	@RequestMapping(value="/student/{id}", method= RequestMethod.PUT)
	public void uppdateStudent(@RequestBody Student student, @PathVariable Integer id){
		
		
		studentService.uppdateStudent(student);
		
	}
	
	
	@RequestMapping(value="/student /{id}", method= RequestMethod.DELETE)
	public void deleteStudent(@RequestBody Student student, @PathVariable Integer id){
		
		studentService.deleteStudent(id);
		
	}

}
