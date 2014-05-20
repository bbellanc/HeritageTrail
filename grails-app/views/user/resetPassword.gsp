<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Reset Password</title>
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
</head>
<body>

<p>Please Enter your email address below for password reset</p>
	<g:if test="${user==null }">
	
  	<g:form controller="user" >
  	<label for="city">
			<g:message code="user.email.label" default="Email:" />		
	</label>
		<g:textField name="email"
					 onfocus="if(this.value=='Enter Email')this.value='';" 
					 onblur="if(this.value=='')this.value='Enter Email';"
					 value="Enter Email"class="registration"/><br/>
	 <label for="login">
			<g:message code="user.login.label" default="Username:" />		
	</label>
		<g:textField name="username"
					 onfocus="if(this.value=='Enter Username')this.value='';" 
					 onblur="if(this.value=='')this.value='Enter Username';"
					 value="Enter Username" class="registration"/><br/>
		<g:actionSubmit value="Submit" action="checkUsernameAndEmail"/>	
	</g:form></g:if>
	
	<g:if test="${user != null}">
		<div>${user.login}</div>
		<div>${user.email }</div>
		<div>${user.question}</div>
		<g:form>
		<g:textField name="securityAnswer"  onfocus="if(this.value=='Answer')this.value='';" 
					 onblur="if(this.value=='')this.value='Answer';" value="Answer"/>
		<g:actionSubmit value="Submit" action="checkSecurityQuestion"/>
		</g:form>	
	</g:if>


</body>
</html>