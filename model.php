<?php

// Connexion à la base de données ----------------------------------
function bdconnect(){
    if(!defined('SERVER')){
        define ('SERVER','localhost');
        define ('USER','root');
        define ('PASSWORD','root');
        define ('BASE','angersconcerts');
    }
    try {
        $connexion = new PDO ("mysql:host=".SERVER.";dbname=".BASE, USER, PASSWORD);
        return $connexion;
    }
    catch (Exception $e){
        echo 'erreur'.$e->getMessage();
    }
}

// Requête SQL pour obtenir la liste des salles dans le <select> du formulaire -----------------------------------
function selectSalle(){
    $connexion = bdconnect();

    try {
        $requete = $connexion-> prepare("SELECT * FROM salles");
        $requete -> execute();
        return $requete;
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour obtenir la liste des genre dans le  formulaire -----------------------------------
function selectGenre(){
    $connexion = bdconnect();

    try {
        $requete = $connexion-> prepare("SELECT * FROM genres");
        $requete -> execute();
        return $requete;
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }

}

// Requête SQL pour afficher les concerts -----------------------------------
function afficherConcerts(){
    $connexion = bdconnect();

    try {
        $requete = $connexion-> prepare("SELECT idconcerts, artiste, concerts.image as 'image', salles.nom as salle, date_et_heure FROM concerts
                                        INNER JOIN salles ON salles.idsalle = concerts.idsalle
                                        INNER JOIN genres ON genres.idgenre = concerts.idgenre
                                        ORDER BY artiste ASC");
        $requete -> execute();
        return $requete;
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}


// Requête SQL pour afficher les concerts avec le filtre salle -----------------------------------
function ConcertsFiltreS($id){
    $connexion = bdconnect();
    try {
        $requete = $connexion-> prepare("UPDATE salles
                                            SET actif = 1
                                            WHERE idsalle = '".$id."'");
        $requete -> execute();
        return $requete;
            
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour afficher les concerts avec le filtre genre -----------------------------------
function ConcertsFiltreG($id){
    $connexion = bdconnect();
    try {
        $requete = $connexion-> prepare("UPDATE genres
                                            SET actif = 1
                                            WHERE idgenre = '".$id."'");
        $requete -> execute();
        return $requete;
            
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

function afficherConcertsFiltre(){
    $connexion = bdconnect();
    try {    
        $requete = $connexion-> prepare("SELECT idconcerts, artiste, concerts.image as 'image', salles.nom as salle, date_et_heure FROM concerts
                                        INNER JOIN salles ON salles.idsalle = concerts.idsalle
                                        INNER JOIN genres ON genres.idgenre = concerts.idgenre
                                        WHERE salles.actif = 1 AND genres.actif = 1
                                        ORDER BY nom ASC");
        $requete -> execute();
        return $requete;

    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour afficher les concerts avec le filtre salle -----------------------------------
function afficherConcertsFiltreS(){
    $connexion = bdconnect();
    try {    
        $requete = $connexion-> prepare("SELECT idconcerts, artiste, concerts.image as 'image', salles.nom as salle, date_et_heure FROM concerts
                                        INNER JOIN salles ON salles.idsalle = concerts.idsalle
                                        INNER JOIN genres ON genres.idgenre = concerts.idgenre
                                        WHERE salles.actif = 1
                                        ORDER BY nom ASC");
        $requete -> execute();
        return $requete;

    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour afficher les concerts avec le filtre genre -----------------------------------
function afficherConcertsFiltreG(){
    $connexion = bdconnect();
    try {    
        $requete = $connexion-> prepare("SELECT idconcerts, artiste, concerts.image as 'image', salles.nom as salle, date_et_heure FROM concerts
                                        INNER JOIN salles ON salles.idsalle = concerts.idsalle
                                        INNER JOIN genres ON genres.idgenre = concerts.idgenre
                                        WHERE genres.actif = 1
                                        ORDER BY nom ASC");
        $requete -> execute();
        return $requete;

    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour afficher les concerts avec le filtre salle -----------------------------------
function resetFiltreSalles(){
    $connexion = bdconnect();
    try {
        $requete = $connexion-> prepare("UPDATE salles
                                            SET actif = 0
                                            WHERE actif = 1");
        $requete -> execute();
        return $requete;        
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour afficher les concerts avec le filtre salle -----------------------------------
function resetFiltreGenres(){
    $connexion = bdconnect();
    try {
        $requete = $connexion-> prepare("UPDATE genres
                                            SET actif = 0
                                            WHERE actif = 1");
        $requete -> execute();
        return $requete;        
    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

// Requête SQL pour afficher les informations du concerts -----------------------------------
function informations($idconcerts){
    $connexion = bdconnect();
    try {    
        $requete = $connexion-> prepare("SELECT idconcerts, artiste, concerts.image as 'image', salles.nom as salle, date_et_heure, prix, concerts.video as 'video', concerts.description, date_et_heure, genre, adresse, nbr_places FROM concerts
                                        INNER JOIN salles ON salles.idsalle = concerts.idsalle
                                        INNER JOIN genres ON genres.idgenre = concerts.idgenre
                                        WHERE idconcerts = $idconcerts
                                        ORDER BY nom ASC");
        $requete -> execute();
        return $requete;

    }
    catch (PDOException $e){
        echo 'Erreur:' . $e->getMessage();
    }
}

?>