package kr.io.playdata.service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import kr.io.playdata.dao.AccidentRepository;
import kr.io.playdata.domain.Accident;

public class AccidentServiceImpl implements AccidentService {
	
	@Autowired
	AccidentRepository accrepo;
	
	
	public List<Accident> getacclist(Accident acclist){ // 사고조회내역을 리턴하는 함수
	
		List<Accident> acc=accrepo.findAllByCustomnum(acclist.getCustomnum());
		
		if (acc != null) {
			return acc;
		} else {
			return Collections.<Accident>emptyList();
		}
	}
	
	public void addacc(Accident acclist) { // 사고내역 추가 함수
		System.out.println(acclist);
		accrepo.save(acclist);
	}
	// step10의  io.playdata.util의 LoadDatabase 의 db 저장 방식 참조하기 - 나중에 자바스크립트에서 받아온 값은 저장할 때 필요.
     ///repository.save(new Member("user2", "22", "백종원", "건강지킴이"))); 
}
