package kr.io.playdata.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.io.playdata.dao.InsuranceRepository;
import kr.io.playdata.domain.Insurance;
import kr.io.playdata.domain.User;

@Service
public class InsuranceServiceImpl implements InsuranceService {
	
	@Autowired
	private InsuranceRepository insRepo;


	public Insurance getinsid(Insurance ins) {
		Optional<Insurance> findIns = insRepo.findById(ins.getInsid());
		if (findIns.isPresent()) {
			return findIns.get();
		} else {
			return null;
		}
	}
}
