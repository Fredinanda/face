<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Fakebook</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="HAPedit 3.1">


<style type="text/css">
body {
	background: #48649E;
	margin: 0;
	padding: 0;
}

div#header {
	height: 80px;
	width: 100%;
	background: #48649E;
	color: WHITE;
}

#container {
	text-align: left;
	height: 500px;
	width: 100%;
	margin: 0 auto;
	background: #EDEFF5;
}

#left {
	float: left;
	width: 50%;
}

#right {
	float: right;
	width: 40%;
}

#right2 {
	float: right;
	width: 30%;
}

body {
	font: 12px/1.3 Arial, Sans-serif;
}

form {
	width: 380px;
	padding: 0 0 0 0;
}

div {
	position: relative;
	margin: 0 0 10px;
}

label {
	cursor: pointer;
	display: block;
}

input[type="text"] {
	width: 400px;
	border: 1px solid #999;
	padding: 5px;
	-moz-border-radius: 4px;
}

input[type="text"]:focus {
	border-color: #777;
}

input[type="password"] {
	width: 400px;
	border: 1px solid #999;
	padding: 5px;
	-moz-border-radius: 4px;
}

input[type="password"]:focus {
	border-color: #777;
}

input[name="firstname"] {
	width: 150px;
}

input[name="lastname"] {
	width: 150px;
}

input[name="id"] {
	width: 150px;
}

input[name="pass"] {
	width: 150px;
}

input[type="submit"] {
	cursor: pointer;
	border: 1px solid #999;
	padding: 5px;
	-moz-border-radius: 4px;
	background: #eee;
}

input[type="submit"]:hover,input[type="submit"]:focus {
	border-color: #333;
	background: #ddd;
}

input[type="submit"]:active {
	margin-top: 1px;
}

#container h2 {
	padding: 50px;
	color: #0E385F;
}

div#footer {
	background: #E9EAED;
	color: #FFF
}

div#footer p {
	margin: -10px;
	padding: 5px 10px;
	width: 500px
}

div#footer {
	clear: left;
	width: 100%;
	color: black;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.js"></script>
<script>
	$(function() {
		$('#info .slider label').each(function() {
			var labelColor = '#999';
			var restingPosition = '5px';

			$(this).css({
				'color' : labelColor,
				'position' : 'absolute',
				'top' : '6px',
				'left' : restingPosition,
				'display' : 'inline',
				'z-index' : '99'
			});

			var inputval = $(this).next('input').val();
			var labelwidth = $(this).width();
			var labelmove = labelwidth + 5;

			if (inputval !== '') {
				$(this).stop().animate({
					'left' : '-' + labelmove
				}, 1);
			}

			$('input').focus(function() {
				var label = $(this).prev('label');
				var width = $(label).width();
				var adjust = width + 5;
				var value = $(this).val();
				if (value == '') {
					label.stop().animate({
						'left' : '-' + adjust
					}, 'fast');
				} else {
					label.css({
						'left' : '-' + adjust
					});
				}
			}).blur(function() {
				var label = $(this).prev('label');
				var value = $(this).val();
				if (value == '') {
					label.stop().animate({
						'left' : restingPosition
					}, 'fast');
				}
			});
		})
	});
	

</script>

</head>
<body>
	<div id="header">

		<div id="left">
			<h1>Fakebook</h1>
		</div>


		<div id=right2>
			<br>
			<form action="" method="post" id="info">
				
				<div id="id-wrap" class="slider">
					<label for="id" style="float: left;">ID</label> <input type="text" id="id" name="id">



					<div id="pass-wrap" class="slider">
						<label for="pass">PASSWORD</label> <input type="password"
							id="pass" name="pass">
							
							 <input id="loginbutton"
							type="submit" value="·Î±×ÀÎ">
					</div>


				</div>


			</form>
		</div>

	</div>






	<div id="container">
		<div id="box">
			<div id="left">
				<h2>
					Facebook¿¡¼­ Àü¼¼°è¿¡ ÀÖ´Â Ä£±¸, °¡Á·, ÁöÀÎµé°ú<br> ÇÔ²² ÀÌ¾ß±â¸¦ ³ª´²º¸¼¼¿ä.
				</h2>
				<img src="/face/assets/images/world.png">
			</div>

			<div id="right">
				<form action="" method="post" id="info">
					<h1>°¡ÀÔÇÏ±â</h1>
					<p>Ç×»ó Áö±ÝÃ³·³ ¹«·á·Î ÀÌ¿ëÇÏ½Ç ¼ö ÀÖ½À´Ï´Ù.</p>

					<div id="firstname-wrap" class="slider">
						<label for="firstname">First Name</label> <input type="text"
							id="firstname" name="firstname">
					</div>

					<div id="lastname-wrap" class="slider">
						<label for="lastname">Last Name</label> <input type="text"
							id="lastname" name="lastname">
					</div>

					<div id="email-wrap" class="slider">
						<label for="email">E&ndash;mail</label> <input type="text"
							id="email" name="email">
					</div>
					<!--/#email-wrap-->

					<div id="checkemail-wrap" class="slider">
						<label for="checkemail">check E&ndash;mail</label> <input
							type="text" id="checkemail" name="checkemail">
					</div>
					<!--/#email-wrap-->

					<div id="password-wrap" class="slider">
						<label for="password">Password</label> <input type="password"
							id="password" name="password">
					</div>

					<h3>»ýÀÏ</h3>
					<select name="year">
						
						<option value="1990">1990</option>
						<option value="1991">1991</option>
						<option value="1992">1992</option>
						<option value="1993">1993</option>
						<option value="1994">1994</option>

					</select>
					<select name="month">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>

					</select> 
					<select name="day">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>

					</select> 
					<br>
					 <input type="radio" value="¿©¼º" id="gender" name="gender" checked="checked"> ¿©¼º
					<input type="radio" value="³²¼º" id="gender" name="gender"> ³²¼º

					<p>°¡ÀÔÇÏ±â ¹öÆ°À» Å¬¸¯ÇÏ¸é ¾à°ü¿¡ µ¿ÀÇÇÏ¸ç ÄíÅ° »ç¿ëÀ» Æ÷ÇÔÇÑ µ¥ÀÌÅÍ Á¤Ã¥À» ÀÐ°í ÀÌÇØÇÏ½Å °ÍÀ¸·Î °£ÁÖµË´Ï´Ù.</p>

					<input type="submit" id="btn" name="btn" value="°¡ÀÔÇÏ±â">
				</form>

			</div>
		</div>
	</div>


	<div id="footer">
		<p>made by ÀÌÀºÈ£, Á¦¹ÎÀç</p>
	</div>

</body>
</html>