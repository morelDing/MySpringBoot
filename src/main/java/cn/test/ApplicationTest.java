package cn.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import cn.Application;
import cn.mapper.UserMapper;
import cn.pojo.User;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes=Application.class)
public class ApplicationTest {
	@Autowired
	private UserMapper usermapper;
	@Autowired(required = false)
	private User user;
	@Test
	public void register() throws Exception{
		user.setName("123456");
		user.setPassword("123");
		List<User> list=usermapper.search(user.getName());
//		user=usermapper.login("1", "2");
		
		System.out.println("1"+list.size());
		//System.out.println("2"+user.getPassword());
	}
	
	 
}
