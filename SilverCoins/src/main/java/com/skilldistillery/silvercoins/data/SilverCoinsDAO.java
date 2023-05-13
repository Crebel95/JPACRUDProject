package com.skilldistillery.silvercoins.data;

import java.util.List;

import com.skilldistillery.silvercoins.entities.SilverCoin;

public interface SilverCoinsDAO {
	
	List<SilverCoin> findAll();
	SilverCoin create(SilverCoin silverCoin);
	SilverCoin update(int id, SilverCoin silverCoin);
	boolean deleteById(int id);
	SilverCoin findById(int id);

}
