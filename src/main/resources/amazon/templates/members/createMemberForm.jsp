<!DOCTYPE HTML>
<html>
<head replace="fragments/header :: header" />
<style>
.fieldError {
	border-color: #bd2130;
}
</style>
<body>
	<div class="container">
		<div>
		<form role="form" action="/members/new"
			method="post">
			<div class="form-group">
				<label th:for="name">이름</label> <input type="text"
					th:field="*{name}" class="form-control" placeholder="이름을 입력하세요"
					th:class="${#fields.hasErrors('name')}? 'form-control fieldError' : 'form-control'">
				<p th:if="${#fields.hasErrors('name')}" th:errors="*{name}">Incorrect date</p>
			</div>
			<div class="form-group">
				<label th:for="city">도시</label> <input type="text"
					th:field="*{city}" class="form-control" placeholder="도시를 입력하세요">
			</div>
			<div class="form-group">
				<label th:for="street">거리</label> <input type="text"
					th:field="*{street}" class="form-control" placeholder="거리를 입력하세요">
			</div>
			<div class="form-group">
				<label th:for="zipcode">우편번호</label> <input type="text"
					th:field="*{zipcode}" class="form-control"
					placeholder="우편번호를 입력하세요">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		<br />
		<div th:replace="fragments/footer :: footer" />
	</div>
	<!-- /container -->
</body>
</html>