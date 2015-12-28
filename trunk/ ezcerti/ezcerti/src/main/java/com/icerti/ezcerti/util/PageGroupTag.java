package com.icerti.ezcerti.util;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PageGroupTag extends SimpleTagSupport {

	@Override
	public void doTag() throws JspException, IOException {
		super.doTag();
		PageContext pageContext = (PageContext) getJspContext();
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();

		PageBean<?> pb = (PageBean<?>) request.getAttribute("pageBean");
		
		JspWriter out = pageContext.getOut();
		
		if (pb.getStartPage() > 1) {
			out.print("<a href=\"javascript:paging(" + (pb.getStartPage() - 1)
					+ ")\"> <img src=\"/resources/images/admin/left_arrow.png\" width=\"5\" height=\"9\" alt=\"왼쪽화살표\" /></a>");
		}
		int i = pb.getStartPage();
		for (; i <= pb.getEndPage(); i++) {
			if (i == pb.getCurrentPage()) {
				out.print("<span class=\"bluefont\">&nbsp;" + i + "</span>");
			} else {
				out.print("&nbsp;<a href=\"javascript:paging(" + i + ")\">" + i + "</a>");
			}
		}
		if (pb.getTotalPage() > pb.getEndPage()) {
			out.print("&nbsp;<a href=\"javascript:paging(" + (pb.getEndPage() + 1) + ")\"><img src=\"/resources/images/admin/right_arrow.png\" width=\"5\" height=\"9\" alt=\"오른쪽화살표\" /></a>");
		}
	
	}

}
