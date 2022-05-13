-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 10 mai 2022 à 10:34
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phasmophobia`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `mel` varchar(150) NOT NULL,
  `psw` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `pseudo`, `mel`, `psw`) VALUES
(1, 'dieu', 'admin@adm.fr', '597f5441e7d174b607873874ed54b974674986ad543e7458e28a038671c9f64c');

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

DROP TABLE IF EXISTS `carte`;
CREATE TABLE IF NOT EXISTS `carte` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(70) NOT NULL,
  `image` text NOT NULL,
  `image2` text NOT NULL,
  `image3` text NOT NULL,
  `nbr` int NOT NULL,
  `nom1` varchar(50) NOT NULL,
  `nom2` varchar(50) NOT NULL,
  `nom3` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `carte`
--

INSERT INTO `carte` (`id`, `nom`, `image`, `image2`, `image3`, `nbr`, `nom1`, `nom2`, `nom3`) VALUES
(1, 'Bleasdale Farmhouse', '\"../image/carte/Bleasdale Farmhouse/Bleasdale Farmhouse1.png\"', '\"../image/carte/Bleasdale Farmhouse/Bleasdale Farmhouse2.png\"', '\"../image/carte/Bleasdale Farmhouse/Bleasdale Farmhouse3.png\"', 3, 'Rez-de-chaussée', 'Deuxième étage', 'Grenier'),
(2, 'Edgefield Street house', '\"../image/carte/Edgefield Street house/Edgefield_Street_house1.png\"', '\"../image/carte/Edgefield Street house/Edgefield_Street_house2.png\"', '\"../image/carte/Edgefield Street house/Edgefield_Street_house3.png\"', 3, 'Rez-de-chaussée', 'Deuxième étage', 'Sous-sol'),
(3, 'Grafton Farmhouse', '\"../image/carte/Grafton Farmhouse/Grafton_Farmhouse1.png\"', '\"../image/carte/Grafton Farmhouse/Grafton_Farmhouse2.png\"', '', 2, 'Rez-de-chaussée', 'Deuxième étage', ''),
(4, 'Ridgeview Road House', '\"../image/carte/Ridgeview Road House/Ridgeview_Road_House1.png\"', '\"../image/carte/Ridgeview Road House/Ridgeview_Road_House2.png\"', '\"../image/carte/Ridgeview Road House/Ridgeview_Road_House3.png\"', 3, 'Rez-de-chaussée', 'Deuxième étage', 'Sous-sol'),
(5, 'Tanglewood Street House', '\"../image/carte/Tanglewood Street House/Tanglewood_Street_House1.png\"', '\"../image/carte/Tanglewood Street House/Tanglewood_Street_House2.png\"', '', 2, 'Rez-de-chaussée', 'Sous-sol', ''),
(6, 'Willow Street House', '\"../image/carte/Willow Street House/Willow_Street_House1.png\"', '\"../image/carte/Willow Street House/Willow_Street_House2.png\"', '', 2, 'Rez-de-chaussée', 'Sous-sol', ''),
(7, 'Brownstone High School', '\"../image/carte/Brownstone High School/Brownstone_High_School1.png\"', '\"../image/carte/Brownstone High School/Brownstone_High_School2.png\"', '', 2, 'Rez-de-chaussée', 'Deuxième étage', ''),
(8, 'Maple Lodge Campsite', '\"../image/carte/Maple Lodge Campsite/Maple_Lodge_Campsite1.png\"', '\"../image/carte/Maple Lodge Campsite/Maple_Lodge_Campsite2.png\"', '\"../image/carte/Maple Lodge Campsite/Maple_Lodge_Campsite3.png\"', 3, 'Extérieur', 'Rez-de-chaussée', '1er étage'),
(9, 'Prison', '\"../image/carte/Prison/Prison1.png\"', '\"../image/carte/Prison/Prison2.png\"', '', 2, 'Rez-de-chaussée', 'Deuxième étage', ''),
(10, 'Asylum', '\"../image/carte/Asylum/Asylum1.png\"', '\"../image/carte/Asylum/Asylum2.png\"', '', 2, 'Rez-de-chaussée', 'Sous-sol', '');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(75) NOT NULL,
  `commentaire` text NOT NULL,
  `idpage` int NOT NULL,
  `id_art` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `pseudo`, `commentaire`, `idpage`, `id_art`) VALUES
(3, 'test', 'bonjour je suis toujours la pour faire des teste et j\'en deviens fous ', 2, 1),
(4, 'test', 'ouiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 3, 1),
(5, 'test', 'nonnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `entites`
--

DROP TABLE IF EXISTS `entites`;
CREATE TABLE IF NOT EXISTS `entites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(75) NOT NULL,
  `info` text NOT NULL,
  `Forces` text NOT NULL,
  `Faiblesse` text NOT NULL,
  `Preuve` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `entites`
--

