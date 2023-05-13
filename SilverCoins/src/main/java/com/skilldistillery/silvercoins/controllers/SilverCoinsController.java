package com.skilldistillery.silvercoins.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.silvercoins.data.SilverCoinsDAO;

@Controller
public class SilverCoinsController {
	
	@Autowired
	private SilverCoinsDAO coinDao;
	
	@RequestMapping(path = {"/","home.do"})
	public String home(Model model) {
		model.addAttribute("silverCoinList",coinDao.findAll());
		return "home";
	}

}
