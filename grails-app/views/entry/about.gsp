<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="respond.min.js"></script>
</head>
<body>
<nav>
    <ul>
        <li>
            <g:link controller="entry" action="about">
                <span>Home</span>
            </g:link>
        </li>
        <li>
                <g:if test="${session.user !=null && session.user.role == 'admin'}">
                    <g:link controller="admin" action="index">
                        <span>Admin Panel</span>
                    </g:link>
                </g:if>
            <g:else>
                    <g:link controller="entry" action="index">
                        <span>Profile</span>
                    </g:link>
                </g:else>
        </li>
        <li>
            <g:link controller="user" action="settings">
                <span>Settings</span>
            </g:link>
        </li>
    </ul>
</nav>

<div class="hello"><g:loginControl></g:loginControl></div>
<div id="logo"></div>

<div class="gridContainer clearfix">
    <div id="div1" class="fluid">
        <!------------------->
        <!------------------->
        <!--STUFF GOES HERE-->
        <!------------------->
        <!------------------->
    </div>
</div>
</body>
</html>
