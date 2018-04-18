package com.sino.credit;

import com.sino.credit.mapper.WluserMapper;
import com.sino.credit.model.Wluser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CreditApplicationTests {

    @Autowired
	WluserMapper userMapper;
	@Test
	public void contextLoads() {
	}
	@Test
	public void insert(){

		Wluser user= new Wluser();
		user.setUserId("2");
		user.setName("test");
		user.setOrganizeId("aa");
		user.setLoginName("Wang");
		userMapper.insertSelective(user);
		System.out.println("插入用户信息"+user.getName());
	}

	@Test
	public void testQuery(){
		Wluser model= userMapper.selectByPrimaryKey("1");
		System.out.println("插入用户信息"+model.getName());
	}

}
