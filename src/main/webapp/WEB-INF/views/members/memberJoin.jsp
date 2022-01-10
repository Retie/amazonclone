<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="/resource/css/bootstrap.css">
</head>
<body>
	<div class="container">
		Create account
		<form role="form" action="/member/join" method="post">
			<div class="form-group">
				<label>Your name</label> <input type="text" maxlength="50" id="name" name="customerName">

				<div id="auth-customerName-missing-alert"
					class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
					role="alert" style="display: block;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Enter your name</div>
					</div>
				</div>
			</div>

			<div class="form-group">
						<label for="ap_email" class="a-form-label"> Email </label>
						<input type="email" maxlength="255" id="email" name="email">
						
						<div id="auth-email-missing-alert"
							class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
							role="alert" style="display: none;">
							<div class="a-box-inner a-alert-container">
								<i class="a-icon a-icon-alert"></i>
								<div class="a-alert-content">Enter your email</div>
							</div>
						</div>

						<div id="auth-email-invalid-email-alert"
							class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
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
					placeholder="At least 6 characters" name="password">
				<div
					aria-live="polite" aria-atomic="true" style="display: none;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Passwords must be at least 6 characters.</div>
					</div>
				</div>

				<div id="auth-password-missing-alert"
					class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
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
					Re-enter password </label> <input type="password" maxlength="1024"
					id="ap_password_check" autocomplete="off" name="passwordCheck"
					tabindex="6"
					class="a-input-text a-form-normal a-span12 auth-required-field auth-require-fields-match">
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
				<button type="submit" id="continue" class="btn btn-primary">Create your Amazon account</button>
			</form>
	</div>
	<!-- /container -->
</body>
</html>