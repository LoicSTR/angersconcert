<?php

include "header.html";

include "controller.php";


// Diriger automatiquement la page index sur la page concerts  -----------------------------------
if (isset($_GET['page'])){
    $page = $_GET['page'];
}
else {
    $page = 'concerts';
}

// Diriger vers les différentes "pages" en fonction de l'URL  -----------------------------------
switch ($page) {
    case "concerts":
        resetFiltreController();
        indexConcerts();
        break;
    case "infos":
        detailsInfos();
        break;
    default:
        echo "Error 404";
        break;
}

?>