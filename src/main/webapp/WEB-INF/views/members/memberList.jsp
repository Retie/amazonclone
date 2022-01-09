<%@page import="java.io.PrintWriter"%>
<%@page import="clone.amazon.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="clone.amazon.domain.MemberAccount" scope="page" />
<jsp:setProperty name="member" property="userID" />
<jsp:setProperty name="member" property="userPassword" />
<!DOCTYPE HTML>
<html>
<head/>
<body>
	<div class="container">
		<div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Name:</th>
						<th>Email:</th>
						<th>Mobile Phone Number:</th>
						<th>Password:</th>
					</tr>
				</thead>
				<tbody>
					<tr th:each="member : ${members}">
						<td th:text="${member.id}"></td>
						<td th:text="${member.name}"></td>
						<td th:text="${member.address?.city}"></td>
						<td th:text="${member.address?.street}"></td>
						<td th:text="${member.address?.zipcode}"></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div th:replace="fragments/footer :: footer" />
	</div>
	<!-- /container -->
</body>
</html>