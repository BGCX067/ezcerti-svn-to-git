package com.icerti.ezcerti.prof.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfController {

	
	@RequestMapping(value = "prof/prof_mypage", method = RequestMethod.GET)
	public String profMyPage(Model model){
		return "prof/prof_mypage";
	}
	
	@RequestMapping(value = "prof/class/class_list", method = RequestMethod.GET)
	public String profClassList(Model model){
		return "prof/class/class_list";
	}
	
	@RequestMapping(value = "prof/class/class_view", method = RequestMethod.GET)
	public String profClassView(Model model){
		return "prof/class/class_view";
	}
	
	@RequestMapping(value = "prof/class/class_off", method = RequestMethod.GET)
	public String profClassOff(Model model){
		return "prof/class/class_off";
	}
	
	@RequestMapping(value = "prof/class/class_add", method = RequestMethod.GET)
	public String profClassAdd(Model model){
		return "prof/class/class_add";
	}
	@RequestMapping(value = "prof/class/class_cert", method = RequestMethod.GET)
	public String profClassCert(Model model){
		return "prof/class/class_cert";
	}
	@RequestMapping(value = "prof/attendee/attendee_list", method = RequestMethod.GET)
	public String profAttendeeList(Model model){
		return "prof/attendee/attendee_list";
	}
	@RequestMapping(value = "prof/attendee/attendee_view", method = RequestMethod.GET)
	public String profAttendeeView(Model model){
		return "prof/attendee/attendee_view";
	}
	@RequestMapping(value = "prof/info/prof_view_edit", method = RequestMethod.GET)
	public String profInfoEdit(Model model){
		return "prof/info/prof_view_edit";
	}
	
	
}
