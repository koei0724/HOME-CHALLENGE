<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/JSPBookDB"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />
<sql:query dataSource="${dataSource}" var="resultSet">  
    SELECT * FROM MEMBER WHERE ID=? and passwd=? 
   <sql:param value="<%=id%>" />
	<sql:param value="<%=passwd%>" />	
</sql:query>

<c:forEach var="row" items="${resultSet.rows}">
	<%
		session.setAttribute("sessionId", id);
 		session.setAttribute("sessionPasswd", passwd);
		session.setAttribute("sessionName", name);
	%>
	<c:redirect url="resultMember.jsp?msg=2" />
</c:forEach>

<c:redirect url="login.jsp?error=1" />
