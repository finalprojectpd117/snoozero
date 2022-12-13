package kr.io.playdata.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.io.playdata.domain.Accident;

public interface AccidentRepository extends JpaRepository<Accident, Integer>{
	
	public abstract List<Accident> findAllByCustomnum(int customnum);

}
