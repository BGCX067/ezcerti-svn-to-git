package com.icerti.ezcerti.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

public class AuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.onAuthenticationSuccess(request, response, authentication);
		HttpSession session = request.getSession();
		
		session.setAttribute("ADMIN_NO", authentication.getName());
		session.setAttribute("TERM_CD", "G002C003");
		session.setAttribute("UNIV_CD", "G001C001");
		
	}


}
