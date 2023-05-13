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
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("SilverCoins");
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
	    em = emf.createEntityManager();
		em.persist(silverCoin);
		
		return silverCoin;
	}

	@Override
	public SilverCoin update(int id, SilverCoin silverCoin) {
		// TODO Auto-generated method stub
		return null;
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

	@Override
	public SilverCoinsDAO findByIdint(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
