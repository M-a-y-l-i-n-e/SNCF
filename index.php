<?php

include "param.php";

// C'est la meilleur façon d'exécuter une requête SQL
// Pour plus d'exemples, voir mysql_real_escape_string()
$query = "select a.id, b.nomgare as gare_depart, c.nomgare as gare_arrivee, a.horairedepart, a.duree from tgv a inner join gare b on a.idgaredepart=b.id inner join gare c on a.idgarearrivee=c.id order by horairedepart";

// Exécution de la requête
$result = mysql_query($query);

// Vérification du résultat
// Ceci montre la requête envoyée à MySQL ainsi que l'erreur. Utile pour déboguer.
if (!$result) {
    $message  = 'Requête invalide : ' . mysql_error() . "\n";
    $message .= 'Requête complète : ' . $query;
    die($message);
}

// Utilisation du résultat
// Tenter d'affichager $result ne vous donnera pas d'informations contenues dans la ressource
// Une des fonctions MySQL de résultat doit être utilisée
// Voir aussi mysql_result(), mysql_fetch_array(), mysql_fetch_row(), etc.

echo "
<style>

table,
td {
    border: 1px solid #333;
}

thead,
tfoot {
    background-color: #333;
    color: #fff;
}

</style>";

echo "<table>
    <thead>
        <tr>
            <th colspan=\"5\">The table header</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> id train </id>
            <td>depart </td>
            <td>arrive</td>
            <td>ville depart </td>
            <td>ville arrivee</td>
        </tr>";

while ($row = mysql_fetch_assoc($result)) {
    echo "<tr>";

    echo "<td>".$row['id']."</td>";
    echo "<td>".$row['horairedepart']."</td>";
    echo "<td>".$row['duree']."</td>";
    echo "<td>".$row['gare_depart']."</td>";
    echo "<td>".$row['gare_arrivee']."</td>";

    echo "</tr>";

}


echo "</tbody>
</table>";

// Libération des ressources associées au jeu de résultats
// Ceci est effectué automatiquement à la fin du script
mysql_free_result($result);
?>
