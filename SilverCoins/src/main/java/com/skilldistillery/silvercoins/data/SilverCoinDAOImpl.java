package com.skilldistillery.silvercoins.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
		em.persist(silverCoin);
		return silverCoin;
	}

	@Override
	public SilverCoin update(int id, SilverCoin silverCoin) {
		
		SilverCoin sc = em.find(SilverCoin.class, id);
		
		sc.setType(silverCoin.getType());
		sc.setMint(silverCoin.getMint());
		sc.setDate(silverCoin.getDate());
		sc.setValue(silverCoin.getValue());
		sc.setSilverContent(silverCoin.getSilverContent());
		sc.setWeight(silverCoin.getWeight());
		
		return silverCoin;
	}

	@Override
	public boolean deleteById(int id) {
		try {
			SilverCoin silverCoin = em.find(SilverCoin.class, id);
			em.remove(silverCoin);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}
