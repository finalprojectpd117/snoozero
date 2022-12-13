package kr.io.playdata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.io.playdata.domain.Insurance;
import kr.io.playdata.domain.User;
import kr.io.playdata.service.InsuranceService;
import kr.io.playdata.service.UserService;


@SessionAttributes("user")
//@RestController 사용시 주의사항 : String return 값을 전부 문자열로 처리하겠다는 것이 됨. 그냥 @controller 쓰면 String 반환값 주소로 이동.
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private InsuranceService insService;
	
	@ModelAttribute("user")
	public User setUser() {
		return new User();
	}
	
	@PostMapping("/signup") // 회원가입
	public String signUpUser(User user, Model model, Insurance ins) {
		
		boolean result = false;
		ins.setInsid(user.getInsid());
		Insurance findins = insService.getinsid(ins);
		
		if(findins !=null) {
		result = userService.insertUser(user);
		}
		if (result) {
			model.addAttribute("message", "회원가입 완료. 로그인을 진행해 주세요.");
			return "forward:login.jsp";
		} else {
			model.addAttribute("message", "회원가입 실패. 다시 정보를 입력해 주세요.");
			return "forward:signup.jsp";
		}
	}
	
	@PostMapping("/login") //로그인 체크
	public String login(User user, Model model) {
		User findUser = userService.loginUser(user);
		System.out.println(findUser);
		/* 찾아오는 것까지는 되는데 왜?? */
		if (findUser != null && findUser.getPasswd().equals(user.getPasswd())) {
			
			model.addAttribute("user", findUser);
			return "forward:main.jsp";
		} else {
			model.addAttribute("message", "로그인 실패. 아이디 비밀번호 확인 필요");
			return "forward:login.jsp";
		}
	}
	
	
	@PostMapping("/checkId")
	public String checkId(User user, Model model, Insurance ins) {
		User findUser = userService.getUser(user); 
		//ins.setInsid(user.getInsid());
		Insurance findins = insService.getinsid(ins);
		if (findUser == null && user.getInsid().length() != 0 && findins != null) {
			model.addAttribute("message", "가입 가능한 id 입니다.");
		} else if (user.getInsid().length() == 0) {
			model.addAttribute("message", "");
		} else {
			model.addAttribute("message", "가입할 수 없는 id입니다.");
		}
		return "forward:view.jsp";
	}
	
	@ResponseBody
	@GetMapping("/logout")
	public void logout(SessionStatus status, Model model) {
		status.setComplete();
		model.addAttribute("message", "로그아웃 완료.");
	}

}
