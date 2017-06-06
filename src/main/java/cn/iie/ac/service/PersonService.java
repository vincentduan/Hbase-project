package cn.iie.ac.service;

import java.util.List;

import cn.iie.ac.entity.Person;



/**
 * @author duandingyang
 *
 */
public interface PersonService {
	
	/**
	 * 查询所有
	 * @return
	 */
	List<Person> getPersonList();
	
	Person getById(int id);
	
	
	
}
