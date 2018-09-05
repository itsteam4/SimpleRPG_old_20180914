package com.github.itsteam4.simplerpg.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
//	로그인 페이지 화면이동
	@RequestMapping(value="LoginPageForm",method=RequestMethod.GET)
	public String LoginForm() {
		return "Login/LoginForm";
	}
	
//	회원가입 페이지로 이동
	@RequestMapping(value="",method=RequestMethod.GET)
	public String LoginInsert() {
		
		return "Member/MemberInsertForm";
	}
}
