package com.vincent;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.iie.ac.respo.UserRepository;
import cn.iie.ac.service.impl.UserUtils;



public class UserApp {
	private static final Log log = LogFactory.getLog(UserApp.class);

	public static void main(String[] args) throws Exception {
		AbstractApplicationContext context = new ClassPathXmlApplicationContext(
				"application-hbase.xml", UserApp.class);
		log.info("HBase Application Running");
		context.registerShutdownHook();

		UserUtils userUtils = context.getBean(UserUtils.class);
		userUtils.initialize();
		userUtils.addUsers();

		UserRepository userRepository = context.getBean(UserRepository.class);
		/*List<User> users = userRepository.findAll();
		System.out.println("Number of users = " + users.size());
		System.out.println(users);*/

	}
}
