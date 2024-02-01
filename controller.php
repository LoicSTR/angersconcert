<?php

include "model.php";
include "view.php";


//Afficher la liste des concerts -----------------------------------
function indexConcerts(){
    titre();
    //Afficher le formulaire de filtre -----------------------------------
        $salles = selectSalle();
        $genres = selectGenre();
        filtreConcerts($salles, $genres);

        if ((isset($_POST['genre'])) && (isset($_POST['salle']))){
            $genrefiltre = $_POST['genre'];
            $sallefiltre = $_POST['salle'];
            foreach ($sallefiltre as $value){
                $id = $value;
                ConcertsFiltreS($id);
            }
            foreach ($genrefiltre as $value){
                $id = $value;
                ConcertsFiltreG($id);
            }
            $liste = afficherConcertsFiltre();
        }
        elseif (isset($_POST['salle'])){
            $sallefiltre = $_POST['salle'];
            foreach ($sallefiltre as $value){
                $id = $value;
                ConcertsFiltreS($id);
                $liste = afficherConcertsFiltreS();
            }
        }
        elseif (isset($_POST['genre'])){
            $genrefiltre = $_POST['genre'];
            foreach ($genrefiltre as $value){
                $id = $value;
                ConcertsFiltreG($id);
                $liste = afficherConcertsFiltreG();
            }
        }
        else {
            $liste = afficherConcerts();
        }
        listeConcerts($liste);
}

// Reset des filtres
function resetFiltreController(){
    resetFiltreSalles();
    resetFiltreGenres();
}

// Détails des concerts
function detailsInfos(){
    $idconcert = $_GET['id'];
    $infoconcert = informations($idconcert);
    pageInfos($infoconcert);
}

?>