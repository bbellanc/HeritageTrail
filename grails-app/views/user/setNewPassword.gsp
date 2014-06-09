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
         <g:if test ="${flash.message}">
			<div class="errors" style="color:red">${flash.message}</div>
		</g:if>

    <div id="content">
    
        <br/>

        <div class="inner">

        

            <h1 class="blue">Set new password</h1>
		<g:form>
			<g:passwordField name="password1" placeholder="New Password" class="register"/><br/>
			<g:passwordField name="password2" placeholder="Confirm Password" class="register"/><br/>
			<g:hiddenField name="user" id="${user}"/>
			<g:actionSubmit value="Set Password" action="forgotPassword" class="button blue"/><br/>
		
		</g:form>


    
    </div>
</div>


    <br/>
    <br/>
    <br/>
    <br/>

    <div id="bottom_text">
        Remember your login? <a id="blue" href="login.html">Sign In</a><br/>
    </div>
    </div>
</body>
</html>
