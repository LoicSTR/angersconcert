<html lang="fr">
<!doctype html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Angers Concerts - Accueil</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Boogaloo&display=swap" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet" type="text/css" media="all">
</head>
<body>
<?php

// Création du tableau des concerts -----------------------------------
function filtreConcerts($salles, $genres){
?>
<div class="filtrescontener">
    <form action="<?php echo "index.php?page=concerts"?>" method="POST">
    <div class=titrefiltre>Veuillez sélectionner vos intérêts</div>
    <div class=nomfiltre>Lieux</div>
    <div class=fcontainer>
    
<?php
        foreach ($salles as $value){    
?>
            <div class="filtre"><input type="checkbox" name="salle[]" value="<?php echo $value['idsalle']; ?>">
                <label class="nomdufiltre"><?php echo $value['nom']; ?></label></div>
<?php
        }
?>
        </div>
        <div class=nomfiltre>Genres</div>
        <div class=fcontainer>
<?php
        foreach ($genres as $value){    
?>
            <div class="filtre"><input type="checkbox" name="genre[]" value="<?php echo $value['idgenre']; ?>">
                <label class="nomdufiltre"><?php echo $value['genre']; ?></label></div>
<?php
        }
?>
        </div>
        <div class="containerbouton"><input class="boutonfiltre" type="submit" value="Filtrer"></input></div>
        </form>
</div>
<?php
}

// Création du tableau des concerts -----------------------------------
function listeConcerts($liste){
?>
    <div class="progcontener">
<?php
        foreach ($liste as $value){
?>
        <div class="boxconcert">
                <img class="imageconcert" src="<?php echo $value['image'] ?>"></img>
                <div class="artisteconcert"> <?php echo $value['artiste']; ?> </div>
                <div class="dateconcert"><?php echo $value['date_et_heure']; ?></div>
                <div class="salleconcert"><?php echo $value['salle']; ?></div>
                <?php echo "<a class='btn btn-light' href='index.php?page=infos&id=".$value['idconcerts']."'>Plus d'informations</a>" ?>
        </div>
<?php
       }
?>
    </div>
<?php
}

// Création du tableau des concerts -----------------------------------
function pageInfos($infoconcert){
        foreach ($infoconcert as $value){
?>
        <div class="contenerconcert">
                <div class="hautconcert">
                <img class="imageconcertInfos" src="<?php echo $value['image'] ?>"></img>
                        <div class="BoxDroiteConcert">
                                <div class="artisteconcertInfos"><?php echo $value['artiste']; ?></div>
                                <div class="dateconcertInfos"><?php echo $value['date_et_heure']; ?></div>
                                <div class="salleconcertInfos"><?php echo $value['salle']; ?></div>
                                <div class="genre"><?php echo $value['genre']; ?></div>
                                <div class="prix"><?php echo $value['prix']; ?></div>
                        </div>
                </div>
                <div class="BasInfos">
                        <div class="description"><?php echo $value['description']; ?></div>
                </div>
                <div class="ContenerVideo">
                        <div class="video"><?php echo $value['video']; ?></div>
                </div>
        </div>
<?php
        }
}

function titre(){
?>
        <div class="titrepage">LES CONCERTS À ANGERS</div>
<?php
}
?>
</body>
