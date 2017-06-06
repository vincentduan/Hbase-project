package cn.iie.ac.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/org")
public class OrgController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value="/list", method = RequestMethod.GET )
	public String list(){
		return "org-list";
	}
	
	@RequestMapping(value="/detail", method = RequestMethod.GET)
	public String detail(){
		return "org-detail";
	}
}