INSERT INTO `entites` (`id`, `nom`, `info`, `Forces`, `Faiblesse`, `Preuve`) VALUES
(1, 'Banshee', 'Dès l\'entrée sur le lieu hanté, la Banshee choisit une cible qu\'elle poursuivra toujours lors des chasses. Au décès de cette dernière, la Banshee choisira une nouvelle cible et ça jusqu’à que tout les joueurs soit morts. ', 'La Banshee affaiblira sa cible avant d\'attaquer. ', 'On peut les entendre crier grâce au microphone parabolique.', '<li>Orbes fantomatiques</li>\r\n<li>Empreintes</li>\r\n<li>Projecteur de DOTS</li>'),
(2, 'Myling ', 'Le Myling est une entité très active qui émettra davantage de sons de nature paranormale. On la dit plus encline à parler dans un Microphone parabolique que les autres entités.<br>\r\nLes pas du Myling en chasse s\'entendent à une distance de 10 mètres au lieu de 20 mètres. ', 'Le Myling devient silencieux pendant la chasse.', 'Le Myling émet très souvent des sons d\'origine paranormale. ', '<li>EMF niveau 5</li>\r\n<li>Empreintes</li>\r\n<li>Ecriture fantomatique</li>'),
(3, 'Cauchemar', 'Le Cauchemar a tendance à vouloir éteindre les lumières et le disjoncteur. Il est donc facile de se méprendre et de le confondre avec un Jinn qui a également tendance à s\'amuser avec le Disjoncteur, ou avec un Poltergeist dans les pièces où il est difficile d\'obtenir des Empreintes digitales.<br><br>\r\n\r\nAfin de minimiser les risques, il est recommandé de laisser les lumières allumées dans la Pièce hantée et les pièces voisines, incluant l’usage de Bougies si le Disjoncteur est dans un endroit difficile d’accès. Néanmoins, tel que mentionné précédemment, le Cauchemar a tendance à éteindre les lumières ou le Disjoncteur afin de faire tourner son environnement à son avantage.', 'Un Cauchemar aura une chance accrue d\'attaquer dans l\'obscurité. ', 'Allumer les lumières autour du Cauchemar réduira ses chances d\'attaquer. ', '<li>Spirit Box</li>\r\n<li>Orbes fantomatiques</li>\r\n<li>Ecriture fantomatique</li>'),
(4, 'Obake', 'L\'Obake est une entité qui est capable d\'alterner d\'apparence entre celles prévues pour les entités.\r\nElle peut également dissimuler temporairement l\'une de ses preuves, par exemple interagir avec une fenêtre ou un interrupteur sans laisser de trace EMF ou d\' empreinte.\r\nNéanmoins, lorsque l\'Obake crée une empreinte digitale, il y a une chance qu\'elle laisse une empreinte de main avec six doigts et visuellement plus marquée que la normale. <br><br>\r\n\r\nL\'Obake a 50% de chances de ne pas laisser de trace EMF après une interaction, 50% de chances de ne pas laisser d\'empreinte après avoir touché un objet pouvant en avoir, et son orbe apparaît moins fréquemment.\r\nLorsque l\'Obake laisse une empreinte, celle-ci a 33% de chances d\'être une empreinte digitale à 6 doigts. Cet élément est une preuve concrète que vous avez affaire à l\'Obake à coup sûr. Cette empreinte ne dure que 60 secondes au lieu de 120 secondes.', 'Lorsqu\'il interagit avec l\'environnement, l\'Obake laisse rarement de traces. ', 'Parfois, cette entité se transforme, laissant derrière elle des preuves uniques. ', '<li>EMF niveau 5</li>\r\n<li>Empreintes</li>\r\n<li>Orbes fantomatiques</li>'),
(5, 'Ombre', 'Si au moins deux joueurs se situent à moins de 3 mètres de l\'Entité, celle-ci ne fera pas d\'Apparitions, et n\'entrera pas en mode Chasse.<br><br>\r\nBien que l\'Ombre est décrite comme timide, ce n\'est pas forcément le cas. Il se peut qu\'une Ombre soit particulièrement active, surtout si la Pièce hantée est particulièrement grande (salles de classe, vestiaires, ensemble de cellules de la Prison,...). Dans ce cas, il sera également difficile de l\'empêcher de chasser.', 'Être timide signifie que le fantôme sera plus difficile à trouver. ', 'Le fantôme n\'entrera pas en mode chasse s\'il y a plusieurs personnes à proximité. ', '<li>EMF niveau 5</li>\r\n<li>Ecriture fantomatique</li>\r\n<li>Températures glaciales</li>'),
(6, 'Oni', 'A l\'inverse de l\'Ombre, l\'Oni sera plus actif quand il y a davantage de joueurs autour.\r\n<br><br>\r\nAvec un microphone parabolique ou des capteurs sonores, les objets projetés par les Oni renvoient une valeur plus élevée que la normale.', 'Les Oni sont plus actifs lorsque des personnes sont à proximité et sont connus pour déplacer des objets à très grande vitesse. ', 'Pas de Faiblesse', '<li>EMF niveau 5</li>\r\n<li>Projecteur de DOTS</li>\r\n<li>Températures glaciales</li>'),
(7, 'Onryo', 'L\'Onryo a une chance de déclencher instantanément une attaque lorsque la flamme d\'une bougie ou d\'un briquet est soufflée, ou qu\'une bougie s\'éteint naturellement. Cependant, il s\'agit d\'une entité timide, qui évite de se montrer ou de chasser quand on lui parle de trop.<br><br>\r\n\r\nLorsqu\'à proximité de l\'Onryo, la flamme d\'une bougie ou d\'un briquet est soufflée, ou qu\'une bougie s\'éteint naturellement, l\'Onryo a 33% de chances de déclencher une chasse instantanée. ', 'L\'extinction d\'une flamme peut pousser un Onryo à attaquer. ', 'Lorsqu\'elle est menacée, cette entité sera moins encline à chasser. ', '<li>Spirit Box</li>\r\n<li>Orbes fantomatiques</li>\r\n<li>Températures glaciales</li>'),
(8, 'Djinn', 'Le Djinn a tendance à toucher davantage aux objets électroniques, un Djinn qui n\'est pas timide pourrait accidentellement être confondu avec un Poltergeist.\r\n<br><br>\r\nEn chasse, si le disjoncteur est actif, le Djinn se déplacera à une vitesse deux fois plus élevée si le joueur le plus proche se situe à plus de 4 mètres de lui. Il reprendra sa vitesse normale dès qu\'il s\'aventure à proximité d\'un joueur durant sa chasse.', 'Un Djinn voyagera à une vitesse plus rapide si sa victime est loin. ', 'Couper le courant empêchera le Djinn d\'utiliser sa capacité. ', '<li>EMF niveau 5</li>\r\n<li>Empreintes</li>\r\n<li>Températures glaciales</li>'),
(9, 'Démon', 'Le Démon est une entité prévisible : il est facile à déterminer et sera plutôt actif.<br><br>\r\nLe Démon peut chasser très tôt. Répandre de l\'encens avec un Bâtons d\'encens dans sa pièce de prédilection ou encore y déposer un Crucifix sera utile pour l\'empêcher temporairement d\'initier une Chasse.', 'Les démons chassent plus souvent que les autres entités. ', 'Les démons craignent les crucifix et seront moins agressifs à proximité d\'un. ', '<li>Empreintes</li>\r\n<li>Ecriture fantomatique</li>\r\n<li>Températures glaciales</li>'),
(10, '', 'Les Poltergeist sont généralement très timides, mais dans de rares cas, pourraient être assez actifs avec les objets alentours, touchant et manipulant presque tout ce qu\'ils ont sous la main. Cela cause souvent une baisse de santé mentale plus élevée que prévue.<br><br>\r\nUn très gros pic d\'activité qui n\'est pas lié à un EMF5 ou à une apparition est souvent la preuve que vous avez affaire à un Poltergeist, surtout si vous avez déjà obtenu une réponse à la Spirit Box.', 'Un Poltergeist peut lancer d\'énormes quantités d\'objets à la fois. ', 'Un Poltergeist est presque inefficace dans une pièce vide.', '<li>Spirit Box</li>\r\n<li>Empreintes</li>\r\n<li>Ecriture fantomatique</li>'),
(11, 'Esprit', 'L\'Esprit est l\'entité la plus courante. Il est généralement très actif, facile à déterminer et peu menaçant.<br>\r\nUtiliser de l\'encens à moins de 6 mètres de l\'Esprit hors chasse l\'empêche de chasser pendant 180 secondes (contre 90 sur une autre entité).<br>\r\nL\'Esprit est connu pour faire davantage d\'interactions en début de partie, facilitant l\'apparition de traces d\'EMF niveau 5.', 'pas de Forces', 'L\'utilisation de bâton d\'encens sur un Esprit l\'empêchera d\'attaquer pendant une longue période. ', '<li>EMF niveau 5</li>\r\n<li>Spirit Box</li>\r\n<li>Ecriture fantomatique</li>'),
(12, 'Raiju', 'Le Raiju peut attaquer plus tôt que la plupart des autres entités.\r\nPlus le nombre d\'appareils électroniques allumés autour de lui est important, plus il peut attaquer à une santé mentale moyenne haute.<br>\r\nLe Raiju en chasse fait dysfonctionner les appareils électroniques à une portée de 20 mètres au même étage que lui, au lieu de 10 mètres pour les autres entités. Chaque appareil électronique qui dysfonctionne augmente un peu sa vitesse de déplacement.', 'Le Raiju siphonne l\'énergie électrique des instruments à proximité, le rendant plus rapide. ', 'Le Raiju perturbe constamment les instruments électroniques, le rendant plus facile à traquer lorsqu\'il attaque. ', '<li>EMF niveau 5</li>\r\n<li>Orbes fantomatiques</li>\r\n<li>Projecteur de DOTS</li>'),
(13, 'Revenant', 'Le Revenant est l\'une des entités les plus dangereuses que vous pourriez croiser. Lorsqu\'il chasse, il est deux fois plus lent que la vitesse normale tant qu\'il ne voit aucun joueur. Cependant, dès qu\'il repère un joueur, il sera deux fois plus rapide que la vitesse normale. Au cours d\'une chasse, le Revenant attaquera le joueur le plus proche visible. ', 'Un Revenant voyagera à une vitesse beaucoup plus rapide lorsqu\'il chassera une victime. ', 'Se cacher du Revenant le fera bouger très lentement. ', '<li>Orbes fantomatiques</li>\r\n<li>Ecriture fantomatique</li>\r\n<li>Températures glaciales</li>'),
(14, 'Fantôme', 'Prendre une photo d\'un Fantôme le fait temporairement disparaître visuellement. Cependant, il est toujours présent, et cela ne l\'empêchera ni d\'initier une chasse, ni de tuer durant sa chasse.<br>\r\nLe Fantôme apparaît visuellement moins souvent durant la chasse. Il est donc plus difficile à prendre en photo que les autres durant cette période.<br>\r\nLors de la photo, le Fantôme ne sera pas visible sur celle-ci. Cela peut vous permettre de rapidement déterminer que vous avez affaire à cette entité.', 'Regarder un Fantôme diminuera considérablement votre santé mentale. ', 'Prendre une photo du Fantôme le fera temporairement disparaître. ', '<li>Spirit Box</li>\r\n<li>Empreintes</li>\r\n<li>Projecteur de DOTS</li>'),
(15, 'Spectre', 'Contrairement à ce que des croyances collectives pensent, les Spectres laissent bien des marques dans le sel, cependant, les bruits de pas qu\'il émet lorsqu\'il tente de s\'en débarrasser ne laisseront pas d\'empreintes si l\'on pointe le sol avec une lampe à UV ou un bâton d\'UV, contrairement aux autres entités.<br>\r\nEncore contrairement à ce que des croyances collectives pensent, les Spectres, comme les autres entités, ne peuvent pas voir à travers les portes. Ils ne peuvent pas non plus traverser les murs.<br>\r\nLe Spectre agit principalement comme les autres fantômes, mais la possibilité pour lui de se téléporter à un joueur peut lui permettre de sortir du champ d\'action des crucifix, et le rend particulièrement dangereux à santé mentale basse.', 'Les Spectres ne touchent presque jamais le sol, ce qui signifie qu\'ils ne peuvent pas être suivis par des pas. ', 'Les spectres ont une réaction toxique au sel.', '<li>EMF niveau 5</li>\r\n<li>Spirit Box</li>\r\n<li>Projecteur de DOTS</li>'),
(16, 'Goryo', 'Le Goryo est une entité casanière, qui préfère rester où il se trouve. Ses déplacements sont rares, et généralement pas très loin de sa pièce préférée. On ne peut l\'apercevoir sur les projecteurs de DOTS que s\'il n\'y a personne dans sa pièce. ', 'Un Goryo ne se montrera habituellement qu\'à travers une caméra lorsqu\'il n\'y a personne à proximité. ', 'Ils ne se déplacent jamais très loin de leur pièce favorite. ', '<li>EMF niveau 5</li>\r\n<li>Empreintes</li>\r\n<li>Projecteur de DOTS</li>'),
(17, 'Yokai', 'Durant une chasse, le Yokai n\'entend les voix et les appareils électroniques en main qu\'à une distance très proche de 2 mètres, soit 4 fois moins élevée que les autres entités.<br>\r\nSi vous êtes capables de parler ou d\'utiliser de l\'équipement électronique dysfonctionnant sans attirer l\'entité, il est fort probable qu\'il s\'agisse d\'un Yokai.<br>\r\nEvitez d\'utiliser la Spirit Box une fois que vous savez que vous avez affaire à un Yokai.', 'Parler près d\'un Yokai risque de l\'énerver et augmentera ses chances de chasser. ', 'Pendant une chasse, le Yokai n\'entendra que les voix proches de lui. ', '<li>Spirit Box</li>\r\n<li>Orbes fantomatiques</li>\r\n<li>Projecteur de DOTS</li>'),
(18, 'Yurei', 'Gardez un œil sur votre santé mentale et utilisez des pilules au besoin, puisque les joueurs peuvent rapidement tomber à des niveaux de santé mentale très bas sans même s’en rendre compte, rendant le Yurei plus agressif et les chasses plus fréquentes et précoces.<br>\r\nGardez vos distances avec le Yurei lorsqu\'il se manifeste si vous ne prenez pas de photos de lui.<br>\r\nLe Yurei apprécie beaucoup les Bâtons d\'encens et restera à vadrouiller dans sa pièce si un bâton d\'encens est brûlé à proximité.', 'Les Yurei sont connus pour avoir un effet plus fort sur la santé mentale des gens. ', 'Le fait d\'utiliser un bâton d\'encens dans la salle du Yurei l\'empêchera de se promener longtemps dans les lieux. ', '<li>Orbes fantomatiques</li>\r\n<li>Projecteur de DOTS</li>\r\n<li>Températures glaciales</li>'),
(19, 'Hantu', 'Le Hantu est lent dans les endroits chauds, il peut être une bonne idée d\'allumer le Disjoncteur afin de le ralentir en chasse.<br>\r\nLe Hantu est l\'entité qui se déplace le plus parmi toutes. Il recherche les endroits chauds car il les adore, mais comme il fait chuter leur température, il change souvent de pièce.<br>\r\nBien qu\'il se déplace beaucoup, on n\'observe pas de changement brutal de pièce favorite pour cette entité, et lorsque ça arrive, elle changera de pièce favorite pour une pièce voisine.<br>\r\nGardez la trace de la pièce favorite du Hantu en traquant son Orbe. Contrairement au Hantu, son orbe reste dans sa pièce favorite.', 'Les faibles températures permettent au Hantu de se déplacer plus rapidement. ', 'Les Hantu sont plus lents dans les zones plus chaudes. ', '<li>Empreintes</li>\r\n<li>Orbes fantomatiques</li>\r\n<li>Températures glaciales</li>'),
(20, 'Jumeaux', 'Le Jumeau secondaire peut :\r\n<br><br>\r\nproduire une trace EMF, y compris un EMF de niveau 5<br>\r\nchasser à la place du Jumeau majeur\r\n<br><br>\r\nLe Jumeau secondaire ne peut pas:\r\n<br><br>\r\nêtre tracé avec du Sel ou des capteurs de mouvement<br>\r\nrépondre à la Spirit Box<br>\r\nfaire baisser la température de sa pièce <br>effectuer une Apparition<br>\r\nparler dans un Microphone parabolique', 'Chaque jumeau peut s\'énerver et lancer une attaque sur sa proie. ', 'Les jumeaux interagiront souvent avec l\'environnement en même temps. ', '<li>EMF niveau 5</li>\r\n<li>Spirit Box</li>\r\n<li>Températures glaciales</li>');

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

