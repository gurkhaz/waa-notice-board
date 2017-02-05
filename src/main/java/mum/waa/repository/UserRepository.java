package mum.waa.repository;

import org.springframework.data.repository.CrudRepository;

import mum.waa.model.User;



public interface UserRepository extends CrudRepository<User,String> {

}
