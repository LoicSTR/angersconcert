-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 08 déc. 2022 à 11:46
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `angersconcerts`
--

-- --------------------------------------------------------

--
-- Structure de la table `concerts`
--

CREATE TABLE `concerts` (
  `idconcerts` int(20) NOT NULL,
  `idsalle` int(20) NOT NULL,
  `artiste` varchar(200) NOT NULL,
  `prix` varchar(200) NOT NULL,
  `idgenre` int(20) NOT NULL,
  `complet` tinyint(1) NOT NULL,
  `image` varchar(500) NOT NULL,
  `video` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `date_et_heure` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `concerts`
--

INSERT INTO `concerts` (`idconcerts`, `idsalle`, `artiste`, `prix`, `idgenre`, `complet`, `image`, `video`, `description`, `date_et_heure`) VALUES
(1, 2, 'Hamza', '30€ à 50€', 2, 0, 'https://street-wear.fr/wp-content/uploads/2019/12/doudoune-hamza-moncler-vernis-god-bless.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mdcBqqWj3kY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Après 2 années d’absence, 2023 marquera le grand retour du meilleur rappeur francophone Hamza. Des shows de pure énergie dans de nombreuses salles à travers toute la France. Cette fois, ne le ratez sous aucun prétexte car ce sera… le meilleur concert de votre vie !', '12/01/2023 à 20h30'),
(2, 2, 'Clara Luciani', '35€ à 70€ ', 8, 0, 'https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/people/la-vie-des-people/news/clara-luciani-son-message-revolte-a-l-egard-de-roselyne-bachelot-3873844/93719386-1-fre-FR/Clara-Luciani-son-message-revolte-a-l-egard-de-Roselyne-Bachelot.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uWH00ehhLP8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Après le succès de son premier album, encensé par la critique, Clara Luciani, couronnée successivement par deux Victoires de la Musique, vient d’annoncer son grand retour avec la sortie le 11 juin de son prochain album Cœur.\r\n\r\nComme en atteste le premier titre « Le Reste », cet album sera une ode au déconfinement, résolument chic et dansant.\r\n\r\n', '13/01/2023 à 19h30'),
(3, 2, 'Lomepal', '30€ à 55€', 2, 0, 'https://resize.elle.fr/portrait_1280/var/plain_site/storage/images/loisirs/musique/news/lomepal-le-rappeur-francais-qui-monte-3594941/85420880-2-fre-FR/Lomepal-le-rappeur-francais-qui-monte.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Bkm03KcnKHE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Lomepal revient après presque 3 ans d’absence avec « mauvais ordre », son troisième album studio.\r\n\r\n \r\n\r\nL’album qui sortira le 16 septembre 2022 est déjà disponible en précommande avec accès exclusif à la billetterie de la tournée avant la mise en vente générale le 12 septembre sur mauvaisordre.com.', '20/01/2023 à 19h00'),
(4, 2, 'Hans Zimmer', '60€ à 90€ ', 5, 0, 'https://www.hanszimmerlive.com/wp-content/uploads/2022/04/HZLive2022__dredit_Frank-Embacher-6.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-yOZEiHLuVU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'À partir d\'avril 2023, le compositeur de films de renommée mondiale reviendra en Europe avec son extraordinaire groupe et orchestre pour le \"Hans Zimmer Live - Europe Tour 2023\". Cette tournée des arènes comprendra des concerts dans 15 pays, avec de nouvelles étapes au Portugal, en Espagne, en Slovaquie et en Allemagne.\r\n\r\nDans un spectacle audio et visuel inédit, Zimmer, lauréat de plusieurs Academy Award® et Grammy, son groupe et l\'Odessa Orchestra & Friends interpréteront les succès mondiaux du compositeur. Les suites de concert nouvellement arrangées comprennent la musique de GLADIATOR, PIRATES OF THE CARIBBEAN, THE DARK KNIGHT, INTERSTELLAR, THE LION KING, THE LAST SAMURAI et DUNE, pour lequel Zimmer a reçu son deuxième Academy Award® lors de sa précédente étape à Amsterdam.', '07/02/2023 à 21h00'),
(5, 2, 'Shaka Ponk', '40€ à 70€', 1, 0, 'https://www.virginradio.fr/wp-content/uploads/virginradio/2022/10/shaka_ponk_apelogies_visuelnews112020-2.jpeg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/EF2PGnZmXCI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Après plusieurs années d’absence, 2023 marquera le grand retour de Shaka Ponk. Des shows de pure énergie, Punk et Rock n’Roll dans plus de 40 salles à travers toute la France. Cette fois, ne les ratez sous aucun prétexte car ce sera… THE FINAL FUCKED UP TOUR !', '02/02/2023 à 20h00'),
(6, 1, 'So la lune ', '15€ à 25€', 2, 0, 'https://yt3.ggpht.com/ytc/AMLnZu9Vc1V2JsbpdWWNe3mjDxDXk08iqe1xw-CitKE3=s900-c-k-c0x00ffffff-no-rj', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3YMq9fw6FZI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'So La lune fait partie des astres montants de la nouvelle génération du rap français. Son inspiration nocturne et son entourage local ont façonné sa plume et son art, installant une forme de mélancolie bien présente, notamment dans sa première mixtape, « tsuki » dévoilée en 2020. Le jeune Lyonnais, ressentant le besoin d’écrire depuis son plus jeune âge, a fait un bout de chemin dans l’ombre, avant de se forger une image, proche de celle de la lune, très présente dans ses textes. Grâce à sa voix fissurée – très à l’aise dans les aigües- ainsi que ses talents de lyriciste et ses textes sombres, So La Lune parvient à éclairer la scène du rap français. La sortie de son premier album « fissure de vie » sorti en mai dernier, illustre parfaitement son univers mélancolique et sombre, à la Young Thug, XXXTENTACION, ou même PNL.', '12/02/2023 à 20h30'),
(7, 1, 'Suzane', '25€ à 35€ ', 8, 0, 'https://resize-elle.ladmedia.fr/rcrop/1024,1024/img/var/plain_site/storage/images/loisirs/musique/news/la-playlist-de-suzanne-3942922/95192672-2-fre-FR/La-playlist-de-Suzane.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Cnmd7B81h2c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Entre icône pop et super héroïne, Suzane a su rapidement s’imposer sur la scène française et marquer les esprits. Pendant féminin d’un Stromae, elle incarne elle aussi cette nouvelle frange de la chanson réaliste, une version 2.0 en quelques sortes, aux textes puissants et bien ancrés dans son époque. Suzane nous a conté son quotidien, celui des autres, des histoires aussi intimes qu’universelles, engagées, dans un spleen dissimulé derrière des productions électro rythmées et jouissives. Suzane poursuit son ascension, avec toujours plus d’énergie et un style qui s’affirme. Révélation scène aux victoires de la musique avant Covid, l’occasion lui est enfin donnée de retrouver le public avec un tout nouveau show.', '22/02/2023 à 21h30'),
(8, 1, 'HILIGHT TRIBE', '25€ à 30€', 7, 0, 'https://cdns-images.dzcdn.net/images/artist/905467c86d4c557f8ef0118be6781d23/500x500.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0lBjcaMokvo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Après des concerts mémorables et souvent complets, Hilight Tribe nous revient dans une formule nouvelle pour 2023.\r\nHilight Tribe et Side Projects est un concept nomade, où les musiciens jouent les maîtres de cérémonie, vous emportant dans un voyage hors des frontières de l’espace et du temps.\r\nDurant cette soirée, vous serez invités à un voyage surnaturel à travers les sons de nos ancêtres, perdurant ainsi l’énergie transcendantale de la Tribe.', '20/01/2023 à 20h30'),
(9, 1, 'FINNTROLL', '20€ à 25€', 4, 0, 'https://www.metalzone.fr/wp-content/uploads/2019/12/finntroll.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mkVwA__Fk9g\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Visionnaire d’un folk metal cinématographique, le groupe Finntroll s’est illustré dans des domaines hantés, parfois mélancoliques et bien souvent épiques, même si, ne le renions pas, la tribu n’était jamais opposée à un rigodon embrasé pour concours de buveurs de bières. Finntroll c’est ça, la quintessence du folk metal dans toute sa splendeur avec ce qu’il faut de rage, de joie ou de nostalgie.', '26/01/2023 à 18h30'),
(10, 1, 'IZÏA', '30€ à 37€', 8, 0, 'https://www.la-belle-electrique.com/media/images/events/_960x632_crop_center-center_none/Site_Izia.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7MudfCf1rAU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'On pensait la connaître par cœur, et voilà qu’elle arrive à nous surprendre. Izïa signe son grand retour cette année avec son cinquième album attendu cet été, un retour tout aussi réjouissant pour son public que salvateur pour elle. À l’écoute de son premier extrait « Mon cœur », on comprend que les doutes et les limites n’ont pas leur place dans ce nouveau chapitre de sa carrière. L’artiste assume avec talent son goût pour la pop, pas incompatible avec les guitares et les beats nerveux, ni avec la célébration de sa force et l’envie de se battre.', '05/02/2023 à 19h00'),
(11, 3, 'Isha', '18€ à 20€', 2, 0, 'https://yt3.ggpht.com/tPEOqrEEbLFjZ2jW58JE07Gq8qhHhm87PjySrEh-ffMspvhfaGS_T4-pF0BQlhi0PTkLaDgcIA=s900-c-k-c0x00ffffff-no-rj', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/y-A_8_Wc998\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'ISHA, l’un des rappeurs les plus influents de la scène belge, revient en force en 2022 avec un premier album et une grande tournée en France, en Belgique et en Suisse.\r\n\r\nAprès le succès de son triptyque La Vie Augmente et de l’EP au titre équivoque FAITES PAS CHIER J’PREPARE UN ALBUM, il nous offre dans Labrador Bleu une immersion dans un chemin de vie marqué par la violence, l’amour et la rédemption, entre ombre et lumière. Un parcours qui n’est pas nécessairement le sien mais qui est le parcours difficile des gens qui lui ressemblent, précise-t-il.', '05/03/2023 à 19h30'),
(12, 3, 'Nadia McAnuff & The Ligerians', '9€ à 12€ ', 8, 0, 'https://penichecancale.com/wp-content/uploads/2022/09/Nadia-McAnuff-The-Ligerians-%C2%A9-Nkosi.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Jtz3OYcfkAM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Nadia McAnuff est une chanteuse et auteure jamaïcaine. Née en Floride, elle est néanmoins élevée dans un environnement musical car elle est la fille du célèbre chanteur de roots reggae, Winston « Electric Dread » McAnuff.\r\nLes influences de Nadia sont diverses. Des racines, Bob Marley et Peter Tosh, aux phrasés jazz de Nina Simone…\r\nElle collabore depuis quelques années avec divers producteurs, dont le grand Linval Thompson avec qui elle a sorti plusieurs singles.', '12/03/2023 à 21h00'),
(13, 3, 'Hemlock Daze', '6€ à 8€ ', 1, 0, 'https://f4.bcbits.com/img/0028488793_10.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Y2KFESy3t7c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Au croisement du garage rageux, de l’indie Brit dégling’ et du punk old school quand même, le quatuor Parisien (Saint-Ouen en vrai) viendra nous présenter son très cool EP « Elastic Bandini » sorti en début d’année, accompagné d’une poignée d’autres gourmandises. L’énergie semble excellente et la direction judicieuse.\r\nPour ceux qui montreraient une certaine forme d’enthousiasme pour The Clash, Blur, The Jam…', '18/03/2023 à 20h30'),
(14, 3, 'Francis Of Delirium', '7€ à 9€', 8, 0, 'https://i0.wp.com/varioussmallflames.co.uk/wp-content/uploads/2020/01/francis-of-delirium-scaled.jpg?fit=2560%2C1707&ssl=1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5AJ0u5RAtE4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Un mélange fascinant de grunge des années 90 et de Gen-Z DIY, le duo luxembourgeois Francis of Delirium a signé avec Dalliance Recordings suite au succès du premier single « Quit Fucking Around ». Mené par Jana Bahrich, 19 ans, le duo complété par Chris Hewett, 30 ans son aîné, crée des chansons qui communiquent la passion intense de Jana de se connecter intimement avec les gens.\r\nAprès leur premier EP “All Change”, le groupe a sorti son deuxième EP “Wading” le 9 avril. Le single “Let It All Go” qui se démarque a obtenu le soutien du groupe, notamment par Pitchfork, NPR, Stereogum, The Fader, Line of Best Fit, Paste Magazine, Consequence of Sound, DIY Magazine, Clash Magazine, BBC 1 et 6 Radio, et bien d’autres encore.', '27/03/2023 à 18h30'),
(15, 3, 'On Stage', 'Gratuit ', 8, 0, 'https://lechabada.com/wp-content/uploads/2022/07/lechabada-onstage-visuel-10x15-2-1000x600.png', '', '« On Stage » est le rendez-vous dédié aux nouveaux groupes de la scène locale. L’occasion pour eux de jouer dans des conditions professionnelles et de bénéficier de 2 journées d’accompagnement personnalisé. L’occasion pour le public de découvrir les têtes d’affiche de demain (Pony Pony Run Run, Thylacine et d’autres sont passés par là !).', '12/04/2023 à 19h30');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `idgenre` int(11) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `actif` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`idgenre`, `genre`, `actif`) VALUES
(1, 'Rock', 0),
(2, 'Rap', 0),
(4, 'Métal', 0),
(5, 'Classique', 0),
(6, 'Jazz', 0),
(7, 'Electro', 0),
(8, 'Variété française', 0);

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `idsalle` int(20) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `nbr_places` varchar(20) NOT NULL,
  `actif` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`idsalle`, `nom`, `adresse`, `nbr_places`, `actif`) VALUES
(1, 'Chabada', ' 56 Boulevard du Doyenné, 49100 Angers', '870', 0),
(2, 'Aréna Loire', '131 Rue Ferdinand Vest, 49800 Trélazé', '6 500', 0),
(3, 'Joker\'s Pub', '32 Rue Saint-Laud, 49100 Angers', '130 ', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`idconcerts`),
  ADD KEY `salles` (`idsalle`),
  ADD KEY `genres` (`idgenre`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`idgenre`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`idsalle`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `idconcerts` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `idgenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `idsalle` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `concerts`
--
ALTER TABLE `concerts`
  ADD CONSTRAINT `genres` FOREIGN KEY (`idgenre`) REFERENCES `genres` (`idgenre`),
  ADD CONSTRAINT `salles` FOREIGN KEY (`idsalle`) REFERENCES `salles` (`idsalle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
