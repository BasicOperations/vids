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
	%>
	<div class="container">
		<header class="page-header">
			<h1>
				VI/DS <small>Video Info/Data Service</small>
			</h1>
		</header>
		<form role="form" method="get" action="filter">
			<div class="row">
				<div class="col-xs-3">
					Typ:
					<div class="dropdown">
						<select name="Typ">
							<option value="all" selected="selected">Alle</option>
							<option value="Movie">Filme</option>
							<option value="Series">Serien</option>
							<option value="Playstation 3">Playstation 3</option>
							<option value="XBox 360">XBox 360</option>
						</select>
					</div>
				</div>
				<div class="col-xs-3">
					FSK:
					<div class="dropdown">
						<select name="FSK">
							<option value="0" selected="selected">Alle</option>
							<option value="12">12</option>
							<option value="16">16</option>
							<option value="18">18</option>
						</select>
					</div>
				</div>
				<!-- <div class="col-xs-3">
					Medium:
					<div class="dropdown">
						<select name="Medium">
							<option value="all" selected="selected">Alle</option>
							<option value="Blueray">Blueray</option>
							<option value="DVD">DVD</option>
						</select>
					</div>
				</div> -->
				<div class="col-xs-3">
					Name:
					<div>
						<input type="text" name="Name" id="inputName"
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
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Titel</th>
					<th>FSK</th>
					<th>Typ</th>
				</tr>
			</thead>
			<tbody>
			<%
				out.write(v.printAllMedia(true));
			%>
			</tbody>
		</table>
	</div>
	<div class="container">
		<footer class="navbar-fixed-bottom">
			<ul class="links muted">
				<li><a href=index.html>Zur�ck zur �bersicht</a></li>
				<li>&middot;</li>
				<li><a href="impressum.html">Impressum</a></li>
				<li>&middot;</li>
				<li><a href="mailto:hendrik.toelstede@mail.de?subject=Kontakt">Kontakt</a></li>
			</ul>
		</footer>
	</div>
</body>
</html>