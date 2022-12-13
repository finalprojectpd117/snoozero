package kr.io.playdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.io.playdata.domain.Accident;
import kr.io.playdata.domain.User;
import kr.io.playdata.service.AccidentService;

public class AccidentController {
	
@Autowired
private AccidentService accservice;
	
	@ModelAttribute("user")
	public User setUser() {
		return new User();
	}
	
	
	@RequestMapping("/getaccList") //주소창에서 http://localhost/getBoardList로 호출
	public String getAccList(@ModelAttribute("user") User user, Model model, Accident acc) {
	// 모든 게시판 리스트를 출력하는 메서드
		// index.html이나  getBoard.jsp에서 <a href="getBoardList">링크를 통해서 위 메소드가 호출됨.
		//1. Model객체인 "member"안에서 얻은 값을 member(Member규격)에 넣고
		//2. Model객체인 "member"안에서 얻은 값을 model(Model규격)에 담고
		//3. Model객체인 "member"안에서 얻은 값을 board(Board규격)에 담는다.
		if (user.getInsid() == null) { // 로그인을 안해서  멤버의 id 값을 없을 수 없으면 
			return "redirect:login.jsp"; // redirect 시킴.
		}

		List<Accident> accList = accservice.getacclist(acc); 
		// 게시판의 리스트를 받아서 boardList에 저장함.

		System.out.println(accList);
		model.addAttribute("accList", accList); 
		// model의 키값인  "boardList"에  게시판의 리스트가 저장된 boardList를 저장함.
		return "accidentlist"; //accidentlist.jsp로 이동함.
	}

}
