package com.github.itsteam4.simplerpg.web.Controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.itsteam4.simplerpg.web.entity.Member;
import com.github.itsteam4.simplerpg.web.service.MemberDAO;

@Controller
public class MemberController {

	@Autowired
	SqlSession session;
	@Autowired
	Member member;
	
//	회원가입 페이지 이동
	@RequestMapping(value="MemberInsertForm",method=RequestMethod.GET)
	public String MemberForm() {
		return "Member/MemberInsertForm";
	}
//	회원 등록 메소드
	@RequestMapping(value="MemberInsert",method=RequestMethod.POST)
	public String MemberInsert(Model model,@ModelAttribute Member member) {
		MemberDAO dao = session.getMapper(MemberDAO.class);
		
		int result = dao.MemberInsertRow(member);
		
		if(result>0) {
			System.out.println("success: "+result);
			model.addAttribute("msg","가입에 성공하였습니다.");
		}else {
			System.out.println("저장에 실패했습니다.");
		}
		return "redirect:MemberInsertForm";
	}
//	아이디 중복체크 검사
	@RequestMapping(value="userconfirm",method=RequestMethod.POST)
	@ResponseBody
	public int MemberConfirm(@RequestParam String id) {
		MemberDAO dao = session.getMapper(MemberDAO.class);
		int result =0;
		try {
			result = dao.ConfirmCheck(id);
			System.out.println("result: "+result);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return result;
	}
}
