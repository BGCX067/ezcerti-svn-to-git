package com.icerti.ezcerti.domain;

import java.sql.Date;


public class Univ {
	
	private String univ_cd;
	private String term_cd;
	private String univ_name;
	private String term_name;
	private Date term_start_date;
	private Date term_end_date;
	private String attend_sts_cd;
	private String univ_sts_cd;
	private String reg_type_cd;
	private Date reg_date;
	
	public Univ() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Univ(String univ_cd, String term_cd, String univ_name,
			String term_name, Date term_start_date, Date term_end_date,
			String attend_sts_cd, String univ_sts_cd, String reg_type_cd,
			Date reg_date) {
		super();
		this.univ_cd = univ_cd;
		this.term_cd = term_cd;
		this.univ_name = univ_name;
		this.term_name = term_name;
		this.term_start_date = term_start_date;
		this.term_end_date = term_end_date;
		this.attend_sts_cd = attend_sts_cd;
		this.univ_sts_cd = univ_sts_cd;
		this.reg_type_cd = reg_type_cd;
		this.reg_date = reg_date;
	}

	public String getUniv_cd() {
		return univ_cd;
	}

	public void setUniv_cd(String univ_cd) {
		this.univ_cd = univ_cd;
	}

	public String getTerm_cd() {
		return term_cd;
	}

	public void setTerm_cd(String term_cd) {
		this.term_cd = term_cd;
	}

	public String getUniv_name() {
		return univ_name;
	}

	public void setUniv_name(String univ_name) {
		this.univ_name = univ_name;
	}

	public String getTerm_name() {
		return term_name;
	}

	public void setTerm_name(String term_name) {
		this.term_name = term_name;
	}

	public Date getTerm_start_date() {
		return term_start_date;
	}

	public void setTerm_start_date(Date term_start_date) {
		this.term_start_date = term_start_date;
	}

	public Date getTerm_end_date() {
		return term_end_date;
	}

	public void setTerm_end_date(Date term_end_date) {
		this.term_end_date = term_end_date;
	}

	public String getAttend_sts_cd() {
		return attend_sts_cd;
	}

	public void setAttend_sts_cd(String attend_sts_cd) {
		this.attend_sts_cd = attend_sts_cd;
	}

	public String getUniv_sts_cd() {
		return univ_sts_cd;
	}

	public void setUniv_sts_cd(String univ_sts_cd) {
		this.univ_sts_cd = univ_sts_cd;
	}

	public String getReg_type_cd() {
		return reg_type_cd;
	}

	public void setReg_type_cd(String reg_type_cd) {
		this.reg_type_cd = reg_type_cd;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Univ [univ_cd=" + univ_cd + ", term_cd=" + term_cd
				+ ", univ_name=" + univ_name + ", term_name=" + term_name
				+ ", term_start_date=" + term_start_date + ", term_end_date="
				+ term_end_date + ", attend_sts_cd=" + attend_sts_cd
				+ ", univ_sts_cd=" + univ_sts_cd + ", reg_type_cd="
				+ reg_type_cd + ", reg_date=" + reg_date + "]";
	}
	
	

	
}
