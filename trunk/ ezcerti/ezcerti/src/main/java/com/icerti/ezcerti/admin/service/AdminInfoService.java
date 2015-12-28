package com.icerti.ezcerti.admin.service;

import java.util.Map;

import com.icerti.ezcerti.domain.Admin;
import com.icerti.ezcerti.util.PageBean;

public interface AdminInfoService {
	public PageBean<Admin> getAdminList(Map<String, Object> map);
}
