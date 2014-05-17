
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Register</title>
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
</head>

<body>

	<!-- Box Start-->
	<div id="box_bg">

		<div id="content">
			<br />
			<div class="inner">

				<h1 class="blue">Register</h1>




				<g:form controller="user" action="create">
					<dl>
						<dd>
							<input type="text" name="firstName"
								onblur="if(this.value=='')this.value='First Name';"
								onfocus="if(this.value=='First Name')this.value='';"
								value="First Name" class="register" />
							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.firstName.blank' /></li>
							</g:hasErrors>

						</dd>
						<dd>
							<input type="text" name="lastName"
								onblur="if(this.value=='')this.value='Last Name';"
								onfocus="if(this.value=='Last Name')this.value='';"
								value="Last Name" class="register" />
							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.lastName.blank' /></li>
							</g:hasErrors>
						</dd>
						<dd>
							<input type="text" name="login"
								onblur="if(this.value=='')this.value='Username';"
								onfocus="if(this.value=='Username')this.value='';"
								value="Username" class="register" />
							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.login.blank' /></li>
							</g:hasErrors>
						</dd>
						<dd>

							<input name="email" type="text"
								onblur="if(this.value=='')this.value='Email';"
								onfocus="if(this.value=='Email')this.value='';" value="Email"
								class="register" />
							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.email.blank' /></li>
							</g:hasErrors>
						</dd>

						<dd>

							<input name="password" type="password"
								onblur="if(this.value=='')this.value='Password';"
								onfocus="if(this.value=='Password')this.value='';"
								value="Password" class="register" />

							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.password.blank' /></li>
							</g:hasErrors>
						</dd>

						<dd>

							<input name="password2" type="password"
								onblur="if(this.value=='')this.value='Confirm Password';"
								onfocus="if(this.value=='Confirm Password')this.value='';"
								value="Confirm Password" class="register" />

							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.password2.blank' /></li>
							</g:hasErrors>
						</dd>
						<dd>
					
							<input name="age" type="text"
								onblur="if(this.value=='')this.value='Age';"
								onfocus="if(this.value=='Age')this.value='';" value="Age"
								class="register" />
							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.age.blank' /></li>
							</g:hasErrors>
						</dd>
						
						<dd><br />
						<label for="question">
							<g:message code="user.securityQuestion.label" default="Security Question" />
   					    </label>
							<g:select class="register" name="question" from="${user.securityQuestion.sort() }" noSelection="${['':"Select One"]}" style="width:320px"/>
						<div class="field-error"><br/>
							<g:renderErrors bean="${user}" as="list" field="question"/>
						</div>
								<input name="securityAnswer" type="text"
								onblur="if(this.value=='')this.value='Answer';"
								onfocus="if(this.value=='Answer')this.value='';"value="Answer"
								class="register"></input> 	
							<g:hasErrors bean="${user}"><br/>
								<li><g:message code='heritagetrail.user.securityquestion.blank' /></li>
							</g:hasErrors>										
						</dd>

					</dl>


					<g:submitButton class="button blue" name="submit" value="Register" />
				</g:form>

			</div>
		</div>

		<!-- Text Under Box -->
		<div id="bottom_text">
			Already have an account? <a id="blue" href="login.html">Sign In</a><br />
		</div>
	</div>
</body>
</html>
<%--


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Register</title>
<link href="css/register.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
</head>

<body>

<!-- Box Start-->
<div id="box_bg">

<div id="content">

	<h1 class="blue">Register</h1>

	<!-- Register Fields -->
	<div id="reg">
    <g:form controller="user" action="create">
      
      <g:textField name="login"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Username';" onfocus="if(this.value=='Username')this.value='';" value="Username" class="register"><g:message code='heritagetrail.user.login.blank' /></input>
      </g:hasErrors>

      <g:textField name="firstName"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='First Name';" onfocus="if(this.value=='First Name')this.value='';" value="First Name" class="register"><g:message code='heritagetrail.user.firstName.blank' /></input>
      </g:hasErrors>
      
      <g:textField name="lastName"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Last Name';" onfocus="if(this.value=='Last Name')this.value='';" value="Last Name" class="register"><g:message code='heritagetrail.user.lastName.blank' /></input>
      </g:hasErrors>

      <g:textField name="email"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Email';" onfocus="if(this.value=='Email')this.value='';" value="Email" class="register"><g:message code='heritagetrail.user.email.blank' /></input>
      </g:hasErrors>

      <g:textField name="password"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Password';" onfocus="if(this.value=='Password')this.value='';" value="Password" class="register"><g:message code='heritagetrail.user.password.blank' /></input>
      </g:hasErrors>

      <g:textField name="password2"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Confirm Password';" onfocus="if(this.value=='Confirm Password')this.value='';" value="Confirm Password" class="register"><g:message code='heritagetrail.user.password2.blank' /></input>
      </g:hasErrors>
      
      <g:textField name="age"/>
      <g:hasErrors bean="${user}">
    <input type="text" onblur="if(this.value=='')this.value='Age';" onfocus="if(this.value=='Age')this.value='';" value="Age" class="register"><g:message code='heritagetrail.user.age.blank' /></input>
      </g:hasErrors>

	<!-- Blue Button -->
	<div class="button blue"><a href="#">Register</a></div>
</g:form>
  <!--
  <input type="text" onblur="if(this.value=='')this.value='First Name';" onfocus="if(this.value=='First Name')this.value='';" value="First Name" class="register"/>
  <input type="text" onblur="if(this.value=='')this.value='Last Name';" onfocus="if(this.value=='Last Name')this.value='';" value="Last Name" class="register"/>
	<input type='text' name='password' value='Password'  onfocus="if(this.value=='' || this.value == 'Password') {this.value='';this.type='password'}"  onblur="if(this.value == '') {this.type='text';this.value=this.defaultValue}" class="register"/>
	<input type='text' name='password' value="Confirm Password"  onfocus="if(this.value=='' || this.value == 'Confirm Password') {this.value='';this.type='password'}"  onblur="if(this.value == '') {this.type='text';this.value=this.defaultValue}" class="register"/>
	<input type="text" onblur="if(this.value=='')this.value='Email';" onfocus="if(this.value=='Email')this.value='';" value="Email"  class="register"/>
  <input type="text" onblur="if(this.value=='')this.value='Age';" onfocus="if(this.value=='Age')this.value='';" value="Age" class="register"/>
  </g:form>
	</div>
	-->
  	
</div>
</div>

<!-- Text Under Box -->
<div id="bottom_text">
	Already have an account? <a id="blue" href="login.html">Sign In</a><br/>
</div>

</body>
</html>



--%>