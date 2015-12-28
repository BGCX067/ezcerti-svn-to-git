package com.icerti.ezcerti.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {
	
	@RequestMapping(value = "student/student_mypage", method = RequestMethod.GET)
	public String studentMyPage(Model model){
		return "student/student_mypage";
	}
	@RequestMapping(value = "student/attend/attend_list", method = RequestMethod.GET)
	public String studentAttendList(Model model){
		return "student/attend/attend_list";
	}
	@RequestMapping(value = "student/attend/attend_view", method = RequestMethod.GET)
	public String studentAttendView(Model model){
		return "student/attend/attend_view";
	}
	@RequestMapping(value = "student/attend/attend_cert", method = RequestMethod.GET)
	public String studentAttendCert(Model model){
		return "student/attend/attend_cert";
	}
	@RequestMapping(value = "student/info/student_view_edit", method = RequestMethod.GET)
	public String studentInfoEdit(Model model){
		return "student/info/student_view_edit";
	}

}
