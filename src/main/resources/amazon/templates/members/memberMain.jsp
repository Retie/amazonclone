<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%//1.한글처리, 파라미터 (세션생성)
request.setCharacterEncoding("UTF-8");
String id = (String) session.getAttribute("id"); //object를 string으로 다운캐스팅
String name = request.getParameter("name");
//1-1. id없이는 진입불가, id없는 경우 로그인페이지로 이동
if(id == null){
	response.sendRedirect("loginForm.jsp");
}
%>
<h2><%=id %>님 환영합니다.</h2>

<input type="button" value="회원정보조회" onclick="location.href='memberinfo.jsp'">
<input type="button" value="회원정보수정" onclick="location.href='updateForm.jsp'">
<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
<input type="button" value="회원탈퇴" onclick="location.href='deleteForm.jsp'">
</body>
</html>