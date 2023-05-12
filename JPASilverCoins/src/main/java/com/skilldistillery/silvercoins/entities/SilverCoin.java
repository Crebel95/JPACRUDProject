package com.skilldistillery.silvercoins.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="silver_coin")
public class SilverCoin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String type;

	private String mint;

	public SilverCoin() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMint() {
		return mint;
	}

	public void setMint(String mint) {
		this.mint = mint;
	}

	@Override
	public String toString() {
		return "SilverCoin [id=" + id + ", type=" + type + ", mint=" + mint + "]";
	}

}
