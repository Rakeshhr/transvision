
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML>
<head>
<meta charset="utf-8">
<!-- CSS Files -->
<link rel="stylesheet" type="text/css" media="screen" href="static/css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="static/menu/css/simple_menu.css">
<!--JS FILES -->
<script src="static/js/jquery.tools.min.js"></script>
<script>
$(function () {
    $("#prod_nav ul").tabs("#panes > div", {
        effect: 'fade',
        fadeOutSpeed: 400
    });
});
</script>
<script>
$(document).ready(function () {
    $(".pane-list li").click(function () {
        window.location = $(this).find("a").attr("href");
        return false;
    });
});
</script>
</head>
<body>

		<header id="header">
			<tiles:insertAttribute name="header" />
		</header>
		
		<section id="sidemenu">
			<tiles:insertAttribute name="menu" />
		</section>
		<section id="body">
			<tiles:insertAttribute name="body" />
		</section>

</body>
