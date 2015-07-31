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
    
    
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main_table.css')}" type="text/css">
    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <g:javascript src="sorttable.js" />
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


<div id="div1" class="fluid">
    <section id="left">
    <div style="padding-left:10px">
		<a id="emailUsers" href="mailto:${emailList}">Email All Users</a>
	</div>
        <div class="gcontent">
            <div class="head"><h1>Admin Panel</h1></div>
            <div class="boxy">

                <g:form controller="admin" method="post">
                    <h2>User Search</h2><br/>
                    Search for users by Username, First Name, Last name, or Email:<br/>

                    <div style="width:300px;padding-left:37.5%">

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
                            <th><h3>Age</h3></th>
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
                                <td><a href="mailto:${it.email}">${it.email}
                                </a></td>
                                <td>
                                    ${it.age}
                                </td>
                                <td>
                                    ${it.points}
                                   		
		
			&nbsp;<g:link action="removeUser" params="[login:it.login]" onclick="return confirm('Are you sure? Profile deletion cannot be undone.')">
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
				<a href="#header">
					<img src="http://neue.rocks/wp-content/themes/flat/images/back-top.png" alt="Back to Top">
				</a>
			</p>
    <div class="footer-text clearfix">
				<div class="one">© <a href="http://neue.rocks">Trek The Trail</a> 2015</div>				<div class="two">Designed by <a href="http://neueideas.com" target="_blank">Chiselbox</a>.</div>			
    
    </div>
    
    </div>
</div>

</div>



</body>
</html>
