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
				$('.resetPassword').toggle(200);
			});
			$('.email').click(function() {
				$('.changeEmail').toggle(200);
			});
		});
	</script>

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