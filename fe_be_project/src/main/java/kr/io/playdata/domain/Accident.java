package kr.io.playdata.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

@Entity
public class Accident {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int accnum;
	
	private int customnum;
	private int repairprice1;
	private int repairprice2;
	private int repairprice3;
	private int repairprice4;
	private int repairsum;
	
	
	private String accdate;

}