<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <title>Log in</title>
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
    <div id="logo">
      
      <img src="http://trekthetrail.org/wp-content/uploads/2015/05/trek_logo.png" alt="Trek The Trail" title="Trek The Trail">
      
      </div>
      
      <div id="social">
        <ul class="social-links horizontal">
							<li class="social-link-item faceboox image-icon icon-large">
								<a href="https://www.facebook.com/groups/566890070098865" title="Faceboox" target="_blank"> <img src="http://trekthetrail.org/wp-content/uploads/2015/05/Untitled-1-01.png"> </a>
							</li>
							
							<li class="social-link-item twitter image-icon icon-large">
								<a href="https://twitter.com/TrekTheTrail" title="Twitter" target="_blank"> <img src="http://trekthetrail.org/wp-content/uploads/2015/05/Twitter-01.png"> </a>
							</li>
							
							<li class="social-link-item instagram image-icon icon-large">
								<a href="https://instagram.com/trekthetrail/" title="Instagram" target="_blank"> <img src="http://trekthetrail.org/wp-content/uploads/2015/05/instagram1.png"> </a>
							</li>
				</ul>
       </div>
      
    <div id="menu">
    
       <ul class="menu">
        
        <li class="home"><a href="http://trekthetrail.org" title="Home">Home</a></li>
        <li class="photos"><a href="http://trekthetrail.org/#photos" title="Photos">Photos</a></li>
        <li class="blog"><a href="http://trekthetrail.org/blog-2/" title="Blog">Blog</a></li>
          <li class="events"><a href="http://trekthetrail.org/#events" title="Blog">Events</a></li> 
        <li class="profile"><a href="${createLink(controller:'Entry', action:'index')}" title="Profile">Profile</a></li>
        </ul>
    
    </div>
</nav>

<!-- Box Start-->


    <div id="box_bg">

    <div id="content">
        <br/>

        <div class="inner">

            <h1>Password Reset</h1>

			<g:if test ="${flash.message}">
			<div class="errors" style="color:red">${flash.message}</div>
		</g:if>
   <g:if test="${user == null}">
    <g:form controller="user">
        <dl>
            <dd>
                <g:textField name="email" class="register" value="Enter Email"
			onkeydown="startDefaultVal(this.id,'Enter Email')"
			onblur="placeHolder(this.id,'Enter Email')" />      
                <br/>
            </dd>
            <dd>
            	<g:textField name="username" class="register" value="Enter Username"
			onkeydown="startDefaultVal(this.id,'Enter Username')"
			onblur="placeHolder(this.id,'Enter Username')" />    
             	<g:actionSubmit class="button green" style="background-color:#648e3d" value="Submit" action="checkUsernameAndEmail"/>
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
            <g:actionSubmit value="Submit" class="button green" style="background-color:#648e3d" action="checkSecurityQuestion"/>
        </g:form>
    </g:if>
    
    </div>
</div>

<!-- Text Under Box -->
</div>
    <div id="bottom_text">
        Remember your login? <g:link class="green" controller="user" action="login">Sign In</g:link><br/>
    </div>
    </div>


   <div class="footwrap">
<div id="foot">

    <div id="widget">
    
    </div>
    <p class="back-top">
				<a href="#top">
					<img src="../images/Arrow.png" alt="Back to Top">
				</a>
			</p>
    <div class="footer-text clearfix">
				<div class="one">© <a href="http://trekthetrail.org">Trek The Trail</a> 2015</div>				<div class="two">Designed by <a href="http://neueideas.com" target="_blank">Chiselbox</a>.</div>			
    
    </div>
    
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