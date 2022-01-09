<%@page import="clone.amazon.service.MemberService"%>
<%@page import="clone.amazon.domain.MemberAccount"%>
<%@page import="clone.amazon.domain.Member"%>
<%
MemberService memberService;
Long id = (Long) session.getAttribute("id");

if(id == null) { 
	response.sendRedirect("loginForm"); 
	}

if(id == findMember(id)) { %>
<h2>마이페이지</h2>
<table border="1">
	<tr>
		<td>아이디</td>
		<td><%=member.getId() %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=mb.getPw() %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=mb.getName() %></td>
	</tr>
	<tr>
		<td>나이</td>
		<td><%=mb.getAge() %></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><%=mb.getGender() %></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=mb.getEmail() %></td>
	</tr>
	<tr>
		<td>회원가입일</td>
		<td><%=mb.getReg_date() %></td>
	</tr>
</table>
<% 
} 
%>
<hr>
<input type="button" value="뒤로가기" onclick="location.href='main.jsp'">
