<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <title>Register</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
          rel='stylesheet' type='text/css'/>
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <link rel="stylesheet"
          href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">

</head>

<body>
<nav>
    <ul>
        <li>
            <g:link controller="entry" action="about">
                <span>Home</span>
            </g:link>
        </li>
        <li>
            <g:link controller="entry" action="index">
                <span>Profile</span>
            </g:link>
        </li>
    </ul>
</nav>

<!-- Box Start-->


    <div id="box_bg">

    <div id="content">
        <br/>

        <div class="inner">

            <h1 class="blue">Password Reset</h1>

			<g:if test ="${flash.message}">
			<div class="errors" style="color:red">${flash.message}</div>
		</g:if>
   <g:if test="${user == null}">
    <g:form controller="user">
        <dl>
            
            <dd>
                <g:textField name="email" class="register" placeholder="Enter Email" />      
                <br/>
            </dd>
            
            <dd>
            	<g:textField name="username" class="register" placeholder="Enter Username" />    
             	<g:actionSubmit class="button blue" value="Submit" action="checkUsernameAndEmail"/>
            </dd>
            <dd>
            </dd>

        </dl>
    </g:form>
        </g:if>

    <g:if test="${user != null}">
        <div><br />${user.login}</div>

        <div><br />${user.email}</div>

        <div><br /><h4>${user.question}</h4></div>
        <g:form>
        	<g:textField name="securityAnswer" class="register" placeholder="Answer" />    
            <g:hiddenField name="user" value="${user.login}" />
            <g:actionSubmit value="Submit" class="button blue" action="checkSecurityQuestion"/>
        </g:form>
    </g:if>
    
    </div>
</div>

<!-- Text Under Box -->
    
 

    <div id="bottom_text">
        Remember your login? <a id="blue" href="login.html">Sign In</a><br/>
    </div>
    </div>
</body>
</html>










%{--<html>--}%
%{--<head>--}%
    %{--<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>--}%
    %{--<meta http-equiv="X-UA-Compatible" content="IE=9"/>--}%
    %{--<title>Reset Password</title>--}%
    %{--<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'--}%
          %{--rel='stylesheet' type='text/css'/>--}%
    %{--<link rel="stylesheet"--}%
          %{--href="${resource(dir: 'css', file: 'register.css')}" type="text/css">--}%
%{--</head>--}%

%{--<body>--}%

%{--<p>Please Enter your email address below for password reset</p>--}%
%{--<g:if test="${user == null}">--}%

    %{--<g:form controller="user">--}%
        %{--<input type="text" name="email"--}%
               %{--onfocus="if (this.value == 'Enter Email')this.value = '';"--}%
               %{--onblur="if (this.value == '')this.value = 'Enter Email';"--}%
               %{--value="Enter Email" class="register"/><br/>--}%

        %{--<input type="text" name="username"--}%
               %{--onfocus="if (this.value == 'Enter Username')this.value = '';"--}%
               %{--onblur="if (this.value == '')this.value = 'Enter Username';"--}%
               %{--value="Enter Username" class="register"/><br/>--}%
        %{--<g:actionSubmit class="button blue" value="Submit" action="checkUsernameAndEmail"/>--}%
    %{--</g:form></g:if>--}%

%{--<g:if test="${user != null}">--}%
    %{--<div>${user.login}</div>--}%

    %{--<div>${user.email}</div>--}%

    %{--<div>${user.question}</div>--}%
    %{--<g:form>--}%
        %{--<g:textField name="securityAnswer" onfocus="if(this.value=='Answer')this.value='';"--}%
                     %{--onblur="if(this.value=='')this.value='Answer';" value="Answer"/>--}%
        %{--<g:actionSubmit value="Submit" action="checkSecurityQuestion"/>--}%
    %{--</g:form>--}%
%{--</g:if>--}%

%{--</body>--}%
%{--</html>--}%