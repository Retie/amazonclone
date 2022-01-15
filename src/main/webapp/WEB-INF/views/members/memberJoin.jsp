<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="/resources/css/bootstrap.css">
	<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
</head>
<body>
	<div class="container">
		Create account
		<form name="joinForm" role="form" action="/member/join" method="post">
			<div class="form-group">
				<label>Your name</label> <input type="text" maxlength="50" id="name" name="name" required>
				
				<div id="name-missing-alert" class="alert alert-warning" style="display:none;">
					<div class="container">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-exclamation-triangle-fill flex-shrink-0 me-2" viewBox="0 0 16 16" role="img" aria-label="Warning:">
    					<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  						</svg>  Enter your name
					</div>
				</div>
				
			</div>

			<div class="form-group">
						<label for="ap_email" class="a-form-label"> Email </label>
						<input type="email" maxlength="255" id="email" name="email" required>
						
						<div id="auth-email-missing-alert" style="display:none;"
							role="alert" style="display: none;">
							<div class="a-box-inner a-alert-container">
								<i class="a-icon a-icon-alert"></i>
								<div class="a-alert-content">Enter your email</div>
							</div>
						</div>

						<div id="auth-email-invalid-email-alert" style="display:none;"
							role="alert" style="display: block;">
							<div class="a-box-inner a-alert-container">
								<i class="a-icon a-icon-alert"></i>
								<div class="a-alert-content">Enter a valid email address</div>
							</div>
						</div>

						<div id="auth-email-invalid-claim-alert"
							class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
							role="alert" style="display: none;">
							<div class="a-box-inner a-alert-container">
								<i class="a-icon a-icon-alert"></i>
								<div class="a-alert-content">Wrong or Invalid email
									address or mobile phone number. Please correct and try again.</div>
							</div>
						</div>

						<div id="auth-email-missing-alert-ango-email"
							class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
							role="alert" style="display: none;">
							<div class="a-box-inner a-alert-container">
								<i class="a-icon a-icon-alert"></i>
								<div class="a-alert-content">Enter your email</div>
							</div>
						</div>

					</div>

			<div class="a-row a-spacing-base">
				<label for="ap_password" class="a-form-label"> Password </label>
				<input type="password" maxlength="30" id="password"
					placeholder="At least 6 characters" name="password" required>
				<div
					aria-live="polite" aria-atomic="true" style="display: none;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Passwords must be at least 6 characters.</div>
					</div>
				</div>

				<div id="auth-password-missing-alert" style="display:none;"
					role="alert" style="display: block;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Enter your password</div>
					</div>
				</div>

				<div id="auth-password-invalid-password-alert"
					class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
					role="alert" style="display: none;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Passwords must be at least 6 characters.</div>
					</div>
				</div>

			</div>
			<div class="a-row a-spacing-base">
				<label for="ap_password_check" class="a-form-label">
					Re-enter password </label> <input type="password" maxlength="30"
					id="pwdCheck" autocomplete="off" name="pwdCheck">
					
				<div id="auth-passwordCheck-missing-alert"
					class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
					role="alert" style="display: none;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Type your password again</div>
					</div>
				</div>

				<div id="auth-password-mismatch-alert"
					class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
					role="alert" style="display: none;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Passwords must match</div>
					</div>
				</div>
			</div>
				<button type="submit" class="btn btn-primary">Create your Amazon account</button>
			</form>
	</div>
	<!-- /container -->
</body>
</html>
