package mum.waa.repository;

import org.springframework.data.repository.CrudRepository;

import mum.waa.model.Student;

public interface StudentRepository extends CrudRepository<Student, String> {

}
