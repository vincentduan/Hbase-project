package cn.iie.ac.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.iie.ac.entity.User;
import cn.iie.ac.respo.UserDao;
import cn.iie.ac.service.UserService;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public List<User> getUserList() {
		List<User> findAll = userDao.findAll();
		return findAll;
	}

}
