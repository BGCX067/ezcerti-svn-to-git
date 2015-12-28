package com.icerti.ezcerti.admin.service;

import java.util.Collection;
import java.util.Map;

import com.icerti.ezcerti.domain.Classday;
import com.icerti.ezcerti.domain.Classhour;
import com.icerti.ezcerti.domain.Coll;
import com.icerti.ezcerti.domain.Dept;
import com.icerti.ezcerti.domain.Subject;
import com.icerti.ezcerti.domain.Univ;
import com.icerti.ezcerti.util.PageBean;

public interface AdminBasicService {
	
	public Univ getUnivInfo(Univ univ);
	public PageBean<Coll> getCollInfo(Map<String, Object> map);
	public PageBean<Dept> getDeptInfo(Map<String, Object> map);
	public PageBean<Subject> getSubjectInfo(Map<String, Object> map);
	public PageBean<Classday> getClassdayInfo(Map<String, Object> map);
	public Collection<Classhour> getClasshourInfo(Classhour classhour);
	
	
}
