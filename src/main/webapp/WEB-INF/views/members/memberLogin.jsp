<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/resources/css/bootstrap.css">
	<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
</head>
<body>
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<div class="a-section a-spacing-base">
		<div class="container-md border mt-3">
			<form name="signIn" method="post" action="/member/login">
				<div class="a-section">
					<div class="a-box">
						<div class="a-box-inner a-padding-extra-large">
							<h1 class="a-spacing-small">Sign-In</h1>
							<!-- optional subheading element -->

							<div class="a-row a-spacing-base">
								<label for="email"> Email or mobile phone number </label>
								<p><input type="email" maxlength="255" id="email" name="email"></p>
								<div id="auth-email-missing-alert" class="alert alert-warning" style="display:none;">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
										<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
									</svg>  Enter your email or mobile phone number</div>

								<label for="password"> Password </label>
								<p><input type="password" maxlength="30" id="password" name="password"></p>
							<div id="auth-password-missing-alert" class="alert alert-warning" style="display:none;">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
									<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
								</svg>  Enter your password</div>
							</div>
							<div id="auth-password-incorrect-alert" class="alert alert-warning" style="display:none;">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
									<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
								</svg>  Your password is incorrect</div>
							</div>

							<div class="a-section">
										<button type="button" class="btn btn-primary" onclick="loginCheck()">
										Continue </button>

								<div id="legalTextRow" class="a-row a-spacing-top-medium a-size-small">
									By continuing, you agree to Amazon's
									<a href="/gp/help/customer/display.html">
									Conditions of Use</a>
									and
									<a href="/gp/help/customer/display.html">
									Privacy Notice</a>.
								</div>
							</div>

							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Need help?</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">Forgot your password?</a></li>
									<li><a class="dropdown-item" href="#">Other issues with Sign-In</a></li>
								</ul>
							</div>


						</div>
					</div>
			</form>
		</div>

		<div class="container-md mt-3">
			<h5>New to Amazon?</h5>

		<span id="auth-create-account-link"
			class="a-button a-button-span12 a-button-base"><span
			class="a-button-inner"><a id="createAccountSubmit"
				tabindex="6"
				href="/member/join"
				class="a-button-text"> Create your Amazon account </a></span></span>
		</div>
	</div>
	<script type="text/javascript" src="/resources/js/memberLoginCheck.js"></script>
</body>
</html>