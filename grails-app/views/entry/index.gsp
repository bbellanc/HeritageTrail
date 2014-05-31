<%@ page import="heritagetrail.Entry" %>
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
    <script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <g:javascript src="respond.min.js"/>
    <g:javascript src="jquery.bpopup.min.js"/>

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
                    <a href="#"><img
                            src="${resource(dir: 'images/medals/levels', file: "${session.user.activityLevel}_level.png")}"/>
                    </a>
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

                            <g:radio id="morning" value="morning" name="time" type="radio" checked="true"/>
                            <label for="morning" onclick="">Morning</label>

                            <g:radio id="afternoon" value="afternoon" name="time" type="radio"/>
                            <label for="afternoon" onclick="">Afternoon</label>

                            <g:radio id="evening" value="evening" name="time" type="radio"/>
                            <label for="evening" onclick="">Evening</label>

                            <a></a>
                        </div>

                        <h4>Type of Activity</h4>

                        <div class="switch-toggle switch-4 switch-android">

                            <g:radio id="walking" value="walking" name="activity" type="radio" checked="true"/>
                            <label for="walking" onclick="">Walking</label>

                            <g:radio id="running" value="running" name="activity" type="radio"/>
                            <label for="running" onclick="">Running</label>

                            <g:radio id="cycling" value="cycling" name="activity" type="radio"/>
                            <label for="cycling" onclick="">Cycling</label>

                            <g:radio id="other" value="other" name="activity" type="radio"/>
                            <label for="other" onclick="">Other</label>

                            <a></a>
                        </div>

                        <h4>Other Accomplishments</h4>

                        <div class="checkboxes">

                            <g:checkBox id="water" name="water" type="checkbox"/>
                            <label for="water" onclick="">Stayed hydrated</label>

                            <g:checkBox id="group" name="groupActivity" type="checkbox"/>
                            <label for="group" onclick="">Exercised with a group</label>

                            <g:checkBox id="pet" name="pet" type="checkbox"/>
                            <label for="pet" onclick="">Walked a pet</label>

                            <a></a>
                        </div>


                        <div class="slider">
                            <h4>Miles Traveled</h4>
                            <input name="distanceTraveled" type="range" step="1" min="1" max="25" value="1"
                                   onchange="rangevalue.value = value"/>
                            <output id="rangevalue">1</output>
                        </div>

                        <g:hiddenField name="login" value="${session.user.login}"/>

                        <g:submitButton name="submit" value="Add Activity"/>
                    </div>

                </div>
            </g:form>


            <div class="gcontent">
                <div class="head"><h1>Recent Activity</h1></div>

                <div class="boxy">
                    <ul class="recent">
                        <li>5/15/2014 You ran 5 miles.</li>
                        <li>5/13/2014 You walked 2 miles.</li>
                        <li>5/12/2014 You cycled 12 miles.</li>
                        <li>5/10/2014 You exercised 5 miles.</li>
                        <li>5/7/2014 You ran 6 miles.</li>
                    </ul>
                </div>

            </div>

            <div class="gcontent">
                <div class="head"><h1>Medals</h1></div>

                <div class="boxy">
                    <p>Keep exercising to unlock more medals!</p>

                    <div class="badgeCount">

                        <g:if test="${session.user.badges != ""}">
                            <g:each in="${session.user.badges.split(' ')}" var="badge">
                                <a href="#"><img src="${resource(dir: 'images/medals', file: badge)}"/></a>
                            </g:each>
                        </g:if>
                    </div>


                    <article>
                        <input type="checkbox" id="read_more" role="button">
                        <label for="read_more"
                               onclick=""><span>Learn more about medals and points…</span><span>Hide</span></label>
                        <section>
                        </section>

                        <section>

                            <div class="onesquare"><img
                                    src="${resource(dir: 'images/medals', file: '1_activity.png')}"/></div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'morning.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'night.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'group.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'pet.png')}"/></div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'water.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'walk_10.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'walk_50.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'walk_100.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'run_10.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'run_50.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'run_100.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'bike_10.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'bike_50.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'bike_100.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'other_10.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'other_50.png')}"/>
                            </div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'other_100.png')}"/>
                            </div>

                            <div class="onesquare"><img
                                    src="${resource(dir: 'images/medals', file: '100_activities.png')}"/></div>

                            <div class="onesquare"><img src="${resource(dir: 'images/medals', file: 'active.png')}"/>
                            </div>
                        </section>
                    </article>

                </div>
            </div>

            <button class="button_popup">TEST!!!</button>

            <div id="popup">
                <a class="b-close">X</a>
                    Content of popup
            </div>


        <script>
            ;(function($) {

            // DOM Ready
            $(function() {

                // Binding a click event
                // From jQuery v.1.7.0 use .on() instead of .bind()
                $('.button_popup').bind('click', function(e) {

                    // Prevents the default action to be triggered.
                    e.preventDefault();

                    // Triggering bPopup when click event is fired
                    $('#popup').bPopup();

                });

            });

        })(jQuery);
        </script>

        </section>
        <section class="footer">
            <p>&copy; 2014</p>

            <p class="right">version 1.0</p>
        </section>
    </div>
</div>
</body>
</html>
