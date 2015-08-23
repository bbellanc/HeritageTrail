<%@ page import="heritagetrail.Admin" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    
    <title>Heritage Trail Fitness - Admin Panel</title>
    
    
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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main_table.css')}" type="text/css">
    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <g:javascript src="sorttable.js" />
<body>

<g:render template="../navbar" />


<div id="div1" class="fluid">

    <section id="left">
    <div style="padding-left:10px">
		<a class="emailUsers" href="mailto:${emailList}">Email All Users</a><br/>
		<g:link class="emailUsers" controller="user" action="logout">LOG OUT</g:link>
	</div>
        <div class="gcontent">
            <div class="head"><h1>Admin Panel</h1></div>
            <div class="boxy">
			
                <g:form controller="admin" method="post">
                    <h2>User Search</h2><br/>
                    Search for users by Username, First Name, Last name, or Email:<br/>

                    <div style="width:300px;margin:auto">

                        <g:textField class="register" name='value' placeholder="Search"/><br/>

                        <g:actionSubmit value="Find User" action="getProfile"/><br/>
                    </div>
                </g:form>

                <br/>

                <g:if test="${user != null}">
                    <table id="userDataTable" class="sortable">
                        <tr>
                            <th><h3>First Name</h3></th>
                            <th><h3>Last Name</h3></th>
                            <th><h3>Username</h3></th>
                            <th><h3>Email</h3></th>
                            <th><h3>Points</h3></th>
                        </tr>
                        <g:each in="${user}">
                            <tr cellspacing="50px">
                                <td>
                                    ${it.firstName}
                                </td>
                                <td>
                                    ${it.lastName}
                                </td>
                                <td>
                                    ${it.login}
                                </td>
                                <td><a style="color:#648b1a" href="mailto:${it.email}">${it.email}
                                </a></td>
                                <td>
                                    ${it.points}
                                   		
		
			&nbsp;<g:link style="color:#648b1a" action="removeUser" params="[login:it.login]" onclick="return confirm('Are you sure? Profile deletion cannot be undone.')">
						Delete User
				  </g:link>&nbsp;
                                </td>
                            </tr>
                        </g:each>
                    </table>
                </g:if>
                <br/>
            </div>
        </div>
    </section>
</div>
<br/><br/>
<div id="settings_bar">
 <ul><li class="settings"><g:link controller="user" action="settings"><span>SETTINGS</span></g:link></li></ul>
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

</div>



</body>
</html>
