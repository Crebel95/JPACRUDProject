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
		silverCoin = em.find(SilverCoin.class, 2);
		}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		silverCoin = null;
	}

	@Test
	void test() {
//		assertNotNull(silverCoin);
		System.out.println(em.find(SilverCoin.class, 2));
		assertEquals("Peace Dollar", silverCoin.getType());
		System.out.println(silverCoin);
//		assertEquals("Philadelphia", silverCoin.getMint());
//		assertEquals("1964", silverCoin.getDate());
//		assertEquals(10.16, silverCoin.getValue());
//		assertEquals(11.25, silverCoin.getSilverContent());
//		assertEquals(12.5, silverCoin.getWeight());
	}

}
