<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	
	
	<h2>el</h2>                 
	<h3>Scope Test</h3>
	<ul>
		<li>Request Scope: ${requestScope.userVo.name }<li>
		<%--UserVo의 name 필드는 private이지만 EL이 명시한 필드명을 GET/SET 명명 규칙에 따라서 변경하여 호출 --%>
		<li>Session Scope: ${sessionScope.userVoSess }<li>
		<li>Application Scope : ${applicationScope.userVoApp }</li>
	</ul>
	
	<h3> Scope Test 2</h3>
	<ul>
		<%--만약에 각 영역에 중복되는 이름이 없다면 영역 객체의 이름은 생략해도 된다. --%>
		<li> Request 영역 : ${userVo }</li>
		<li>Session 영역: ${userVoSess}</li>
		<li>App 영역 : ${userVoApp }</li>		
			</ul>
</body>
</html>