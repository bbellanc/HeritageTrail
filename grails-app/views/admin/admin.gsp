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
    <title>Heritage Trail Fitness - Home</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'register.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main_table.css')}" type="text/css">
    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="respond.min.js"></script>

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
    </ul>
</nav>

<div id=loginControl style="position: absolute; right: 0px;">
    <g:loginControl></g:loginControl>
</div>

<div id="div1" class="fluid">
    <section id="left">

        <div class="gcontent">
            <div class="head"><h1>Admin Panel</h1></div>
            <br/>

            <div class="boxy">
				
                <g:form controller="admin" method="post">
                    <h2>User Search</h2><br/>
                    Search Users by Username, First Name, Last name, or Email:<br/>
					<div style="width:300px">
                    <g:textField class="register" name='value' placeholder="Search"/><br/>
					
                    <g:select class="register" name="ages" from="${Admin.ageBracket.sort()}"
                              noSelection="${['': "Select Age Range"]}" /><br/><br/>
                    <g:actionSubmit value="Find User" action="getProfile"/><br/>
                    </div>
                </g:form>
                
                <br/>

                <g:if test="${user != null}">
                    <table id="userDataTable">
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
                                </td>
                            </tr>
                        </g:each>
                    </table>
                </g:if>

                <br/>

            </div>
        </div>
        <a id="emailUsers" href="mailto:${emailList}">Email All Users</a>
</body>
</html>
