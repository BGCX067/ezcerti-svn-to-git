package com.icerti.ezcerti.home.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/", "/m"}, method = RequestMethod.GET)
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "login_error", required = false) String login_error,
			Model model) {
		
		if(login_error != null) {
			model.addAttribute("error", "로그인 에러");
		}
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		
		logger.info(auth.getAuthorities().toString());
		logger.info(auth.getCredentials().toString());
		logger.info(auth.getDetails().toString());
		logger.info(auth.getPrincipal().toString());
		
		return "index";
	}
	
}
