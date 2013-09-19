
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

  <meta charset="utf-8" />
  <title>Syrian Refugee Response - Powered by ActivityInfo</title>
  <meta name="description" content="Syrian Refugee Response - Powered by ActivityInfo">
  <meta name="author" content="legoupil@unhcr.org">
  <!--<meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1">-->

  <!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->


  <link rel="stylesheet" href="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/css/site.css">
  <link rel="stylesheet" href="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/css/prettify.css">
  <link href="http://www.unhcr.org/favicon.ico" rel="icon" type="image/x-icon">
  
  <link rel="stylesheet" href="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/css/font-humanitarian.css">
  <!--[if IE 7]>
  <link rel="stylesheet" href="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/css/font-humanitarian-ie7.min.css">
  <![endif]-->
  <!-- Le fav and touch icons -->
</head>


<body data-spy="scroll" data-target=".navbar" style="margin-top:60px">

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="#">ActivityInfo</a>
          <ul class="nav">
            <li><a href="/#why">Why?</a></li>
            <li><a href="/#what">What?</a></li>
            <li><a href="/#who">Who?</a></li>
            <li><a href="https://about.activityinfo.org/learn/ai201/lesson-1-introduction-to-the-course/" target="_blank">How?</a></li>

          </ul>
          <ul class="nav pull-right">
          <li><a href="http://data.unhcr.org/syrianrefugees/country.php?id=107" target="_blank"></i>Syrian Refugee Response Portal for Jordan</a></li>
          </ul>

        </div>
      </div>
    </div>
    
    
  ${body}


    <footer>
      <div class="container">
        <div class="row">
          <div class="span4">
          <div class="span8">
            <h2>Credits</h2>
            <p>For more information, please contact UNHCR Jordan Information Management Unit <br>  <i> joramimf--at--unhcr.org </i> <a href='http://www.unhcr.org'><img src='//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/img/HCRLogo.png' /></a></p>
            <p><a class="brand" href="http://about.activityinfo.org" style="" target="_blank"><img src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/img/logo-shadow.png"><span> About ActivityInfo</span></a></p>
             <p>ActivityInfo is developed by <a href="http://www.bedatadriven.com" target="_blank">BeDataDriven</a> and <a href="http://www.unicef.org/">UNICEF</a>.</p>
            </p>
          </div>
        </div>
      </div>
    </footer>

<script src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/js/jquery-1.7.1.min.js"></script>
<script src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/js/underscore.min.js"></script>
<script src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/js/backbone.min.js"></script>
<script src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/js/prettify.min.js"></script>
<script src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/js/bootstrap-222.min.js"></script>
<script src="//commondatastorage.googleapis.com/activityinfo-syrianrefugeeresponse/js/index/index.js"></script>

<script type="text/javascript">		
	var enableForm = function(enabled) {
		$('#loginButton').prop('disabled', !enabled);
		$('#loginSpinner').toggleClass('hide', enabled);
	}	

	$('#loginForm').submit(function() {
		
		$('#loginAlert').addClass('hide');
	
		enableForm(false);		
		$.ajax({
			url: '/login/ajax',
			type: 'POST', 
			data: {
				email: $('#emailInput').val(),
				password: $('#passwordInput').val(),
				ajax: 'true'
			},
			success: function() {
				if(window.location.pathname != '/') {
					window.location = '/' + window.location.search + window.location.hash;
				} else {
					window.location.reload(true);
				}
			},
			error: function(xhr) {
				$('#loginAlert').toggleClass('hide', false);
			},
			complete: function() {
				enableForm(true);
			}
		});
		return false;
	});
	
	$('#emailInput').focus();
</script>

<!-- Piwik -->
    <script type="text/javascript">
    var pkBaseURL = (("https:" == document.location.protocol) ? "https://data.unhcr.org/piwik/" : "http://data.unhcr.org/piwik/");
    document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
    </script><script type="text/javascript">
    try {
    var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 15);
    piwikTracker.trackPageView();
    piwikTracker.enableLinkTracking();
    } catch( err ) {}
    </script><noscript><p><img src="http://data.unhcr.org/piwik/piwik.php?idsite=15" style="border:0" alt="" /></p></noscript>
<!-- End Piwik Tracking Code -->


</body>
</html>

