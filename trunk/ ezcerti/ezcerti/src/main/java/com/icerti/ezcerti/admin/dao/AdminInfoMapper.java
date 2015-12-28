package com.icerti.ezcerti.admin.dao;

import java.util.Collection;
import java.util.Map;

import com.icerti.ezcerti.domain.Admin;
import com.icerti.ezcerti.util.PageBean;

public interface AdminInfoMapper {
	public Collection<Admin> getAdminList(Map<String, Object> map);
	public int getAdminListCount(Map<String, Object> map);
}
