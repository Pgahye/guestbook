
<%@page import="com.jx372.guestbook.dao.guestBookDao"%>
<%@page import="com.jx372.guestbook.vo.guestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	String pwd = request.getParameter("pwd");

	guestBookVo vo=new guestBookVo();
	vo.setNo(Long.valueOf(no));
	vo.setPwd(pwd);

	
	new guestBookDao().delete(vo);
	
	//리다이렉트 응답
	
	response.sendRedirect("/guestbook");  //밑의 html은 필요가 없어짐 

%> 