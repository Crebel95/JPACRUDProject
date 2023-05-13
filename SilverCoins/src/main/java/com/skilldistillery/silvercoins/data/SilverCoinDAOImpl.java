package com.skilldistillery.silvercoins.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.silvercoins.entities.SilverCoin;

@Service
@Transactional
public class SilverCoinDAOImpl implements SilverCoinsDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public SilverCoin findById(int id) {
		
		return em.find(SilverCoin.class, id);
	}

	@Override
	public List<SilverCoin> findAll() {
		String jpql = "SELECT c FROM SilverCoin c";
		return em.createQuery(jpql, SilverCoin.class).getResultList();
	}

	@Override
	public SilverCoin create(SilverCoin silverCoin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SilverCoin update(int id, SilverCoin silverCoin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public SilverCoinsDAO findByIdint(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
