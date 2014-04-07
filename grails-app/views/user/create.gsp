<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Register</title>
<link href="css/register.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet' type='text/css' />
</head>

<body>

	<!-- Box Start-->
	<div id="box_bg">

		<div id="content">
			<br />
			<div class="inner">

				<h1 class="blue">Register</h1>
			
	
				<div id="validationerrors">
					<g:renderErrors bean="${user}" />
				</div>
				
				<g:form controller="user" action="create">
					<dl>
						<dt>First Name:</dt>
						<dd>
							<g:textField name="firstName" size="30" />
						</dd>
						<dt>Last Name:</dt>
						<dd>
							<g:textField name="lastName" size="30" />
						</dd>
						<dt>Username:</dt>
						<dd>
							<g:textField name="login" size="30" />
						</dd>
						<dt>Email Address:</dt>
						<dd>
							<g:textField name="email" size="30" />
						</dd>
						<dt>Password:</dt>
						<dd>
							<g:passwordField name="password" size="30" />
						</dd>
						<dt>Confirm Password:</dt>
						<dd>
							<g:passwordField name="password2" size="30" />
						</dd>
						<dt>Age:</dt>
						<dd>
							<g:textField name="age" size="30" />
						</dd>

					</dl>


					<g:submitButton class="button blue" name="submit" value="Register" />
				</g:form>
				
				

				<!-- Checkbox -->
				<div class="checkbox">
					<li>
						<fieldset>
							<![if !IE | (gte IE 8)]>
							<legend id="title2" class="desc"></legend>
							<![endif]>
							<!--[if lt IE 8]><label id="title2" class="desc"></label><![endif]-->
							<div>
								<span> <input id="Field" name="Field" type="checkbox"
									class="field checkbox" value="First Choice" tabindex="4"
									onchange="handleInput(this);" /> <label class="choice"
									for="Field">I have read and I agree<br /> the Terms of
										Use
								</label>
								</span>
							</div>
						</fieldset>
					</li>
				</div>

			</div>
		</div>

		<!-- Text Under Box -->
		<div id="bottom_text">
			Already have an account? <a id="blue" href="login.html">Sign In</a><br />
		</div>
		</div>
</body>
</html>
