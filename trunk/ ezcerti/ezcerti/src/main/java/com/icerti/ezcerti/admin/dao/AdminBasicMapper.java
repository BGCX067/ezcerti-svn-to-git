package com.icerti.ezcerti.admin.dao;

import java.util.Collection;
import java.util.Map;

import com.icerti.ezcerti.domain.Classday;
import com.icerti.ezcerti.domain.Classhour;
import com.icerti.ezcerti.domain.Coll;
import com.icerti.ezcerti.domain.Dept;
import com.icerti.ezcerti.domain.Subject;
import com.icerti.ezcerti.domain.Univ;


public interface AdminBasicMapper {

	public Univ getUnivInfo(Univ univ);
	public Collection<Coll> getCollInfo(Map<String, Object> map);
	public int getCollInfoCount(Map<String, Object> map);
	public Collection<Dept> getDeptInfo(Map<String, Object> map);
	public int getDeptInfoCount(Map<String, Object> map);
	public Collection<Subject> getSubjectInfo(Map<String,Object> map);
	public int getSubjectInfoCount(Map<String, Object> map);
	public Collection<Classday> getClassdayInfo(Map<String, Object> map);
	public int getClassdayInfoCount(Map<String, Object> map);
	public Collection<Classhour> getClasshourInfo(Classhour classhour);
}
