package mum.waa.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mum.waa.model.Student;
import mum.waa.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	StudentRepository studentRepository;

	public List<Student> getAllStudents() {

		List<Student> students = new ArrayList<>();
		studentRepository.findAll().forEach(students::add);
		return students;
	}

	public Student getStudent(Integer id) {

		return studentRepository.findOne(id);

	}

	public void addStudent(Student student) {

		studentRepository.save(student);
	}

	public void uppdateStudent(Student student) {

		studentRepository.save(student);
	}

	public void deleteStudent(Integer id) {

		studentRepository.delete(id);
	}

}
