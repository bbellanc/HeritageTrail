<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="apple-touch-icon" sizes="57x57"  href="${resource(dir: 'images', file: 'apple-touch-icon-57x57.png')}">
<link rel="apple-touch-icon" sizes="60x60" href="${resource(dir: 'images', file: 'apple-touch-icon-60x60.png')}" >
<link rel="apple-touch-icon" sizes="72x72" href="${resource(dir: 'images', file: 'apple-touch-icon-72x72.png')}" >
<link rel="apple-touch-icon" sizes="76x76" href="${resource(dir: 'images', file: 'apple-touch-icon-76x76.png')}" >
<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-114x114.png')}">
<link rel="apple-touch-icon" sizes="120x120" href="${resource(dir: 'images', file: 'apple-touch-icon-120x120.png')}">
<link rel="apple-touch-icon" sizes="144x144" href="${resource(dir: 'images', file: 'apple-touch-icon-144x144.png')}">
<link rel="apple-touch-icon" sizes="152x152" href="${resource(dir: 'images', file: 'apple-touch-icon-152x152.png')}">
<link rel="apple-touch-icon" sizes="180x180" href="${resource(dir: 'images', file: 'apple-touch-icon-180x180.png')}">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon-32x32.png')}" sizes="32x32">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'android-chrome-192x192.png')}" sizes="192x192">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon-96x96.png')}" sizes="96x96">
<link rel="icon" type="image/png" href="${resource(dir: 'images', file: 'favicon-16x16.png')}"  sizes="16x16">

	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <title>Register</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
          rel='stylesheet' type='text/css'/>
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
 <g:render template="../navbar" />

<!-- Box Start-->
<div id="box_bg">

    <div id="content">
        <br/>

        <div class="inner">

            <h1>Register</h1>


            <g:form action="create">
                <dl>
                   
                   
                   
                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'firstName', 'error')} ">
                        	<g:textField name="firstName" value="${user?.firstName}" 
                        				 class="register" value='First Name'
										 onkeydown="startDefaultVal(this.id,'First Name')"
										 onblur="placeHolder(this.id,'First Name')"/>
                        	<g:hasErrors bean="${user}" field="firstName">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="firstName"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>
                    
                    
                    
                    

                   <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'lastName', 'error')} ">
                        	<g:textField name="lastName" value="${user?.lastName}" class="register" value='Last Name'
										 onkeydown="startDefaultVal(this.id,'Last Name')"
										 onblur="placeHolder(this.id,'Last Name')"/>
							<g:hasErrors bean="${user}" field="lastName">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="lastName"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>

                    
                    
                    
                    
                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'login', 'error')} ">
                        	<g:textField name="login" value="${user?.login}" class="register" value='Username'
										 onkeydown="startDefaultVal(this.id,'Username')"
										 onblur="placeHolder(this.id,'Username')"/>
							<g:hasErrors bean="${user}" field="login">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="login"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>
                    
                    
                    

                    
                    
                    
                    
                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'email', 'error')} ">
                        	<g:textField name="email" value="${user?.email}" class="register" value='Email Address'
										 onkeydown="startDefaultVal(this.id,'Email Address')"
										 onblur="placeHolder(this.id,'Email Address')"/>
							<g:hasErrors bean="${user}" field="email">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="email"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>




                                       

                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'password', 'error')} ">
                        	<g:passwordField name="password" value="${user?.password}" class="register" value='Password'
										 onkeydown="startDefaultVal(this.id,'Password')"
										 onblur="placeHolder(this.id,'Password')"/>
							<g:hasErrors bean="${user}" field="password">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="password"/></li>
							</div>
							</g:hasErrors>
						</div>
                    </dd>





                    <dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'password2', 'error')} ">
                        	<g:passwordField name="password2" value="${user?.password2}" class="register" value='Confirm Password'
										 onkeydown="startDefaultVal(this.id,'Confirm Password')"
										 onblur="placeHolder(this.id,'Confirm Password')"/>
							<g:hasErrors bean="${user}" field="password2">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="password2"/></li>
							</div>
							</g:hasErrors>
						</div>
					</dd>
					

                    <dd>
                    <div class="fieldcontain ${hasErrors(bean: user, field: 'question', 'error')} ">
                        <g:select class="register" name="question" from="${user.securityQuestion.sort()}"
                                  noSelection="${['': "Security Question"]}" style="width:320px"/>
                        <g:hasErrors bean="${user}" field="question">
                        <div class="field-error"><br/>
                            <li><g:renderErrors bean="${user}" as="list" field="question"/></li>
                        </div>
                        </g:hasErrors>
                      </dd>
                       
                       
                       
                       
					<dd>
                    	<div class="fieldcontain ${hasErrors(bean: user, field: 'securityAnswer', 'error')} ">
                        	<g:textField name="securityAnswer" value="${user?.securityAnswer}" class="register" value='Security Answer'
										 onkeydown="startDefaultVal(this.id,'Security Answer')"
										 onblur="placeHolder(this.id,'Security Answer')"/>
							<g:hasErrors bean="${user}" field="securityAnswer">
							<div class="field-error"><br/>
								<li><g:renderErrors bean="${user}" as="list" field="securityAnswer"/></li>
							</div>
							</g:hasErrors>
						</div>
					</dd>


                </dl>


                <input class="button green" style="background-color:#648e3d" type="submit" value="Login" />
            </g:form>

        </div>
    </div>
</div>

    <!-- Text Under Box -->

    <div id="bottom_text">
        Already have an account? <a class="green" href="login.html">Sign In</a><br/>
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
