package com.github.itsteam4.simplerpg.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
//	ȸ������ ������ �̵�
	@RequestMapping(value="MemberInsertForm",method=RequestMethod.GET)
	public String MemberForm() {
		return "Member/MemberInsertForm";
	}
//	ȸ�� ��� �޼ҵ�
	@RequestMapping(value="MemberInsert",method=RequestMethod.POST)
	public String MemberInsert() {
		
		return "redirect:MemberInsertForm";
	}
}
