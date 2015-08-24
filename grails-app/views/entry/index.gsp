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
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Trek the Trail Fitness Tracker</title>

    <tooltip:resources/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'toggle-switch.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">



    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <g:javascript src="application.js"/>
    <g:javascript src="bootstrap.js"/>

    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <g:javascript src="respond.min.js"/>
    <g:javascript src="jquery.bpopup.min.js"/>

</head>

<body>
<g:render template="../navbar"/>

<div id="logo"></div>


<div class="gridContainer clearfix">

    <div id="div1" class="fluid">
        <section id="left">

            <div id="userStats" class="clearfix">
                <div style="float:left;margin-bottom:10px"><g:loginControl></g:loginControl></div><br/><br/><br/>

                <div class="imager" style="float:left">
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

                <g:if test="${session.user.points >= 510}">
                        <a href="#"><img
                                src="${resource(dir: 'images/medals/levels', file: "prestige.jpeg")}"/>
                        </a>
                </g:if>
                <g:if test="${session.user.points >= 1010}">
                    <a href="#"><img
                            src="${resource(dir: 'images/medals/levels', file: "prestige.jpeg")}"/>
                    </a>
                </g:if>
                <g:if test="${session.user.points >= 1510}">
                    <a href="#"><img
                            src="${resource(dir: 'images/medals/levels', file: "prestige.jpeg")}"/>
                    </a>
                </g:if>
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

                            <p style="margin-top:39px" id="rangevalue">1</p><br/>
                            <input id="distanceSlider" name="distanceTraveled" type="range" step="1" min="1" max="50"
                                   value="1"
                                   onchange="rangevalue.text = value"/><br/>
                            <!-- <output id="rangevalue">1</output>-->

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

                        <g:each in="${activities}">
                            <li>${it.activityDate} You ${it.activity} ${it.distanceTraveled} mile(s).</li>
                        </g:each>
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
                            <p>Medals are earned by completing certain milestones. The following medals are available to
                            earn. To track your progress, read the tooltip on each medal!
                        <div class="squares">
                        <div class="onesquare">
                            <tooltip:tip value="Log your first activity to earn this badge!">
                                <img src="${resource(dir: 'images/medals', file: '1_activity.png')}"/></div>
                            </tooltip:tip>

                            <g:each in="${allBadges}">
                                <div class="onesquare">
                                <g:if test="${it[0] >= it[1]}">
                                    <tooltip:tip value="You have earned ${it[1]}/${it[1]}${it[3]}.">
                                        <img src="${resource(dir: 'images/medals', file: it[2])}"/></div>
                                    </tooltip:tip>
                                </g:if>
                                <g:else>
                                    <tooltip:tip value="You have earned ${it[0]}/${it[1]}${it[3]}.">
                                        <img src="${resource(dir: 'images/medals', file: it[2])}"/></div>
                                    </tooltip:tip>
                                </g:else>

                            </g:each>

                        </section>
                    </article>

                </div>
            </div>

        <div id="popup" style="display: none;">
            <span class="button b-close"><span>X</span></span>
            <span class="logo">Congratulations!</span>
            <span class="sub">You've earned a new medal!</span><br/><br/>

            <g:if test="${session.badges != null}">
                <g:each in="${session.badges.split(' ')}" var="badge">
                    <img style="margin-left: auto; margin-right: auto;"
                         src="${resource(dir: 'images/medals', file: badge)}"/>
                </g:each>

                </div>

                <script>
                    $(document).ready(function () {
                        $('#popup').bPopup();
                    });

                </script>

                ${session.badges = null}
            </g:if>
        </section>

    </div>
</div>
<script>
    $("#distanceSlider").change(function () {
        $("#rangevalue").text($("#distanceSlider").val());
    });
    $("#distanceSlider").keyup(function () {
        $("#rangevalue").text($("#distanceSlider").val());
    });
</script>


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
            <div class="one">© <a href="http://trekthetrail.org">Trek The Trail</a> 2015</div>

            <div class="two">Designed by <a href="http://neueideas.com" target="_blank">Chiselbox</a>.</div>

        </div>

    </div>
</div>

</body>
</html>
