package kr.io.playdata.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.io.playdata.dao.InsuranceRepository;
import kr.io.playdata.dao.UserRepository;
import kr.io.playdata.domain.Insurance;
import kr.io.playdata.domain.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private InsuranceRepository insRepo;
	
	public User loginUser(User user) {  // 회원확인

		Optional<User> findUser = userRepo.findByInsid(user.getInsid());
		if (findUser.isPresent()) {   
			return findUser.get();
		} else {
			return null;
		}
		
	}

	
	public User getUser(User user) {  // id 체크

		Optional<User> findUser = userRepo.findByInsid(user.getInsid());
		if (findUser.isPresent()) {
			return findUser.get();
		} else {
			return null;
		}
		
	}

	@Transactional
	public boolean insertUser(User user) { // 회원가입
		boolean result = false;

		if (getUser(user) == null) {
			userRepo.save(user);
			result = true;
		}
		return result;
	}
	
	public boolean checkUser(User user) {
		boolean result = false;
		
		return result;
	}
	
	

}
