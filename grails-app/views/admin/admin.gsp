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
    <ul>
        <li>
            <g:link controller="entry" action="about">
                <span>Home</span>
            </g:link>
        </li>
        <li>
            <g:link controller="admin" action="index">
                <span>Admin Panel</span>
            </g:link>
        </li>
        <li>
            <g:link controller="user" action="settings">
                <span>Settings</span>
            </g:link>
        </li>
        
        <a class="fb2" href="https://www.facebook.com/groups/566890070098865" target="_blank"></a>
        <div class="hello"><div id="logout"><g:loginControl id="logout"></g:loginControl></div></div>
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

                    <div style="width:300px">

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


</body>
</html>
