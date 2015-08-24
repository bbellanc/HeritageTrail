<nav>
 
    <div id="logo">
      
      <img src="http://trekthetrail.org/wp-content/uploads/2015/05/trek_logo.png" alt="Trek The Trail" title="Trek The Trail">
      
      </div>
      
      <div id="social">
        <ul class="social-links horizontal">
							<li class="social-link-item faceboox image-icon icon-large">
								<a href="https://www.facebook.com/groups/566890070098865" title="Faceboox" target="_blank"> <img src="http://trekthetrail.org/wp-content/uploads/2015/05/Untitled-1-01.png"> </a>
							</li>
							
							<li class="social-link-item twitter image-icon icon-large">
								<a href="https://twitter.com/TrekTheTrail" title="Twitter" target="_blank"> <img src="http://trekthetrail.org/wp-content/uploads/2015/05/Twitter-01.png"> </a>
							</li>
							
							<li class="social-link-item instagram image-icon icon-large">
								<a href="https://instagram.com/trekthetrail/" title="Instagram" target="_blank"> <img src="http://trekthetrail.org/wp-content/uploads/2015/05/instagram1.png"> </a>
							</li>
				</ul>
       </div>


  <div class="bs-example" id="mobileMenu" data-example-id="nav-pills-with-dropdown">
    <ul class="nav nav-pills" style="margin:auto">
      <li role="presentation" class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          MENU <span class="caret"></span>
        </a>
        <ul class="dropdown-menu" >
          <li><a style="color:white;" href="http://trekthetrail.org">HOME</a></li>
          <li><a style="color:white;" href="http://trekthetrail.org/#photos">PHOTOS</a></li>
          <li><a style="color:white;" href="http://trekthetrail.org/blog-2/">BLOG</a></li>
          <li><a style="color:white;" href="http://trekthetrail.org/#events">EVENTS</a></li>
          <li><a style="color:white;" href="${createLink(controller:'Entry', action:'index')}">PROFILE</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /example -->

      
    <div id="menu">
 	       <ul class="menu">
        <li class="home"><a href="http://trekthetrail.org" title="Home">Home</a></li>
        <li class="photos"><a href="http://trekthetrail.org/#photos" title="Photos">Photos</a></li>
        <li class="blog"><a href="http://trekthetrail.org/blog-2/" title="Blog">Blog</a></li>
          <li class="events"><a href="http://trekthetrail.org/#events" title="Blog">Events</a></li> 
        <li class="profile"><a href="${createLink(controller:'Entry', action:'index')}" title="Profile">Profile</a></li>
        </ul>
    </div>
    
    
    <style>
	@media screen and (max-width:780px){
		#menu{display:none !important;}
		#mobileMenu{display:block !important;}
	}
	
	@media screen and (min-width:780px){
		#mobileMenu{display:none;}
	}
	


</style>

<script>
	$('#menuDropdown').click(function(){
		$('#menuList').toggle();
		});
</script>

</nav>