DROP TABLE IF EXISTS `inscrit`;
CREATE TABLE IF NOT EXISTS `inscrit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `mel` varchar(150) NOT NULL,
  `psw` text NOT NULL,
  `ip` varchar(20) NOT NULL,
  `date_inscription` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `inscrit`
--

INSERT INTO `inscrit` (`id`, `pseudo`, `mel`, `psw`, `ip`, `date_inscription`) VALUES
(7, 'test3', 'test3@test.fr', '597f5441e7d174b607873874ed54b974674986ad543e7458e28a038671c9f64c', '::1', '0000-00-00'),
(3, 'test2', 'test2@test.fr', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '::1', '0000-00-00'),
(6, 'test', 'test@test.fr', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', '::1', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `objet_modi`
--

DROP TABLE IF EXISTS `objet_modi`;
CREATE TABLE IF NOT EXISTS `objet_modi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(75) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `objet_modi`
--

INSERT INTO `objet_modi` (`id`, `nom`, `text`, `image`) VALUES
(1, 'Cartes de tarot', '\r\n<li>Le Soleil (5 % de chances d\'être tirée)</li>\r\n        Restaure la santé mentale à 100 %.\r\n<li>La Lune (5 % de chances d\'être tirée)</li>\r\n        La santé mentale tombe immédiatement à 0%.\r\n<li>La tour (17 % de chances d\'être tirée)</li>\r\n        Cause une interaction.\r\n<li>La roue de la fortune (17 % de chances d\'être tirée)</li>\r\n        Augmente la santé mentale de 25 %, ou la diminue d\'autant, selon la couleur de la flamme.\r\n<li>Le Diable (5 % de chances d\'être tirée)</li>\r\n        Déclenche un événement avec le fantôme.\r\n<li>La Grande Prêtresse (2 % de chances d\'être tirée)</li>\r\n        Un coéquipier choisi aléatoirement est ressuscité. \r\n<li>Le pendu (1 % de chances d\'être tirée)</li>\r\n        Le joueur est tué immédiatement.\r\n<li>La Mort (17 % de chances d\'être tirée)</li>\r\n        Cause une chasse.\r\n<li>L\'Hermite (10 % de chances d\'être tirée)</li>\r\n        Empêche le fantôme de se déplacer hors de sa pièce pendant un court moment.\r\n<li>Le Fou (17 % de chances d\'être tirée, 100 % lors d\'une chasse)</li>\r\n        Apparaît d\'abord comme une autre carte, avant de se transformer juste avant de brûler. Cette carte n\'a aucun effet sur le joueur.\r\n', ''),
(2, 'Poupée vaudou torturée', 'Présente de base en tant que simple objet, les poupées vaudou ont été améliorées. Désormais, lorsque vous en croisez une et que vous interagissez avec, l\'une des 10 épingles va s\'enfoncer dans son corps. Vous perdrez 10 % de santé mentale, mais en contrepartie, une interaction avec le fantôme aura lieu. Si c\'est l\'épingle du cœur qui s\'enfonce, ou avez moins de 10 % de santé mentale lors d\'une action, une chasse sera lancée.', ''),
(3, 'Boîte à musique', 'L\'objet peut s\'activer en le tenant et en appuyant sur votre touche d\'action. Une fois la musique lancée, le fantôme se mettra à pousser la chansonnette, vous donnant un indice sur son emplacement. Si le fantôme est à moins de cinq mètres de la boîte à musique, il apparaît et se met à marcher dans sa direction. S\'il la touche ou marche pendant plus de cinq secondes, ou si le joueur laisse tomber la boîte pendant que la mélodie est jouée alors une chasse commence. \r\n<br><br>\r\nLa boîte à musique peut être laissée au sol ou tenue. Cet objet ne fait pas perdre de santé mentale.', ''),
(4, 'Miroir hanté', 'Le Miroir hanté permet, en le regardant, de voir la pièce du fantôme. Seulement, il faut se montrer rapide et précis, étant donné que chaque seconde d\'utilisation fait perdre 7,5 % de santé mentale. Arrivé à 0, il se brise et une chasse commence.', ''),
(5, 'Cercle d\'invocation', 'L\'objet le plus délicat à utiliser. Il faut allumer les cinq bougies rouges avec un briquet pour faire apparaître, à l\'intérieur, le fantôme. Celui-ci n\'y restera que cinq secondes, avant de s\'échapper et d\'entamer une chasse contre vous. \r\n\r\nCet objet sera donc utile pour valider des objectifs précis, comme photographier un fantôme ou déclencher un événement paranormal. Le cercle d\'invocation ne peut être utilisé qu\'une seule et unique fois par partie.', ''),
(6, 'Planche Ouija', 'La planche Ouija est donc introduite comme possession maudite. Aucun changement majeur n\'est à signaler, si ce n\'est qu\'il faut dire au revoir après avoir posé sa dernière question, pour ne pas être chassé.', '');

