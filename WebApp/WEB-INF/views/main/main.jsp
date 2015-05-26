<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Fakebook</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta name="generator" content="HAPedit 3.1">


<style type="text/css">
html,body {
	margin: 0;
	padding: 0
}

body {
	font: 76% arial, sans-serif;
	text-align: center;
	background: #E9EAED
}

p {
	margin: 0 10px 10px
}

a {
	display: block;
	color: #981793;
	padding: 10px
}

div#header {
	height: 40px;
	line-height: 40px;
	margin: 0;
	width: 100%;
	padding-left: -10px;
	background: #48649E;
	color: WHITE;
	text-align: left;
}

div#container {
	text-align: left
}

div#content p {
	line-height: 1.4
}

div#content #textbox {
	border: none 1px;
	background: white;
	width: 580px;
	height: auto;
	margin: 10px auto;
	padding: 10px;
	padding-bottom: 40px;
}

div#content #readbox {
	border: none 1px;
	
	background: white;
	width: 580px;
	height: auto;
	margin: 10px auto;
	padding: 10px;
	padding-bottom: 40px;
	
}

div#content #submitbox form {
	border: none 1px;
	background: #F6F7F8;
	width: 600px;
	margin: -15px auto;
}

div#navigation {
	background-color: #E9EAED
}

div#extra {
	background-color: #E9EAED
}

div#footer {
	background: #E9EAED;
	color: #FFF
}

div#footer p {
	margin: 0;
	padding: 5px 10px
}

div#container {
	width: 1000px;
	margin: 0 auto
}

div#wrapper {
	float: left;
	width: 100%;
	background-color: #E9EAED
}

div#content {
	margin: 0 150px
}

div#navigation {
	float: left;
	width: 150px;
	margin-left: -150px
}

div#extra {
	float: left;
	width: 150px;
	margin-left: -1000px
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
	(function($) {

		$.fn.autogrow = function(options) {
			return this
					.filter('textarea')
					.each(
							function() {
								var self = this;
								var $self = $(self);
								var minHeight = $self.height();
								var noFlickerPad = $self
										.hasClass('autogrow-short') ? 0
										: parseInt($self.css('lineHeight')) || 0;
								var settings = $.extend({
									preGrowCallback : null,
									postGrowCallback : null
								}, options);

								var shadow = $('<div></div>').css({
									position : 'absolute',
									top : -10000,
									left : -10000,
									width : $self.width(),
									fontSize : $self.css('fontSize'),
									fontFamily : $self.css('fontFamily'),
									fontWeight : $self.css('fontWeight'),
									lineHeight : $self.css('lineHeight'),
									resize : 'none',
									'word-wrap' : 'break-word'
								}).appendTo(document.body);

								var update = function(event) {
									var times = function(string, number) {
										for ( var i = 0, r = ''; i < number; i++)
											r += string;
										return r;
									};

									var val = self.value
											.replace(/&/g, '&amp;')
											.replace(/</g, '&lt;')
											.replace(/>/g, '&gt;')
											.replace(/\n$/, '<br/>&nbsp;')
											.replace(/\n/g, '<br/>')
											.replace(
													/ {2,}/g,
													function(space) {
														return times(
																'&nbsp;',
																space.length - 1)
																+ ' '
													});

									if (event && event.data
											&& event.data.event === 'keydown'
											&& event.keyCode === 13) {
										val += '<br />';
									}

									shadow.css('width', $self.width());
									shadow
											.html(val
													+ (noFlickerPad === 0 ? '...'
															: ''));

									var newHeight = Math.max(shadow.height()
											+ noFlickerPad, minHeight);
									if (settings.preGrowCallback != null) {
										newHeight = settings.preGrowCallback(
												$self, shadow, newHeight,
												minHeight);
									}

									$self.height(newHeight);

									if (settings.postGrowCallback != null) {
										settings.postGrowCallback($self);
									}
								}

								$self.change(update).keyup(update).keydown({
									event : 'keydown'
								}, update);
								$(window).resize(update);

								update();
							});
		};
	})(jQuery);
</script>


</head>
<body>

	<div id="header">
		<img src="/face/assets/images/fww.png"
			style="margin-left: 40px; margin-top: 10px; float: left;">

		<form action="">

			<input type="text" value="친구찾기" size="40"
				style="float: left; margin-left: 10px; margin-top: 10px"> <input
				type="image" src="/face/assets/images/find-16.png"
				style="float: left; margin-left: 5px; margin-top: 12px;">

		</form>
		<div style="float: left; margin-left: 25%">
			<a href="" style="float: left; text-decoration: none; color: white;">[사진]사용자
				이름</a> <a href=""
				style="float: left; text-decoration: none; color: white;">홈</a> <a
				href="" style="float: left; text-decoration: none; color: white;">친구
				찾기</a>
		</div>
	</div>
	<div id="container">
		<div id="wrapper">

			<div id="content">


				<div id="textbox">
					<p style="float: left;">업데이트</p>
					<p style="float: left;">사진/동영상 추가</p>

					<img src="/face/assets/images/line.png">

					<textarea rows="6"
						style="line-height: 1; overflow: hidden; font-size: 120%; width: 100%; margin-bottom: 10px;">무슨 생각을 하고 계신가요?</textarea>
					<script type='text/javascript'>
						$(function() {
							$('textarea').autogrow();
						});
					</script>





					<form action="">
						<input type="button" value="게시" style="float: right;">
					</form>
				</div>
				
				<div id="readbox">
				[사진]<br> 
				[date]<br> 
				[지역]<br>
				<br>
				내용 <br>
				좋아요 댓글달기
				
				
				
				</div>
				
			</div>

		</div>
		<div id="navigation">

			<div
				style="border: hidden; background-color: white; width: 200px; height: auto;">
				<p style="float: left;">추천 친구</p>
				<p style="float: left; margin-left: 60px">모두보기</p>

				<table>
					<tr>
						<td style="padding-top: 20px; padding-bottom: 20px">[사진] 친구
							이름<br>
							<form action="">
								<input type="button" value="친구 추가 하기">
							</form>
						</td>
					</tr>


				</table>

			</div>

		</div>

		<div id="extra">
			<p>
				[사진]<br> 제민재<br> 프로필편집<br> <br> <img
					src="/face/assets/images/Facebook.png"
					style="padding-right: 10px">시작하기<br> <img
					src="/face/assets/images/newsfeed.png"
					style="padding-right: 10px">뉴스피드<br> <img
					src="/face/assets/images/mes.png" style="padding-right: 10px">메세지<br>
				<img src="/face/assets/images/find.png"
					style="padding-right: 10px">친구찾기<br>


			</p>
		</div>

		<div id="footer">
			<p>made by 이은호, 제민재</p>
		</div>
	</div>
</body>
</html>