<!DOCTYPE html>
<html lang="en">
<head>
	<% base_tag %>
	<meta charset="UTF-8">
	$MetaTags(false)
<% if $Title == "Home" %>

	<title>Aged Care, Retirement(Rest) Home & Village Auckland | Assisted Living</title>
	
<% else_if $Title == "Dementia Care" %>
	
	<title>Dementia Care Auckland | Dementia Unit, Village & Rest Homes Auckland</title>

<% else_if $Title == "Help at Home" %>
	
	<title>In Home Care Auckland | Aged Care and Support in Home Auckland</title>

<% else_if $Title == "Dementia Care North Shore" %>
	
	<title>Dementia Home Care North Shore | Dementia Rest Homes & Villages</title>

<% else_if $Title == "Herne Bay" %>
	
	<title>Dementia Home Care and Villages Herne Bay | Call 0800 767 343</title>

<% else %>

	<title>$Title</title> 
   
<% end_if %>

	<!-- mobile responsive meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link rel="stylesheet" href="$ThemeDir/css/style.css">

 	<link rel="stylesheet" href="$ThemeDir/fonts/flaticon.css" />
	<link rel="stylesheet" href="$ThemeDir/css/custom.css" />
	<link rel="stylesheet" href="$ThemeDir/css/responsive.css">


	<!--favicon-->
	<link rel="apple-touch-icon" sizes="180x180" href="$ThemeDir/images/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-32x32.png" sizes="32x32">
	<link rel="icon" type="image/png" href="$ThemeDir/images/favicon/favicon-16x16.png" sizes="16x16">
	
	<script>
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start': new Date().getTime(),event:'gtm.js'});
	var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-M6ZKB83');
	</script>

</head>

<body>
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-M6ZKB83" height="0" width="0" style="display:none;visibility:hidden"></iframe>
	</noscript>

	<div class="boxed_wrapper">
		<% include HeaderTop %>
		<% include MainMenu %>

		$Layout
                $Form
		<% include Footer %>

		<div id="donate-popup" class="donate-popup">
	    <div class="close-donate theme-btn"><span class="fa fa-close"></span></div>
	    <div class="popup-inner">
		    <div class="container">
		        <div class="donate-form-area">
		            <div class="section-title center">
		                <h2>Make an Appointment</h2>
		            </div>
		            <form  action="#" class="donate-form default-form">
		                <div class="form-bg">
		                    <div class="row clearfix">
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		 	                        <div class="form-group">
		                                <input type="text" name="fname" placeholder="Name">
		                            </div>
		                        </div>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                            <div class="form-group">
		                                <input type="email" name="fname" placeholder="Email">
		                            </div>
		                        </div>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                            <div class="form-group">
		                                <input type="text" name="fname" placeholder="Phone">
		                            </div>
		                        </div>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                            <div class="form-group">
		                                <input type="text" name="fname" placeholder="Subject">
		                            </div>
		                        </div>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                            <div class="form-group">
		                                <input type="text" id="datepicker" name="fname" placeholder="Date">
		                            </div>
		                        </div>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                            <div class="form-group">
		                                <input type="text" name="time" placeholder="time">
		                            </div>
		                        </div>

		                    </div>
		                </div>

		                <div class="center"><button class="thm-btn style-2" type="submit">Appointment Now</button></div>
		            </form>
		        </div>
		    </div>
	    </div>
	</div>

		<!-- Scroll Top Button -->
		<button class="scroll-top tran3s color2_bg">
			<span class="fa fa-angle-up"></span>
		</button>
		<div class="preloader"></div>

		<!-- jQuery js -->
		<script src="$ThemeDir/js/jquery.js"></script>
		<!-- bootstrap js -->
		<script src="$ThemeDir/js/bootstrap.min.js"></script>
		<!-- jQuery ui js -->
		<script src="$ThemeDir/js/jquery-ui.js"></script>
		<!-- owl carousel js -->
		<script src="$ThemeDir/js/owl.carousel.min.js"></script>
		<!-- jQuery validation -->
		<script src="$ThemeDir/js/jquery.validate.min.js"></script>
		<!-- google map -->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRvBPo3-t31YFk588DpMYS6EqKf-oGBSI"></script>
		<script src="$ThemeDir/js/gmap.js"></script>
		<!-- mixit up -->
		<script src="$ThemeDir/js/wow.js"></script>
		<script src="$ThemeDir/js/jquery.mixitup.min.js"></script>
		<script src="$ThemeDir/js/jquery.fitvids.js"></script>
		<script src="$ThemeDir/js/bootstrap-select.min.js"></script>
		<script src="$ThemeDir/js/menuzord.js"></script>

		<!-- revolution slider js -->
		<script src="$ThemeDir/assets/revolution/js/jquery.themepunch.tools.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/jquery.themepunch.revolution.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.actions.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.migration.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
		<script src="$ThemeDir/assets/revolution/js/extensions/revolution.extension.video.min.js"></script>

		<!-- fancy box -->
		<script src="$ThemeDir/js/jquery.fancybox.pack.js"></script>
		<script src="$ThemeDir/js/jquery.polyglot.language.switcher.js"></script>
		<script src="$ThemeDir/js/nouislider.js"></script>
		<script src="$ThemeDir/js/jquery.bootstrap-touchspin.js"></script>
		<script src="$ThemeDir/js/SmoothScroll.js"></script>
		<script src="$ThemeDir/js/jquery.appear.js"></script>
		<script src="$ThemeDir/js/jquery.countTo.js"></script>
		<script src="$ThemeDir/js/jquery.flexslider.js"></script>
		<script src="$ThemeDir/js/imagezoom.js"></script>
		<script src="$ThemeDir/js/validation.js"></script>
		<script src="$ThemeDir/js/jquery.timepicker.js"></script>
		<script id="map-script" src="$ThemeDir/js/default-map.js"></script>
		<script src="$ThemeDir/js/jquery.ptTimeSelect.js"></script>
		<script src="$ThemeDir/js/custom.js"></script>
		<script src="$ThemeDir/js/customcontactform.js"></script>


	</div>

</body>
</html>
