package com.skilldistillery.silvercoins.entities;

import java.time.Year;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="silver_coin")
public class SilverCoin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String type;

	private String mint;
	
	@Column(name="date")
	private int date;
	
	private Double value;
	
	@Column(name="silver_content_grams")
	private Double silverContent;

	@Column(name="total_weight_grams")
	private Double weight;
	
	public SilverCoin() {
		super();
	}

	public SilverCoin(int id, String type, String mint, int date, Double value, Double silverContent, Double weight) {
		super();
		this.id = id;
		this.type = type;
		this.mint = mint;
		this.date = date;
		this.value = value;
		this.silverContent = silverContent;
		this.weight = weight;
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

	@Transient
	public Year getDate() {
		return Year.of(date);
	}

	public void setDate(Year date) {
		this.date = date.getValue();
	}

	public Double getValue() {
		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public Double getSilverContent() {
		return silverContent;
	}

	public void setSilverContent(Double silverContent) {
		this.silverContent = silverContent;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		return "SilverCoin [id=" + id + ", type=" + type + ", mint=" + mint + ", date=" + date + ", value=" + value
				+ ", silverContent=" + silverContent + ", weight=" + weight + "]";
	}



}
