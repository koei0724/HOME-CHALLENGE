<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%
	String id = request.getParameter("cartId");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("myPage.jsp");
		return;
	}

	session.invalidate();
	response.sendRedirect("myPage.jsp");
%>
