package kr.io.playdata.service;

import java.util.List;

import kr.io.playdata.domain.Accident;

public interface AccidentService {
	
	List<Accident> getacclist(Accident acclist);
	
	void addacc(Accident acclist);

}
