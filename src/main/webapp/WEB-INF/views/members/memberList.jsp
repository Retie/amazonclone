<%@page import="clone.amazon.web.MemberForm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="clone.amazon.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE HTML>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head/>
<body>
<% MemberForm memberForm = new MemberForm();
   ArrayList<Member> memberList = (ArrayList<Member>) request.getAttribute("memberList");%>

	<div class="container">
		<div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>RegDate</th>
					</tr>
				</thead>
				<tbody>
					<% for( Member member : memberList) { %>
					<tr>
						<td><%=member.getId() %></td>
						<td><c:out value="${member.name}"/></td>
						<td><c:out value="${member.email}"/></td>
						<td><c:out value="${member.password}"/></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.regDate}"/></td>
					</tr>
					<% } %>

				</tbody>
			</table>
		</div>
		<div th:replace="fragments/footer :: footer" />
	</div>
	<!-- /container -->
</body>
</html>