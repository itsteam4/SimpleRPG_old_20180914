package com.github.itsteam4.simplerpg.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
//	�α��� ������ ȭ���̵�
	@RequestMapping(value="LoginPageForm",method=RequestMethod.GET)
	public String LoginForm() {
		return "Login/LoginForm";
	}
	
//	ȸ������ �������� �̵�
	@RequestMapping(value="",method=RequestMethod.GET)
	public String LoginInsert() {
		
		return "Member/MemberInsertForm";
	}
}
