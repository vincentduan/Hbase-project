package cn.iie.ac.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.iie.ac.entity.User;
import cn.iie.ac.service.UserService;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value="/login", method = RequestMethod.GET )
	public String login(){
		List<User> findAll = userService.getUserList();
		for (User user : findAll) {
			System.out.println(user);
		}
		return "login";
	}
	
	@RequestMapping(value="/user", method = RequestMethod.GET )
	public String user(){
		return "user";
	}
	
}
