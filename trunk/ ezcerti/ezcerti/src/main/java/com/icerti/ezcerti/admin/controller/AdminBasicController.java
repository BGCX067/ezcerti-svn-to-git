package com.icerti.ezcerti.admin.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.icerti.ezcerti.admin.service.AdminBasicService;
import com.icerti.ezcerti.domain.Classday;
import com.icerti.ezcerti.domain.Classhour;
import com.icerti.ezcerti.domain.Coll;
import com.icerti.ezcerti.domain.Dept;
import com.icerti.ezcerti.domain.Subject;
import com.icerti.ezcerti.domain.Univ;
import com.icerti.ezcerti.util.PageBean;

@Controller
public class AdminBasicController {
	
	@Autowired
	private AdminBasicService adminBasicService;
	
	@RequestMapping(value = "muniv/basic/univ_info", method = RequestMethod.GET)
	public String adminUnivInfo(Model model, HttpSession session){
		Univ univ = new Univ();
		univ.setTerm_cd(session.getAttribute("TERM_CD").toString());
		univ.setUniv_cd(session.getAttribute("UNIV_CD").toString());
		
		univ = adminBasicService.getUnivInfo(univ);
		model.addAttribute("univ", univ);
		return "admin/basic/univ_info";
	}
	
	@RequestMapping(value = "muniv/basic/college_list", method = RequestMethod.GET)
	public String adminCollegeList(@RequestParam(value="currentPage", defaultValue="1") Integer currentPage, Model model, HttpSession session){
		PageBean<Coll> pageBean = new PageBean<Coll>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(currentPage == null) currentPage = 1;
		
		map.put("univ_cd", session.getAttribute("UNIV_CD").toString());
		map.put("term_cd", session.getAttribute("TERM_CD").toString());
		map.put("currentPage", currentPage);
		
		pageBean = adminBasicService.getCollInfo(map);
		model.addAttribute(pageBean);
		 
		return "admin/basic/college_list";
	}
	
	@RequestMapping(value = "muniv/basic/department_list", method = RequestMethod.GET)
	public String adminDepartmentList(@RequestParam(value="currentPage", defaultValue="1") Integer currentPage,
									   String item,
									   @RequestParam(value="value", defaultValue="") String searchValue, 
									   Model model, HttpSession session){
		
		PageBean<Dept> pageBean = new PageBean<Dept>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(currentPage == null) currentPage = 1;
		
		map.put("univ_cd", session.getAttribute("UNIV_CD").toString());
		map.put("term_cd", session.getAttribute("TERM_CD").toString());
		map.put("currentPage", currentPage);
		
		map.put("item", item);
		map.put("searchValue", searchValue);
		if(!searchValue.equals("")){
			model.addAttribute(item);
			model.addAttribute(searchValue);
		}
		
		pageBean = adminBasicService.getDeptInfo(map);
		model.addAttribute(pageBean);
		
		
		return "admin/basic/department_list";
	}
	
	@RequestMapping(value = "muniv/basic/subject_list", method = RequestMethod.GET)
	public String adminSubjectList(@RequestParam(value="currentPage", defaultValue="1") Integer currentPage,
								   String item,
								   @RequestParam(value="value", defaultValue="") String searchValue, 
								   Model model, HttpSession session){
		PageBean<Subject> pageBean = new PageBean<Subject>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(currentPage == null) currentPage = 1;
		
		map.put("univ_cd", session.getAttribute("UNIV_CD").toString());
		map.put("term_cd", session.getAttribute("TERM_CD").toString());
		map.put("currentPage", currentPage);
		
		map.put("item", item);
		map.put("searchValue", searchValue);
		
		if(!searchValue.equals("")){
			model.addAttribute(item);
			model.addAttribute(searchValue);
		}
		pageBean = adminBasicService.getSubjectInfo(map);
		model.addAttribute(pageBean);
		
		return "admin/basic/subject_list";
	}
	
	@RequestMapping(value = "muniv/basic/classday_list", method = RequestMethod.GET)
	public String adminClassdayList(@RequestParam(value="currentPage", defaultValue="1") Integer currentPage,
								   String item,
								   @RequestParam(value="value", defaultValue="") String searchValue, 
								   Model model, HttpSession session){
		
		PageBean<Classday> pageBean = new PageBean<Classday>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(currentPage == null) currentPage = 1;
		
		map.put("univ_cd", session.getAttribute("UNIV_CD").toString());
		map.put("term_cd", session.getAttribute("TERM_CD").toString());
		map.put("currentPage", currentPage);
		
		map.put("item", item);
		map.put("searchValue", searchValue);
		
		pageBean = adminBasicService.getClassdayInfo(map);
		model.addAttribute(pageBean);
		
		return "admin/basic/classday_list";
	}
	
	@RequestMapping(value = "muniv/basic/classhour_list", method = RequestMethod.GET)
	public String adminClasshourList(Model model, HttpSession session){
		Collection<Classhour> classhourList = new ArrayList<Classhour>();
		
		Classhour classhour = new Classhour();
		classhour.setTerm_cd(session.getAttribute("TERM_CD").toString());
		classhour.setUniv_cd(session.getAttribute("UNIV_CD").toString());
		
		classhourList = adminBasicService.getClasshourInfo(classhour);
		model.addAttribute("classhour", classhourList);
		
		return "admin/basic/classhour_list";
	}
	
	@RequestMapping(value = {"muniv/prof/prof_list", "m/admin/prof/prof_list"}, method = RequestMethod.GET)
	public String adminProfList(Model model){
		return "admin/prof/prof_list";
	}
	
	@RequestMapping(value = "muniv/prof/prof_view", method = RequestMethod.GET)
	public String adminProfView(Model model){
		return "admin/prof/prof_view";
	}
	
	@RequestMapping(value = "muniv/prof/prof_edit", method = RequestMethod.GET)
	public String adminProfEdit(Model model){
		return "admin/prof/prof_edit";
	}
	
	@RequestMapping(value = "muniv/student/student_list", method = RequestMethod.GET)
	public String adminStudentList(Model model){
		return "admin/student/student_list";
	}
	
	@RequestMapping(value = "muniv/student/student_view", method = RequestMethod.GET)
	public String adminStudentView(Model model){
		return "admin/student/student_view";
	}

	@RequestMapping(value = "muniv/student/student_attend_view", method = RequestMethod.GET)
	public String adminStudentAttendView(Model model){
		return "admin/student/student_attend_view";
	}
	
	@RequestMapping(value = "muniv/student/student_edit", method = RequestMethod.GET)
	public String adminStudentEdit(Model model){
		return "admin/student/student_edit";
	}
	
	@RequestMapping(value = "muniv/attendee/attendee_list", method = RequestMethod.GET)
	public String adminAttendeeList(Model model){
		return "admin/attendee/attendee_list";
	}
	
	@RequestMapping(value = "muniv/attendee/attendee_view", method = RequestMethod.GET)
	public String adminAttendeeView(Model model){
		return "admin/attendee/attendee_view";
	}
	
	@RequestMapping(value = "muniv/attend/class_attend_list", method = RequestMethod.GET)
	public String adminClassAttendList(Model model){
		return "admin/attend/class_attend_list";
	}
	
	@RequestMapping(value = "muniv/attend/class_attend_view", method = RequestMethod.GET)
	public String adminClassAttendView(Model model){
		return "admin/attend/class_attend_view";
	}
	
	
}
