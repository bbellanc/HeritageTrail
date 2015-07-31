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
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <title>Register</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
          rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<g:javascript src="application.js" />


</head>

<body>
<nav>
 <div class="hello"><g:loginControl></g:loginControl></div>
    <div id="logo">
      
      <img src="http://neue.rocks/wp-content/uploads/2015/05/trek_logo.png" alt="Trek The Trail" title="Trek The Trail">
      
      </div>
      
      <div id="social">
        <ul class="social-links horizontal">
							<li class="social-link-item faceboox image-icon icon-large">
								<a href="https://www.facebook.com/groups/566890070098865" title="Faceboox" target="_blank"> <img src="http://neue.rocks/wp-content/uploads/2015/05/Untitled-1-01.png"> </a>
							</li>
							
							<li class="social-link-item twitter image-icon icon-large">
								<a href="https://twitter.com/TrekTheTrail" title="Twitter" target="_blank"> <img src="http://neue.rocks/wp-content/uploads/2015/05/Twitter-01.png"> </a>
							</li>
							
							<li class="social-link-item instagram image-icon icon-large">
								<a href="https://instagram.com/trekthetrail/" title="Instagram" target="_blank"> <img src="http://neue.rocks/wp-content/uploads/2015/05/instagram1.png"> </a>
							</li>
				</ul>
       </div>
      
    <div id="menu">
    
       <ul class="menu">
        
        <li class="home"><a href="http://neue.rocks" title="Home">Home</a></li>
        <li class="photos"><a href="http://neue.rocks/#photos" title="Photos">Photos</a></li>
        <li class="blog"><a href="http://neue.rocks/blog-2/" title="Blog">Blog</a></li>
          <li class="events"><a href="http://neue.rocks/#events" title="Blog">Events</a></li> 
        <li class="profile"><a href="http://127.0.0.1:55250/profile.html" title="Profile">Profile</a></li>
        </ul>
    
    </div>
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
	Don't have an account? <g:link class="green" controller="user" action="create">Sign Up</g:link><br/>
	Forget your password? <g:link class="green" controller="user" action="resetPassword">Password Reset</g:link>
</div>
    <div class="footwrap">
<div id="foot">

    <div id="widget">
    
    </div>
    <p class="back-top">
				<a href="#header">
					<img src="http://neue.rocks/wp-content/themes/flat/images/back-top.png" alt="Back to Top">
				</a>
			</p>
    <div class="footer-text clearfix">
				<div class="one">© <a href="http://neue.rocks">Trek The Trail</a> 2015</div>				<div class="two">Designed by <a href="http://neueideas.com" target="_blank">Chiselbox</a>.</div>			
    
    </div>
    
    </div>
</div>

</body>


</html>