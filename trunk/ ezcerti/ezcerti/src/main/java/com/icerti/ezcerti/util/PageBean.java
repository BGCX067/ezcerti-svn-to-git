package com.icerti.ezcerti.util;

import java.util.Collection;
public class PageBean<T> {
	/**
	 * 한 페이지에 보여줄 목록 수
	 */
	public static final int CNT_PER_PAGE=10;
	/**
	 * 한 페이지에 보여줄 페이지 수
	 */
	public static final int CNT_PER_PAGE_GROUP=10;
	private int currentPage;
	private int startPage;
	private int endPage;
	private int totalPage; // 전체 페이지
	private int allCnt;
	private Collection<T>list;
	
	public PageBean() {
		super();
	}
	
	public PageBean(int currentPage, int startPage, int endPage, int totalPage,
			int allCnt, Collection<T> list) {
		super();
		this.currentPage = currentPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPage = totalPage;
		this.allCnt = allCnt;
		this.list = list;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	public int getTotalPage() {
		return totalPage;
	}
	
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	public int getAllCnt() {
		return allCnt;
	}

	public void setAllCnt(int allCnt) {
		this.allCnt = allCnt;
	}

	public Collection<T> getList() {
		return list;
	}
	
	public void setList(Collection<T> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "PageBean [currentPage=" + currentPage + ", startPage="
				+ startPage + ", endPage=" + endPage + ", totalPage="
				+ totalPage + ", allCnt=" + allCnt + ", list=" + list + "]";
	}


}
