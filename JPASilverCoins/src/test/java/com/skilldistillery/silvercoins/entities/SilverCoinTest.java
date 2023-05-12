package com.skilldistillery.silvercoins.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SilverCoinTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private SilverCoin silverCoin;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPASilverCoins");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		silverCoin = em.find(SilverCoin.class, 1);
		}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		silverCoin = null;
	}

	@Test
	void test() {
		assertNotNull(silverCoin);
		assertEquals("quarter", silverCoin.getType());
	}

}
