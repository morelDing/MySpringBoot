package cn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ErrorController {
	
	@RequestMapping(value="/400",method=RequestMethod.GET)
	public String badRequest() {
		return "error/400";
	}
	
	@RequestMapping(value="/404",method=RequestMethod.GET)
	public String errorpage() {
		return "error/404";
	}
	
	@RequestMapping(value="/500",method=RequestMethod.GET)
	public String serverError() {
		return "error/500";
	}

}
