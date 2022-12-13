package kr.io.playdata.service;

import kr.io.playdata.domain.User;

public interface UserService {

	boolean insertUser(User user);
	
	User getUser(User user);
	
	User loginUser(User user);
	
}
