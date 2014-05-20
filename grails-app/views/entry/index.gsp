<%@ page import="heritagetrail.Entry"%>
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
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">

    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="js/respond.min.js"></script>
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
    <div class="hello"><g:loginControl></g:loginControl></div>
</nav>

<div class="gridContainer clearfix">
    <div id="div1" class="fluid">
        <section id="left">
            <div id="userStats" class="clearfix">
                <div class="imager">
                    <a href="#"><img src="${resource(dir: 'images', file: 'logo.jpg')}" /></a>
                </div>
                <div class="data">
                    <h1>${session.user.firstName} ${session.user.lastName}</h1>
                    <ul class="points">
                        <li>Your current point total is</li>
                        <li><strong>${session.user.points}</strong></li>
                        <div class="sep"></div>
                        <li>Activity level</li>
                        <li class="level">${session.user.activityLevel}</li>
                    </ul>
                </div>
            </div>

    <g:form controller="entry" action="addActivity">
            <div class="gcontent">
                <div class="head"><h1>Add an Activity</h1></div>
                <div class="boxy">
                    <h4>Time of Day</h4>
                    <div class="switch-toggle switch-3 switch-android">

                        <g:radio id="morning" value="morning" name="time" type="radio" checked="true" />
                        <label for="morning" onclick="">Morning</label>

                        <g:radio id="afternoon" value="afternoon" name="time" type="radio" />
                        <label for="afternoon" onclick="">Afternoon</label>

                        <g:radio id="evening" value="evening" name="time" type="radio" />
                        <label for="evening" onclick="">Evening</label>

                        <a></a>
                    </div>

                    <h4>Type of Activity</h4>
                    <div class="switch-toggle switch-4 switch-android">

                        <g:radio id="walking" value="walking" name="activity" type="radio" checked="true" />
                        <label for="walking" onclick="">Walking</label>

                        <g:radio id="running" value="running" name="activity" type="radio" />
                        <label for="running" onclick="">Running</label>

                        <g:radio id="cycling" value="cycling" name="activity" type="radio" />
                        <label for="cycling" onclick="">Cycling</label>

                        <g:radio id="other" value="other" name="activity" type="radio" />
                        <label for="other" onclick="">Other</label>

                        <a></a>
                    </div>

                    <h4>Other Accomplishments</h4>
                    <div class="checkboxes">

                        <g:checkBox id="water" name="water" type="checkbox" />
                        <label for="water" onclick="">Stayed hydrated</label>

                        <g:checkBox id="group" name="groupActivity" type="checkbox" />
                        <label for="group" onclick="">Exercised with a group</label>

                        <g:checkBox id="pet" name="pet" type="checkbox" />
                        <label for="pet" onclick="">Walked a pet</label>

                        <a></a>
                    </div>


                    <div class="slider">
                        <h4>Miles Traveled</h4>
                        <input name="distanceTraveled" type ="range" step="1" min="1" max="25" value="1" onchange="rangevalue.value=value"/>
                        <output id="rangevalue">1</output>
                    </div>

                    <g:hiddenField name="login" value="${session.user.login}" />

                    <g:submitButton name="submit" value="Add Activity" />
                </div>

            </div>
    </g:form>

            <div class="gcontent">
                <div class="head"><h1>Medals</h1></div>
                <div class="boxy">
                    <p>Keep exercising to unlock more medals!</p>
                    <div class="badgeCount">

                      <g:if test="${session.user.badges != ""}">
                        <g:each in="${session.user.badges.split(' ')}" var="badge">
                            <a href="#"><img src="${resource(dir: 'images/medals', file:badge)}" /></a>
                        </g:each>
                      </g:if>
                    </div>
                    <a href="#">Learn more about medals…</a>

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







%{--<%@ page import="heritagetrail.Entry"%>--}%
%{--<!DOCTYPE html>--}%
%{--<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->--}%
%{--<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->--}%
%{--<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->--}%
%{--<!--[if gt IE 8]><!-->--}%
%{--<html>--}%
%{--<!--<![endif]-->--}%
%{--<head>--}%
%{--<meta charset="UTF-8">--}%
%{--<meta name="viewport" content="width=device-width, initial-scale=1">--}%
%{--<title>Heritage Trail Fitness - Home</title>--}%
%{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"--}%
	%{--type="text/css">--}%
%{--<link rel="stylesheet"--}%
	%{--href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">--}%
%{--<!--[if lt IE 9]>--}%
%{--<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>--}%
%{--<![endif]-->--}%
%{--<script src="${resource(dir: 'js', file: 'respond.min.js')}"></script>--}%

%{--</head>--}%
%{--<body>--}%

	%{--<div id=loginControl style="position: absolute; right: 0px;">--}%
		%{--<g:loginControl></g:loginControl>--}%
	%{--</div>--}%
	%{--<br />--}%
	%{--<div class="gridContainer clearfix">--}%
		%{--<div id="div1" class="fluid">--}%
			%{--<section id="left">--}%

				%{--<div id="userStats" class="clearfix">--}%

					%{--<div class="data">--}%
						%{--<h1>--}%
							%{--${session.user.firstName}--}%
							%{--${session.user.lastName}--}%
						%{--</h1>--}%
						%{--<div class="socialMediaLinks">--}%
							%{--<a href="http://twitter.com/jakerocheleau" rel="me"--}%
								%{--target="_blank"><img--}%
								%{--src="${resource(dir: 'images', file: 'twitter.png')}"--}%
								%{--alt="@jakerocheleau" /></a> <a--}%
								%{--href="http://gowalla.com/users/JakeRocheleau" rel="me"--}%
								%{--target="_blank"><img--}%
								%{--src="${resource(dir: 'images', file: 'gowalla.png')}" /></a>--}%
						%{--</div>--}%
						%{--<br />--}%
						%{--<h2>--}%
							%{--${session.event.title}--}%
						%{--</h2>--}%

						%{--<ul class="points">--}%
							%{--<li>You Have<strong> ${session.user.points}--}%
							%{--</strong></li>--}%
						%{--</ul>--}%
						%{--<div class="sep"></div>--}%
						%{--<ul class="numbers clearfix">--}%
							%{--<li>You've Logged<strong> ${session.user.points}--}%
							%{--</strong></li>--}%
						%{--</ul>--}%
					%{--</div>--}%
				%{--</div>--}%

			%{--</section>--}%

			%{--<section id="right">--}%
				%{--<div class="gcontent">--}%
					%{--<div class="head">--}%
						%{--<h1>Trophies</h1>--}%
					%{--</div>--}%
					%{--<div class="boxy">--}%
						%{--<p>Keep excercising to unlock trophies!</p>--}%

						%{--<div class="badgeCount">--}%
							%{----}%
						%{----}%
							%{--<a href="#"><img--}%
								%{--src="${resource(dir: 'images', file: 'foursquare-badge.png')}" /></a>--}%
							%{--<a href="#"><img--}%
								%{--src="${resource(dir: 'images', file: 'foursquare-badge.png')}" /></a>--}%
							%{--<a href="#"><img--}%
								%{--src="${resource(dir: 'images', file: 'foursquare-badge.png')}" /></a>--}%
						%{--</div>--}%

						%{--<span><a href="#">See all…</a></span>--}%
					%{--</div>--}%
				%{--</div>--}%

			%{--</section>--}%
		%{--</div>--}%
	%{--</div>--}%
%{--</body>--}%
%{--</html>--}%
