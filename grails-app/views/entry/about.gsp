<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-45139617-6', 'trekthetrail.elasticbeanstalk.com');
  ga('send', 'pageview');

</script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=10"/>
    <meta http-equiv="X-UA-Compatible" content="IE=9"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Heritage Trail Fitness - Home</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
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
        <a class="fb2" href="https://www.facebook.com/groups/566890070098865" target="_blank"></a>
        <div class="hello"><g:loginControl></g:loginControl></div>
    </ul>
</nav>
          <!--[if lte IE 9]>
      <div class="about_error">
        <h3 class="white" style="color:red">Oh no!</h3>
        <p style="color:red">Your web browser is currently unsupported. Please update Internet Explorer to version 10 or 11 or download a compatible browser via one of the following links:
        <p><a class="white"  href="http://www.mozilla.org/en-US/firefox/new/" target=“_blank”>Mozilla Firefox</a>
        <p><a class="white" href="https://www.google.com/intl/en-US/chrome/browser/" target=“_blank”>Google Chrome</a>        
      </div>
<![endif]-->
<div id="logo"></div>

<div class="gridContainer clearfix">
    <div id="div1" class="fluid">
      <div class="buttonwrap">
      <g:link controller="user" action="login"><button class="green button">Login</button></g:link>
      <g:link controller="user" action="create"><button class="blue button">Sign Up</button></g:link>
      </div>
      <section id="left">

          <img src="${resource(dir: 'images', file: "running_820.jpg")}" style="margin-top: 30px;"/>

          
        <div class="about">
          <h2>About Trek the Trail</h2>
          <p>Participants who register on the Trek the Trail website can record their 
          mileage and earn points for staying active. Visit 
          <a href="https://www.facebook.com/groups/566890070098865/" target="_blank"><em>Trek the Trail 
          Wheeling</em> on Facebook</a> to see upcoming 
          events and trail tips.
          
          <p>Those who attend Trek the Trail events will receive a free pedometer to keep track of 
          their mileage. Registrants will be entered into prize drawings for gift 
          certificates for spa treatments, bicycles, sports equipment and more.
        </div>
        <div class="about">
          <h2>Wheeling's Trail System</h2>
          <p>The trail system in Wheeling is an integral part of the Wheeling 
          National Heritage Area. As Wheeling’s past industries grew, rail access 
          expanded. Over the years, industries left and the need for rail 
          transportation declined. The remaining rail beds were converted to 
          bicycle and walking trails. 
          
          <p>These paved trails are maintained by the city and have easy 
          access points with parking. Wheeling alone has miles of paved trail 
          with the Ohio River Trail running north-south starting at the city line 
          in South Wheeling and reaching the Pike Island Dam where the trail 
          continues further into Brooke County. Additionally, The Wheeling Creek 
          Trail runs east-west providing opportunities to cross the Hempfield 
          Viaduct high above the creek and to experience the Hempfield Tunnel 
          (Tunnel Green).
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
