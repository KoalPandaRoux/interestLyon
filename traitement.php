<?php

if (empty($_POST)){ header("Location: /"); }

$db = new PDO('mysql:host=163.172.147.248;dbname=interestLyon;charset=utf8', "user", "pass");

$interests_type = array();
foreach ($_POST as $k => $v) {
    if (($k = intval($k)) > 0 && strtolower($v) == "on"){
        $interests_type[] = $k;
    }
}
// var_dump($interests_type);
// $interest_selected = array();

$n = 0;
while ($n < 8) {
    foreach ($interests_type as $type) {
        $resultats = $db->query("
            SELECT lieu.id,lieu.nom,lieu.adresse,lieu.description,lieu.url,lieu.id_type,type.type
            FROM lieu,type
            WHERE lieu.id_type = $type AND lieu.id_type = type.id_type ORDER BY RAND() LIMIT 0, 1
        ");
        $r = $resultats->fetch();
        echo ($r['id'] . " | " . $r['nom'] . " | " . $r['adresse'] . " | " . $r['description'] . " | " . $r['url'] . " | " . $r['type'] . "<br />");
        $n++;
        if ($n > 8){ break; }
    }
}

?>

<br /><a href="/">Retour</a>
