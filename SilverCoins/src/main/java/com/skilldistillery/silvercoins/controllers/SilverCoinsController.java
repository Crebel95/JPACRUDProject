package com.skilldistillery.silvercoins.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.silvercoins.data.SilverCoinsDAO;
import com.skilldistillery.silvercoins.entities.SilverCoin;

@Controller
public class SilverCoinsController {
	
	@Autowired
	private SilverCoinsDAO coinDao;
	
	@RequestMapping(path = {"/","home.do"})
	public String home(Model model) {
		model.addAttribute("silverCoinList",coinDao.findAll());
		return "home";
	}
	
	@GetMapping("getSilverCoins.do")
	public String getFilm(int id, Model model) {
		SilverCoin sc = coinDao.findById(id);
		model.addAttribute("silverCoin", sc);
		return "show";
	}
	
	@RequestMapping(path = "deleteCoin.do", method = RequestMethod.GET)
	public String deleteCoin(@RequestParam("id") int id, Model model) {
		if(coinDao.deleteById(id)) {
			model.addAttribute("result", "Delete successful");
		}
		else {
			model.addAttribute("result", "No coin associated with this ID");
		}
		return "result";
		
	}
	
	@RequestMapping(path = "addCoin.do", method = RequestMethod.GET)
	public String addCoin( SilverCoin silverCoin, Model model) {
	model.addAttribute("silverCoin",coinDao.create(silverCoin));
	return "displayNewCoin";
		
	}

}
