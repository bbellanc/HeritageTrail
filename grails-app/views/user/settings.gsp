<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trek the Trail Fitness Tracker</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">

    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="js/respond.min.js"></script>
</head>
<body>
    <script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		
	<script>
		$(document).ready(function() {
			$('.resetPassword').hide();
			$('.changeEmail').hide();
			$('.reset').click(function() {
				$('.resetPassword').toggle(300);
			});
			$('.email').click(function() {
				$('.changeEmail').toggle(300);
			});
		});
	</script>

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
        <li>
            <g:link controller="user" action="settings">
                <span>Settings</span>
            </g:link>
        </li>
    </ul>
    <div id=loginControl style="position: absolute; right: 0px;">
        <g:loginControl></g:loginControl>
    </div>
</nav>

<div class="gridContainer clearfix">

    <div id="div1" class="fluid">
        <section id="left">

            <div class="gcontent">
                <div class="head"><h1>Settings</h1></div>
                <div class="boxy">
                <g:if test ="${flash.message}">
					<div class="errors">${flash.message}</div>
				</g:if>
                    <ul class="settings">
                        <li><a href="#" class="email">Change Email Address</a></li>
                        	<div class="changeEmail">
                        		<g:form>
                        			New Email<g:textField name="newEmail" />
                        			<g:actionSubmit value="Change Email" action="setNewEmail"/>
                        		</g:form>
                        	
                        	</div>
      
                        <li><a href="#" class="reset">Reset Password</a></li>
                        	<div class="resetPassword">
                        		<g:form>
                        			Password<g:passwordField type="password" name="password1"/><br/>
                        			Confirm Password<g:passwordField type="password" name="password2"/><br/>
                        			<g:actionSubmit value="Change Password" action="setUserPassword"/><br/>
                        	
                        		</g:form>
                        
                        </div>
                        
                        
                        
                        <li>
        					<g:link controller="user" action="deleteUser" onclick="return confirm('Are you sure you want to delete your profile?(Changes cannot be undone)')">Delete Profile</g:link>      	       	
        				</li>
                    </ul>
                </div>

            </div>

        </section>
        <section class="footer">
            <p>&copy; 2014</p>
            <p class="right">version 1.0</p>
        </section>
    </div>
</div>

</body>
                        

                  
</html>