<?php
	$db = new PDO('mysql:host=163.172.147.248;dbname=interestLyon;charset=utf8', "root", "23041994");
?>
<!DOCTYPE>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>interestLyon | Générateur d'itinéraire selon vos envies</title>
	<!--CSS-->
	<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
	<!--MY CSS-->
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<!--OTHER CSS-->
	<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>

<nav>
    <div class="nav-wrapper container">
      <a href="#" class="brand-logo">interestLyon</a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">Javascript</a></li>
        <li><a href="mobile.html">Mobile</a></li>
      </ul>
      <ul class="side-nav" id="mobile-demo">
        <li><a href="sass.html">Sass</a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">Javascript</a></li>
        <li><a href="mobile.html">Mobile</a></li>
      </ul>
    </div>
  </nav>

<div class="container">
<form method="post" action="traitement.php">
	<p>Cochez ce que vous aimez pour faire votre balade :<br>
<?php
	$resultats = $db->query("SELECT * FROM type ORDER BY type ASC");
	while ($resultat = $resultats->fetch()) {
?>
		<input type="checkbox" name="<?php echo $resultat['id_type'] ?>" id="<?php echo $resultat['type'] ?>" />
		<label for="<?php echo $resultat['type'] ?>"><?php echo $resultat['type'] ?></label><br />
<?php
	}
?>
	</p>
	<button class="btn waves-effect waves-light" type="submit" name="action">Générer votre itinéraire
		<i class="material-icons right">send</i>
	</button>
</form>
</div>

	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
