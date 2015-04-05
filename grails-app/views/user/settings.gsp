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
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <title>Trek the Trail Fitness Tracker</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">

    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <g:javascript src="respond.min.js" />
    <g:javascript src="application.js" />

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
            <g:link controller="entry" action="about">
                <span>Home</span>
            </g:link>
        </li>
        <li>
    <g:if test="${session.user != null}">
        <g:if test="${session.user.role == 'admin'}">
            <g:link controller="admin" action="index">
                <span>Admin Panel</span>
            </g:link>
        </g:if>
        <g:else>
            <g:link controller="entry" action="index">
                <span>Profile</span>
            </g:link>
        </g:else>
    </g:if>
        </li>
        <li>
            <g:link controller="user" action="settings">
                <span>Settings</span>
            </g:link>
        </li>
        <a class="fb2" href="https://www.facebook.com/groups/566890070098865" target="_blank"></a>
        <div class="hello"><g:loginControl></g:loginControl></div>
    </ul>

</nav>
<br /><br />
<div class="gridContainer clearfix">

    <div id="div1" class="fluid">
        <section id="left">

            <div class="gcontent">
                <div class="head"><h1>Settings</h1></div>
                <div class="boxy">
                <g:if test ="${flash.message}">
					<div class="errors" style="color:red">${flash.message}</div>
				</g:if>
                    <ul class="settings">
                        <li><a href="#" class="email">Change Email Address</a></li>
                        	<div class="changeEmail">
                        		
                        		<g:form>
                        			<g:textField name="email" class="register" value="New Email"
			onkeydown="startDefaultVal(this.id,'New Email')"
			onblur="placeHolder(this.id,'New Email')" /><br/>
                        			<g:actionSubmit value="Change Email" action="setNewEmail"/>
                        		</g:form>
                        		
                	        	<br/>
                        	</div>
      
                        <li><a href="#" class="reset">Reset Password</a></li>
                        	<div class="resetPassword">
                        		<g:form>
                        			<g:passwordField type="password" name="password1" placeholder="Password" class="register"/><br/>
                        			<g:passwordField type="password" name="password2" placeholder="Confirm Password" class="register"/><br/>
                        			<g:actionSubmit value="Change Password" action="setUserPassword"/><br/>
                        	
                        		</g:form>
                        		

                        <br/>
                        </div>
                        
                        
                        
                        <li>
                        	<g:if test="${session.user.role != 'admin'}">
        						<g:link controller="user" action="deleteUser" onclick="return confirm('Are you sure you want to delete your profile?(Changes cannot be undone)')">Delete Profile</g:link>
        					</g:if>
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