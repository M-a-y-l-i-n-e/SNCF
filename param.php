<?php

$server="10.69.8.65";
$user="user";
$pass="test";
$db="SNCF";



$link = mysql_connect($server , $user, $pass);
if (!$link) {
   die('Impossible de se connecter : ' . mysql_error());
}

// Rendre la base de données foo, la base courante
$db_selected = mysql_select_db($db, $link);
if (!$db_selected) {
   die ('Impossible de sélectionner la base de données : ' . mysql_error());
}