-- --------------------------------------------------------

--
-- Structure de la table `objet_normal`
--

DROP TABLE IF EXISTS `objet_normal`;
CREATE TABLE IF NOT EXISTS `objet_normal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `objet_normal`
--

INSERT INTO `objet_normal` (`id`, `nom`, `image`, `text`) VALUES
(1, 'Appareil photo', '../image/objet_normal/appareil_photo.png', 'L\'appareil permet de prendre des photos afin de gagner plus d\'argent a chaque fin de partie, vous pouvez prendre 5 photo pour chaque appareille.\r\nVous pouvez prendre en photo :<strong> les entités, les empreinte digital, l\'eau sale, les objets qui on bouger et le livre qui a était utilisé</strong>.'),
(2, 'Lampe de poche', '../image/objet_normal/lampe_poche.png', 'La lampe de poche permet de vous éclairez dans les milieux sombre, il faut savoir que la lampe de poche éclaire beaucoup moins que la lampe de poche puissante, mais dans les débuts elle sera plus utiles que de rester dans le noir complet. à savoir la lampe de poche clignote pendant une chasse et n’oublier pas que l\'entité peut voire votre lampe donc éteignais la quand vous êtes cacher.'),
(3, 'Lampe de poche puissante', '', 'Plus chère, mais également plus puissante que sa petite sœur la lampe torche, elle a un faisceau lumineux plus large et plus profond. Si vous possédez suffisamment d\'argent, je vous conseille de l\'acheter d\'directement, car elle est largement plus efficace.\r\n'),
(4, 'Lecteur EMF ', '', 'Le lecteur de champ électromagnétique est un appareil portable utilisé pour détecter les fluctuations des champs électromagnétiques laissés par l\'activité paranormale. On peut voir cette activité en fonction du nombre de LED qui s\'allume. Attention, si vous avez 5 LED allumer, vous avez une preuve que vous pouvez marquer sur le livre. À savoir que si vous avez une activité sur l\'EMF cela ne veut pas dire que vous aurez une interaction qui atteindra les 5 LED.'),
(5, 'Livre d\'écriture fantomatique', '', 'Pour utiliser le livre, il suffit de le placer dans la salle de l\'entité, et d\'attendre. Éventuellement, vous pouvez essayer de la solliciter en demandant un signe et vous pouvez aussi poser deux livres afin d\'augmenter les chances d\'une écriture. S\'il y a une écriture, vous aurez une preuve en plus et n\'oubliez pas de la prendre en photo afin d\'avoir plus d\'argent.'),
(6, 'Lumière UV ', '', 'La lampe UV à un éclairage assez faible mais permet de détecter des empreintes sur les portes, fenêtres ou interrupteur, ce qui ajouterai une preuve à votre journal. Vous pouvez aussi la poser parterre afin d\'éclairer votre chemin mais aussi de voir les empreintes de pied de l\'entité, attention les empreintes de pied ne sont pas compté comme une preuve.'),
(7, 'Bougie ', '', 'Les bougies émettent une petite lueur indépendante de l\'électricité. Elles peuvent être trouvées dans n\'importe quel lieu d\'enquête ou bien être achetées avant de lancer la mission. La bougie vous permet de réduire la perte de santé mentale, mais aussi de vous éclairer. Toutefois, l\'entité peut souffler la bougie et en fonction de l\'entité cela peut déclencher une chasse.'),
(8, 'Briquet', '', 'Il doit être dans l\'inventaire afin d\'allumer les bâtons d\'encens / bougies. En appuyant sur la touche d\'interaction en tenant soit des bâtons d\'encens ou une bougie, ceci allumera l\'objet. Alternativement, il est aussi possible de faire l\'inverse et d\'allumer le briquet et s\'en servir pour allumer des objets au sol ou même dans la main d\'un autre joueur en interagissant avec.'),
(9, 'Bâton lumineux ', '', 'Les bâtons lumineux, tout comme les bougies, sont une source de lumière indépendante de l\'électricité des lieux. Toutefois, elles ne peuvent pas s\'éteindre. Le bâton lumineux peut servir aussi pour trouver des empreintes, mais il est surtout utilisé pour pouvoir s\'orienter ou encore éclairait une zone.'),
(10, 'Bâtons d\'encens', '', 'Les bâtons d\'encens permettent de dissuader les entités de chasser ou d\'attaquer durant un court laps de temps. Ils faut obligatoirement un briquet pour l\'allumer, mais aussi, il faut l\'allumer dans la salle de l\'entité sinon cela ne marchera pas.'),
(11, 'Microphone parabolique ', '', 'Un microphone parabolique peut détecter le son à travers les murs et à une grande distance. Il s\'agit d\'une version portable du capteur sonore. Cela peut vous servir afin de trouver plus rapidement la salle de l\'entité. Il est possible qu\'un son de niveau 4 est un son lié à une activité paranormale.\r\n'),
(12, 'Caméra frontal', '', 'La Caméra montée sur la tête fonctionne comme une caméra vidéo. Elle peut être reposée sur l\'un des socles de caméra montée sur la tête en appuyant sur F. Cette caméra peut vous permettre de suivre un joueur grâce au moniteur dans le camion, mais pendant une chasse la caméra auras des grésillements et ne fonctionnera pas correctement.'),
(13, 'Caméra vidéo ', '', 'Cet caméra a été mis au point pour prendre des vidéos du paranormal. La caméra a un flux en direct vers votre base d\'opérations. Grâce a cela vous pourrez suivre se qu\'il se passe dans une pièce mais elle vous permettra surtout de voir des orbes qui est une preuve. Elle peut vous servir aussi a regarder si il y a une DOT en toute sécurité.<br>Regarder bien les caméras elle peuvent vous montrés des intéraction qui sont vraiment horrifique. '),
(14, 'Capteur de lumière infrarouge', '', 'Un capteur de mouvement infrarouge qui détecte les mouvements humains et paranormaux, lorsqu\'il est activé, il illumine la zone environnante avec une lumière vive. Cette objet est souvent utilisé pour les mission secondaire qui sont sur le tableau.'),
(15, 'Capteur de mouvement ', '', 'Le capteur de mouvement est un capteur capable de détecter les changements les plus subtils de l\'atmosphère qui l\'entoure. Le capteur est lié en direct à la carte dans votre camion. Ce capteur permet de faire les mission secondaire du tableaux. le capteur peut aussi vous aidez a trouvez l\'entité si elle change de salle.'),
(16, 'Capteur sonore ', '', 'Un capteur de son est un capteur capable d\'écouter les sons et les vibrations les plus silencieux de l\'air. Cela est affiché sous forme de données dans votre camion. Elle peut être très utile sur des grandes cartes afin de trouver l\'entité plus rapidement.'),
(17, 'Crucifix', '', 'Un crucifix est utilisé pour empêcher les fantômes d\'entrer dans leur forme physique pour vous attaquer. Il est conseillé de les placer près du fantôme. Vous pouvez aussi le garder dans votre main. Si une attaque aurai dû ce produit, le crucifix va fondre, il sera donc inutilisable, mais il vous aura protégé d\'une chasse, attention une autres chasse peut suivre peu après l\'utilisation du crucifix.'),
(18, 'Pilules calmantes ', '', 'Un flacon de pilule correspond à une utilisation. Cela restaure la santé mentale de son utilisateur. En Amateur 50%, intermédiaire 40%, Professionnel 30% et Cauchemar 25%.'),
(19, 'Planche Ouija ', '', 'La planche Ouija est un objet qui a 33% de chances d\'apparaitre sur le lieu hanté. Elle sert à communiquer avec l\'entité. La planche Ouija sert à poser des questions au fantôme mais ne constitue pas une preuve. Attention a la fin de l\'utilisation dite au-revoir sinon une chasse sera d’éclanches.'),
(20, 'Projecteur de DOTS', '', 'Un projecteur laser en mesure de détecter les mouvements d\'origine paranormale. Il permet de mettre en évidence les entités à sa portée. Le projecteur DOT peut être posé au sol ou sur un mur. Si vous voyez une personne passez de dans, ou un grand mouvement flou, c\'est qu\'il y a une DOT. À savoir, vous pouvez mettre une caméra en face afin d\'être en sécurité dans le camion et de surveiller la DOT.'),
(21, 'Sel ', '', 'Le sel est toxique pour toutes sortes de fantômes et révèlera leurs pas sous une lumière UV. Il permet de détecter des traces de pas laissées par les entités. Elle peut être utilisé afin de réalisé une mission secondaire ou pour affaiblir l\'entité. '),
(22, 'Spirit Box ', '', 'Cet enregistreur de phénomène vocal électronique ou Spirit Box peut capturer des fréquences radio paranormales qui peuvent permettre la communication avec des esprits. Quand il est activé, vous pouvez poser des questions, si les questions sont bonnes, mais que vous n\'avez pas de réponse une petite croix noire vas apparaître dessus cependant si l\'entité répond le petit fantôme sur la machine vas apparaître en noir et vous aurez donc une preuve.'),
(23, 'Thermomètre', '', 'Le thermomètre permet de constater les changements de température. Certains fantômes ont pour signe distinctif une baisse drastique de la température jusqu\'au froid glacial, ce qui permet d\'ajouter une preuve au journal. Le thermomètre est efficace pour trouver la salle de l\'entité, car la température baisse dans la zone de l\'entité. À savoir, on peut considérer qu\'il y a une température glacial dès qu\'il y a de la buée qui sort de la bouche du personnage, même s\'il y a une température en dessous de 0 tant que la buée n\'est pas là il n\'y a pas de température glacial.\r\n'),
(24, 'Trépied', '', 'Le trépied permet de poser une caméra à mi-hauteur sans avoir besoin de surface pré-existante.<br><br>\r\n\r\nAttention, si vous prenez un trépied en main, le fait de changer d\'outils le fera tomber automatiquement. ');

-- --------------------------------------------------------

--
-- Structure de la table `preuve`
--

DROP TABLE IF EXISTS `preuve`;
CREATE TABLE IF NOT EXISTS `preuve` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(70) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `preuve`
--

INSERT INTO `preuve` (`id`, `nom`, `text`, `image`) VALUES
(1, 'Ecriture fantomatique ', 'La preuve \"Écriture fantomatique\" est le fait que l\'entité puisse interagir avec le <strong>livre</strong>.\r\n\r\nPour augmenter vos chances d\'obtenir cette preuve (si l\'entité en est capable), placez le livre dans la pièce de résidence de l\'entité et/ou augmentez l\'activité de l\'entité, par de l\'encens, en disant son nom (jusqu\'à une fois toutes les 10 secondes), ou encore en disant des phrases reconnues avec ou sans la Spirit Box ou pour finir vous pouvez aussi utilisé deux livres pour augmenter vos chances. ', '\"../image/1000.webp\"'),
(2, 'EMF niveau <b class=\"changementfont\">5</b>', 'L\'EMF niveau 5 est une preuve qui s\'active avec une probabilité de 33% lorsque l\'Entité laisse une trace EMF qui devrait être de niveau 2 (interaction) ou 3 (lancer d\'objet).<br>\r\nLorsque l\'EMF monte jusqu\'au voyant niveau 5, c\'est une preuve à noter dans votre journal. Vous pouvez détecter les émissions EMF avec un Lecteur EMF. ', ''),
(3, 'Empreintes ', 'Les Empreintes Digitales sont un type de Preuve qui permettra d\'identifier le type d\'Entité qui hante les lieux. Les empreintes digitales sont laissées lorsque l\'Entité interagit avec son environnement et peuvent être révélées à l\'aide de la Lumière UV ou du Bâton lumineux.<br><br>\r\n<ul>\r\n<li>Interagit avec une porte.</li>\r\n<li>Utilise un interrupteur.</li>\r\n<li>Cogne dans une fenêtre.</li>\r\n<li>Ouvre des portes durant la Chasse.</li>\r\n</ul>\r\n', ''),
(4, 'Projecteur de DOTS ', 'Le Projecteur de DOTS est un outil pouvant être posé au sol ou sur les murs, qui projette des points verts. Si une entité possède la preuve correspondante et se situe a proximité d\'un projecteur de DOTS, une silhouette transparente de l\'entité apparaîtra brièvement dans le rayon d\'action des DOTS. ', ''),
(5, 'Orbes fantomatiques ', 'Les orbes fantomatiques sont des boules lumineuses visibles à l\'aide d\'une caméra montée sur trépied ou non, ou dans les mains, et également d\'une caméra frontale. Elles constituent une preuve à reporter dans le journal.<br>\r\nLes orbes fantomatiques apparaissent forcément dans la pièce favorite originale de l\'entité. Leur point d\'apparition change toutes les minutes et est redéfini à l\'intérieur de la première pièce favorite de l\'entité.\r\nL\'orbe se déplace ensuite lentement pendant quelques secondes dans une direction aléatoire avant de disparaître et de revenir à son point d\'apparition. ', ''),
(6, 'Spirit Box ', 'La Spirit Box est un boîtier vous permettant de communiquer avec les entités. Pour ce faire, il doit être allumé et vous devez poser des questions à l\'entité.<br><br>\r\n\r\nToutes les lumières dans la pièce doivent être éteintes (à l\'exception des lumières provenant d\'objets, comme la Lampe de poche/Lampe de poche puissante, Lumière UV, Bougie...). Les lumières dans les autres pièces, en incluant celles dans les couloirs/pièces adjacentes peuvent rester allumées. Les portes peuvent rester ouvertes.<br><br>\r\n\r\nLa spirit box marchera aussi si elle est posée au sol tant qu\'elle est allumée et que vous vous tenez à moins de 3 mètres d\'elle. Si le jeu ne détecte pas de micro, la spirit box tentera d\'obtenir une réponse approximativement toutes les 10 secondes en sélectionnant une question au hasard, tant que vous vous tenez à moins de 3 mètres d\'elle et qu\'elle est allumée. ', ''),
(7, 'Températures glaciales ', 'Pour obtenir des températures glaciales, il faut obtenir des températures inférieures à 0°C grâce au Thermomètre. Les joueurs émettront également une fumée de respiration quand la température est glaciale dans la pièce où ils se trouvent. <br>\r\nToutes les Entités font chuter la température dans la pièce où elles se trouvent. Les entités ayant la preuve Température Glaciale feront chuter plus rapidement la température que les autres entités. ', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
