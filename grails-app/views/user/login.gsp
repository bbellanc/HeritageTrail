<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-45139617-6', 'trekthetrail.elasticbeanstalk.com');
  ga('send', 'pageview');

</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="X-UA-Compatible" content="IE=10"/>
<meta http-equiv="X-UA-Compatible" content="IE=9" />
    <title>Heritage Trail Fitness Login</title>

    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}"  type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<g:javascript src="application.js" />

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
        <li>
            <g:link controller="user" action="settings">
                <span>Settings</span>
            </g:link>
        </li>
        <a class="fb2" href="https://www.facebook.com/groups/566890070098865" target="_blank"></a>
    </ul>
</nav>

<!-- Box Start-->
<div id="box_bg">

<div id="content">
	<h1>Sign In</h1>

	<!-- Login Fields -->

	<g:form action="authenticate" method="post">
	<div id="userLogin">Sign in using your registered account:<br/>
	<g:textField name="login" class="login user" value='Username'
										 onkeydown="startDefaultVal(this.id,'Username')"
										 onblur="placeHolder(this.id,'Username')"/>
    <g:passwordField name='password' placeholder="Password" class="login password"/>
	</div>
  <g:if test ="${flash.message}">
    <div class="errors" style="color:red; padding-top: 20px;">${flash.message}</div>
  </g:if>
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