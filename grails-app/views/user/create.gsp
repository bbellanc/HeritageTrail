<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>Manage Post</title>

</head>
<body>

	<br />
	<div class="inner">
	
				<h1>Create an Account</h1>
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
					<dt>Password:</dt>
					<dd>
						<g:textField name="password" size="30" />
					</dd>
					<dt>Age:</dt>
					<dd>
						<g:textField name="age" size="30" />
					</dd>

				</dl>


				<g:submitButton name="submit" value="Save" />
			</g:form>
		
	</div>
</body>
</html>