package cn.controller;



import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.mapper.UserMapper;
import cn.pojo.User;
import cn.util.Base64Util;
import cn.util.MD5Util;

@Controller
@RequestMapping("/user")
public class RegisterController {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private User user;
	
	@RequestMapping("/register")
	@ResponseBody
	int register(@RequestParam("name") String name,
			 @RequestParam("password") String password) {
		//System.out.println(name+password);
		List<User> query=userMapper.search(name);
		//查找数据库里是否有相同的用户名
		System.out.println(password);
		if(query.size()!=0) {
			return -1;
		}else {
			String pass=new String(Base64Util.decode(password));
			password=pass;
			System.out.println("<!--将密码进行转码-->");
			if(user!=null){
				user.setName(name);
				user.setPassword(password);
				}else{
					user=new User();
					user.setName(name);
					user.setPassword(password);
				}
			System.out.println("<!--将属性值存入对象中-->");
		    int i=userMapper.register(user);
		    System.out.println(i+"222");
			return i;
		}	
	}
	
	@RequestMapping("/login")
	String login(@RequestParam("name") String name,
			 @RequestParam("password") String password,HttpServletResponse response,
			 HttpServletRequest request,Model model) throws Exception {
		System.out.println(password);
		String pass=new String(Base64Util.decode(password));
		//System.out.println(pass);
		user=userMapper.login(name, pass);
		response.setContentType("text/html; charset=UTF-8"); //转码   
		if(user!=null&&user.getName().equals(name)) {
			model.addAttribute("username",name);
			HttpSession session=request.getSession();
			session.setAttribute("login", user);
			return "Welcome";		
			//response.sendRedirect("http://localhost:8080/page/Welcome.html");		
		}else if(user==null){
			model.addAttribute("message","用户名或者密码不正确");
		}
		return "loginmess";		
	}

}
