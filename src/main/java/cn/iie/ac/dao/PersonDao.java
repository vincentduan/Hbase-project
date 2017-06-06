package cn.iie.ac.dao;

import java.util.List;

import cn.iie.ac.entity.Person;



public interface PersonDao {
	
	

	List<Person> queryAll();

	Person queryById(int id);
	
	
	
}
