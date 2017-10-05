<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>404</title>

		<link rel="stylesheet" href="{{asset('404/css/style.css')}}" type="text/css" />
		<link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,700' rel='stylesheet' type='text/css' />
		
		<script type="text/javascript" src="{{asset('404/js/jquery.js')}}"></script>
		<script type="text/javascript" src="{{asset('404/js/introtzikas.js')}}"></script>
		<script type="text/javascript" src="{{asset('404/js/script.js')}}"></script>
		<script type="text/javascript">
			//<![CDATA[
				$(document).ready(function() {
					$().introtzikas({
							line: 'white', 
							speedwidth: 2000, 
							speedheight: 1000, 
							bg: '#474747',
							lineheight: 2
					});	
				});
			//]]>
		</script>
</head>

<body>

	<img src="{{asset('404/images/bg.jpg')}}" id="bg" alt="" /><!-- Background image -->
	<div class="bg_overlay"></div><!-- Pattern -->
	
		<div id="wrap">
			<div id="block">
				<div id="content">
					<div class="top_img">
						<div class="img_eror"></div>
					</div>
				
					<div class="text_eror">
						<h1>"Ooops! Page not found..."</h1>
						
						   Or, you can take a look at our <a href="#">SITEMAP</a>. You can also return <a href="#">HOME</a>.</p>
					</div>
					
					
				</div>
			</div>
		</div>

</body>
</html>