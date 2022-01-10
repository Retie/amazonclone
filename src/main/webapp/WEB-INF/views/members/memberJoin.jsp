<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<body>
	<div class="container">
		Create account
		<form role="form" action="/members/join" method="post">
			<div class="form-group">
				<label>Your name</label> <input type="text" maxlength="50" id="name"
					name="customerName"
					class="a-input-text a-span12 auth-autofocus auth-required-field auth-contact-verification-request-info a-form-error">

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
				<div class="auth-require-fields-match-group">
					<div class="a-row a-spacing-base">
						<label for="ap_email" class="a-form-label"> Email </label> <input
							type="email" maxlength="64" id="email" autocomplete="email"
							name="email"
							class="a-input-text a-span12 auth-required-field auth-require-fields-match auth-require-email-validaton auth-require-reverify-on-change auth-contact-verification-request-info a-form-error">
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

						<div id="auth-email-missing-alert-ango-phone"
							class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini"
							role="alert" style="display: none;">
							<div class="a-box-inner a-alert-container">
								<i class="a-icon a-icon-alert"></i>
								<div class="a-alert-content">Enter your mobile phone
									number</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="a-row a-spacing-base">
				<label for="ap_password" class="a-form-label"> Password </label> <input
					type="password" maxlength="1024" id="ap_password"
					autocomplete="off" placeholder="At least 6 characters"
					name="password" tabindex="5"
					class="a-input-text a-span12 auth-required-field auth-require-fields-match auth-require-password-validation a-form-error">
				<div
					class="a-box a-alert-inline a-alert-inline-info auth-inlined-information-message a-spacing-top-mini"
					aria-live="polite" aria-atomic="true" style="display: none;">
					<div class="a-box-inner a-alert-container">
						<i class="a-icon a-icon-alert"></i>
						<div class="a-alert-content">Passwords must be at least 6
							characters.</div>
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
						<div class="a-alert-content">Passwords must be at least 6
							characters.</div>
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

		</form>
	</div>
	<!-- /container -->
</body>
</html>