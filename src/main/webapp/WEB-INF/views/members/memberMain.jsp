<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id");
String name = request.getParameter("name");

if(id == null){
	response.sendRedirect("loginForm");
}
%>
<h2><%=id %>님 환영합니다.</h2>

<input type="button" value="회원정보조회" onclick="location.href='memberinfo.jsp'">
<input type="button" value="회원정보수정" onclick="location.href='updateForm.jsp'">
<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
<input type="button" value="회원탈퇴" onclick="location.href='deleteForm.jsp'">
</body>
</html>