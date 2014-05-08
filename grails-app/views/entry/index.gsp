
<%@ page import="heritagetrail.Entry"%>
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
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script src="${resource(dir: 'js', file: 'respond.min.js')}"></script>

</head>
<body>

	<div id=loginControl style="position: absolute; right: 0px;">
		<g:loginControl></g:loginControl>
	</div>
	<br />
	<div class="gridContainer clearfix">
		<div id="div1" class="fluid">
			<section id="left">

				<div id="userStats" class="clearfix">

					<div class="data">
						<h1>
							${session.user.firstName}
							${session.user.lastName}
						</h1>
						<div class="socialMediaLinks">
							<a href="http://twitter.com/jakerocheleau" rel="me"
								target="_blank"><img
								src="${resource(dir: 'images', file: 'twitter.png')}"
								alt="@jakerocheleau" /></a> <a
								href="http://gowalla.com/users/JakeRocheleau" rel="me"
								target="_blank"><img
								src="${resource(dir: 'images', file: 'gowalla.png')}" /></a>
						</div>
						<br />
						<h2>
							${session.event.title}
						</h2>

						<ul class="points">
							<li>You Have<strong> ${session.user.points}
							</strong></li>
						</ul>
						<div class="sep"></div>
						<ul class="numbers clearfix">
							<li>You've Logged<strong> ${session.user.points}
							</strong></li>
						</ul>
					</div>
				</div>

			</section>

			<section id="right">
				<div class="gcontent">
					<div class="head">
						<h1>Trophies</h1>
					</div>
					<div class="boxy">
						<p>Keep excercising to unlock trophies!</p>

						<div class="badgeCount">
							
						
							<a href="#"><img
								src="${resource(dir: 'images', file: 'foursquare-badge.png')}" /></a>
							<a href="#"><img
								src="${resource(dir: 'images', file: 'foursquare-badge.png')}" /></a>
							<a href="#"><img
								src="${resource(dir: 'images', file: 'foursquare-badge.png')}" /></a>
						</div>

						<span><a href="#">See all…</a></span>
					</div>
				</div>

			</section>
		</div>
	</div>
</body>
</html>
