<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="beans.Medium"%>
<%@page import="view.View"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<!--Modifiziertes Theme-->
<link rel="stylesheet" href="css/stylesheet.css">
<meta name="author" content="Hendrik Toelstede">
<title>Ergebnis!</title>
</head>
<body>
	<%
		View v = (View) request.getAttribute("View");
		//out.write(v.printMedium());
	%>
	<div class="container">
		<header class="page-header">
			<h1>
				VI/DS <small>Video Info/Data Service</small>
			</h1>
		</header>
		<form role="form" method="get" action="filter.do">
			<div class="row">
				<div class="col-xs-3">
					Typ:
					<div class="dropdown">
						<select id="Typ">
							<option value="all" selected="selected">Alle</option>
							<option value="movie">Filme</option>
							<option value="series">Serien</option>
							<option value="ps3">PS3</option>
						</select>
					</div>
				</div>
				<div class="col-xs-3">
					FSK:
					<div class="dropdown">
						<select id="FSK">
							<option value="all" selected="selected">Alle</option>
							<option value="12">12</option>
							<option value="16">16</option>
							<option value="18">18</option>
						</select>
					</div>
				</div>
				<div class="col-xs-3">
					Medium:
					<div class="dropdown">
						<select id="Medium">
							<option value="all" selected="selected">Alle</option>
							<option value="12">Blueray</option>
							<option value="16">DVD</option>
						</select>
					</div>
				</div>
				<div class="col-xs-3">
					Name:
					<div>
						<input type="text" name="name" id="inputName"
							placeholder="Suchen Sie einen Titel">
					</div>
				</div>
			</div>
			<div>
				<button type="submit" class="btn btn-xs btn-primary">Filtern</button>
				<button type="reset" id="reset" class="btn btn-xs btn-default">Reset</button>
			</div>
		</form>
		<hr>
	</div>
	<div class="container">
		<footer class="navbar-fixed-bottom">
			<ul class="links muted">
				<li><a href=index.html>Zurück zur Übersicht</a></li>
				<li>&middot;</li>
				<li><a href="impressum.html">Impressum</a></li>
				<li>&middot;</li>
				<li><a href="mailto:hendrik.toelstede@mail.de?subject=Kontakt">Kontakt</a></li>
			</ul>
		</footer>
	</div>
</body>
</html>