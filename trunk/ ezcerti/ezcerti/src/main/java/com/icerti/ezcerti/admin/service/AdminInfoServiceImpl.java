package com.icerti.ezcerti.admin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.icerti.ezcerti.admin.dao.AdminInfoMapper;
import com.icerti.ezcerti.domain.Admin;
import com.icerti.ezcerti.util.PageBean;
import com.icerti.ezcerti.util.PageUtil;

@Transactional
@Service
public class AdminInfoServiceImpl implements AdminInfoService{
	
	@Autowired
	private AdminInfoMapper adminInfoMapper;

	@Override
	public PageBean<Admin> getAdminList(Map<String, Object> map) {
		PageBean<Admin> pageBean = new PageBean<Admin>();
		
		Integer currentPage = (Integer) map.get("currentPage");
		
//		map.put("startRow", PageUtil.getStartRow(currentPage, PageBean.CNT_PER_PAGE));
//		map.put("endRow", PageUtil.getEndRow(currentPage, PageBean.CNT_PER_PAGE));
		
		map.put("startRow", PageUtil.getStartRow(currentPage, 2));
		map.put("endRow", PageUtil.getEndRow(currentPage, 2));
		
		int allCnt = adminInfoMapper.getAdminListCount(map);
				
//		int cntPerPage = PageBean.CNT_PER_PAGE;
		int cntPerPage = 2;
		int startPage = PageUtil.getStartPage(currentPage, PageBean.CNT_PER_PAGE_GROUP);
		int endPage = PageUtil.getEndPage(currentPage, PageBean.CNT_PER_PAGE_GROUP);
		int totalPage = (int)Math.ceil((double)allCnt / cntPerPage);
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		pageBean.setList(adminInfoMapper.getAdminList(map));
		
		pageBean.setAllCnt(allCnt);
		pageBean.setStartPage(startPage);
		pageBean.setEndPage(endPage);
		pageBean.setTotalPage(totalPage);
		pageBean.setCurrentPage(currentPage);
		
		return pageBean;
	}

}
