package kr.io.playdata.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.io.playdata.domain.User;

public interface UserRepository extends JpaRepository<User, String>{

	public abstract Optional<User> findByInsid(String insid);

}
