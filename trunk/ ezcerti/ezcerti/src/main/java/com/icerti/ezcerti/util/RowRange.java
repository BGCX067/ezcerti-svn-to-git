package com.icerti.ezcerti.util;

public class RowRange {
	private int startRow;
	private int endRow;
	private String searchValue;
	private int recruitno;
	private String memberid;
	private String writer;
	private String servicelocation;
	
	public RowRange() {
		super();
	}

	public RowRange(int startRow, int endRow, String searchValue,
			int recruitno, String memberid, String writer,
			String servicelocation) {
		super();
		this.startRow = startRow;
		this.endRow = endRow;
		this.searchValue = searchValue;
		this.recruitno = recruitno;
		this.memberid = memberid;
		this.writer = writer;
		this.servicelocation = servicelocation;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public int getRecruitno() {
		return recruitno;
	}

	public void setRecruitno(int recruitno) {
		this.recruitno = recruitno;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getServicelocation() {
		return servicelocation;
	}

	public void setServicelocation(String servicelocation) {
		this.servicelocation = servicelocation;
	}

	@Override
	public String toString() {
		return "RowRange [startRow=" + startRow + ", endRow=" + endRow
				+ ", searchValue=" + searchValue + ", recruitno=" + recruitno
				+ ", memberid=" + memberid + ", writer=" + writer
				+ ", servicelocation=" + servicelocation + "]";
	}
	
}
