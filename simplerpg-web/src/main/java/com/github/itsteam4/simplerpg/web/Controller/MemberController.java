package com.github.itsteam4.simplerpg.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
//	회원가입 페이지 이동
	@RequestMapping(value="MemberInsertForm",method=RequestMethod.GET)
	public String MemberForm() {
		return "Member/MemberInsertForm";
	}
//	회원 등록 메소드
	@RequestMapping(value="MemberInsert",method=RequestMethod.POST)
	public String MemberInsert() {
		
		return "redirect:MemberInsertForm";
	}
}
