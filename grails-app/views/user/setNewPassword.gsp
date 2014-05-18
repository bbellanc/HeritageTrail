
<%@ page import="heritagetrail.Entry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Set new password</title>
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'rel='stylesheet' type='text/css' />
<link rel="stylesheet"href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
	</head>
	<body>
		<g:if test ="${flash.message}">
			<div class="errors">${flash.message}</div>
		</g:if>
		<g:form>
			Password:<g:passwordField name="password1"/><br/>
			Confirm: <g:passwordField name="password2"/><br/>
			<g:actionSubmit value="Set Password" action="setNewPassword"/><br/>
		
		</g:form>
	</body>
</html>
