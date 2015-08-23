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
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'  rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <g:javascript src="application.js" />
	<g:javascript src="bootstrap.js" />

</head>
<body>
    <script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		
	<script>
		$(document).ready(function() {
			$('.resetPassword').hide();
			$('.changeEmail').hide();
			$('.reset').click(function() {
				$('.resetPassword').toggle(200);
			});
			$('.email').click(function() {
				$('.changeEmail').toggle(200);
			});
		});
	</script>

<g:render template="../navbar" />
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
                    
                    	<li>
        					<g:link controller="user" action="logout" >Log Out</g:link>
        				</li>
                    
                    
                    
                        <li><span class="email" style="cursor:pointer">Change Email Address</span></li>
                        	<li><div class="changeEmail" align="center">
                        	
                        		<g:form>
                        			<g:textField name="email" class="register" value="New Email" 
                        			onkeydown="startDefaultVal(this.id,'New Email')"
									onblur="placeHolder(this.id,'New Email')" /><br/>
                        			<g:actionSubmit value="Change Email" action="setNewEmail"/>
                        		</g:form>
                        		
                	        	<br/>
                        	</div>
      </li>
                        <li><span class="reset" style="cursor:pointer">Reset Password</span>
                        	<div class="resetPassword">
                        		<g:form>
                        			<g:passwordField type="password" name="password1" placeholder="Password" class="register"/><br/>
                        			<g:passwordField type="password" name="password2" placeholder="Confirm Password" class="register"/><br/>
                        			<g:actionSubmit value="Change Password" action="setUserPassword"/><br/>
                        	
                        		</g:form>
                        		

                        <br/>
                        </div></li>
                        
                        
                        
                        <li>
                        	<g:if test="${session.user.role != 'admin'}">
        						<g:link controller="user" action="deleteUser" onclick="return confirm('Are you sure you want to delete your profile?(Changes cannot be undone)')">Delete Profile</g:link>
        					</g:if>
        				</li>
                    </ul>
                </div>

            </div>

        </section>
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