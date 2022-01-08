<!DOCTYPE HTML>
<html>
<head th:replace="fragments/header :: header" />
<body>
	<div class="container">
		<div replace="fragments/bodyHeader :: bodyHeader" />
		<div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>이름</th>
						<th>도시</th>
						<th>주소</th>
						<th>우편번호</th>
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