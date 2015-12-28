package com.icerti.ezcerti.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.icerti.ezcerti.admin.service.AdminInfoService;
import com.icerti.ezcerti.domain.Admin;
import com.icerti.ezcerti.util.PageBean;


@Controller
public class AdminInfoController {

	@Autowired
	private AdminInfoService adminInfoService;
	
	@RequestMapping(value = "muniv/info/admin_list", method = RequestMethod.GET)
	public String adminList(@RequestParam(value="currentPage", defaultValue="1") Integer currentPage,
						   String item,
						   @RequestParam(value="value", defaultValue="") String searchValue, 
						   Model model, HttpSession session){
			
		PageBean<Admin> pageBean = new PageBean<Admin>();
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(currentPage == null) currentPage = 1;
		
		map.put("admin_no", session.getAttribute("ADMIN_NO").toString());		
		map.put("univ_cd", session.getAttribute("UNIV_CD").toString());
		map.put("currentPage", currentPage);
		
		map.put("item", item);
		map.put("searchValue", searchValue);
		
		pageBean = adminInfoService.getAdminList(map);
		model.addAttribute(pageBean);
		
		return "admin/info/admin_list";
	}
	
	@RequestMapping(value = "muniv/info/admin_view", method = RequestMethod.GET)
	public String adminView(Model model){
		return "admin/info/admin_view";
	}
	
	@RequestMapping(value = "muniv/info/admin_member_join", method = RequestMethod.GET)
	public String adminMemberJoinView(Model model){
		return "admin/info/admin_member_join";
	}
	
	@RequestMapping(value = "muniv/info/admin_member_join", method = RequestMethod.POST)
	public String adminMemberJoin(Model model){
		return "admin/info/admin_view";
	}
}
