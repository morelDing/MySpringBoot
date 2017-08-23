package cn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import cn.pojo.User;

@Mapper
@Repository
public interface UserMapper {
	@Select("select * from USER where name=#{name} and password=#{password}")
	User login(@Param("name") String name,@Param("password") String password);
	
	@Insert("INSERT INTO USER(name,password) VALUES(#{name},#{password})")
	int register(User user);
	
	@Select("select * from USER where name=#{name}")
	List<User> search(@Param("name") String name);

}
