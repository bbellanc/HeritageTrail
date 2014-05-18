<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<title>Heritage Trail Fitness Login</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}"  type="text/css">
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
</head>

<body>
<nav>
    <ul>
        <li>
            <g:link controller="user" action="about">
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
			<div class="errors">${flash.message}</div>
		</g:if>

<div id="content">
	<h1>Sign In</h1>
	
	<!-- Login Fields -->
	
	<g:form action="authenticate" method="post">
	<div id="login">Sign in using your registered account:<br/>
	<input type="text" name="login"  onblur="if(this.value=='')this.value='Username';" onfocus="if(this.value=='Username')this.value='';" value="Username" class="login user"/>
	<input type='password' name='password' value='Password'  onfocus="if(this.value=='' || this.value == 'Password') {this.value='';this.type='password'}"  onblur="if(this.value == '') {this.type='text';this.value=this.defaultValue}" class="login password"/>
	</div>
	<!-- Green Button -->
	 <input class="button green" type="submit" value="Login" />
	</g:form>
	

<!--	<!-- Checkbox -->
<!--	<div class="checkbox">-->
<!--	<li>-->
<!--	<fieldset>-->
<!--	<![if !IE | (gte IE 8)]><legend id="title2" class="desc"></legend><![endif]>-->
<!--	<!--[if lt IE 8]><label id="title2" class="desc"></label><![endif]-->
<!--	<div>-->
<!--		<span>-->
<!--		<input id="Field" name="Field" type="checkbox" class="field checkbox" value="First Choice" tabindex="4" onchange="handleInput(this);" />-->
<!--		<label class="choice" for="Field">Keep me signed in</label>-->
<!--		</span>-->
<!--	</div>-->
<!--	</fieldset>-->
<!--	</li>-->
<!--	</div>-->


</div>
</div>

<!-- Text Under Box -->
<div id="bottom_text">
	Don't have an account? <g:link controller="user" action="create">Sign Up</g:link><br/>
	Forget your password? <g:link controller="user" action="resetPassword">Password Reset</g:link>
</div>  


</body>
</html>