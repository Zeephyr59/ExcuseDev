-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 31 mars 2023 à 14:53
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony_excuses`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230331115358', '2023-03-31 11:54:05', 46),
('DoctrineMigrations\\Version20230331120954', '2023-03-31 12:09:58', 27),
('DoctrineMigrations\\Version20230331132900', '2023-03-31 13:29:04', 50);

-- --------------------------------------------------------

--
-- Structure de la table `excuse`
--

CREATE TABLE `excuse` (
  `id` int(11) NOT NULL,
  `httpcode` int(11) NOT NULL,
  `tag` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `excuse`
--

INSERT INTO `excuse` (`id`, `httpcode`, `tag`, `message`) VALUES
(1, 701, 'Inexcusable', 'Meh'),
(2, 702, 'Inexcusable', 'Emacs'),
(3, 703, 'Inexcusable', 'Explosion'),
(4, 704, 'Inexcusable', 'Goto Fail'),
(5, 705, 'Inexcusable', 'I wrote the code and missed the necessary validation by an oversight (see 795)'),
(6, 706, 'Inexcusable', 'Delete Your Account'),
(7, 707, 'Inexcusable', 'Can\'t quit vi'),
(8, 710, 'Novelty Implementations', 'PHP'),
(9, 711, 'Novelty Implementations', 'Convenience Store'),
(10, 712, 'Novelty Implementations', 'NoSQL'),
(11, 718, 'Novelty Implementations', 'I am not a teapot'),
(12, 719, 'Novelty Implementations', 'Haskell'),
(13, 720, 'Edge Cases', 'Unpossible'),
(14, 721, 'Edge Cases', 'Known Unknowns'),
(15, 722, 'Edge Cases', 'Unknown Unknowns'),
(16, 723, 'Edge Cases', 'Tricky'),
(17, 724, 'Edge Cases', 'This line should be unreachable'),
(18, 725, 'Edge Cases', 'It works on my machine'),
(19, 726, 'Edge Cases', 'It\'s a feature, not a bug'),
(20, 727, 'Edge Cases', '32 bits is plenty'),
(21, 728, 'Edge Cases', 'It works in my timezone'),
(22, 730, 'Fucking', 'Fucking npm'),
(23, 731, 'Fucking', 'Fucking Rubygems'),
(24, 732, 'Fucking', 'Fucking Unic💩de'),
(25, 733, 'Fucking', 'Fucking Deadlocks'),
(26, 734, 'Fucking', 'Fucking Deferreds'),
(27, 736, 'Fucking', 'Fucking Race Conditions'),
(28, 735, 'Fucking', 'Fucking IE'),
(29, 737, 'Fucking', 'FuckThreadsing'),
(30, 738, 'Fucking', 'Fucking Exactly-once Delivery'),
(31, 739, 'Fucking', 'Fucking Windows'),
(32, 738, 'Fucking', 'Fucking Exactly'),
(33, 739, 'Fucking', 'Fucking McAfee'),
(34, 750, 'Syntax Errors', 'Didn\'t bother to compile it'),
(35, 753, 'Syntax Errors', 'Syntax Error'),
(36, 754, 'Syntax Errors', 'Too many semi-colons'),
(37, 755, 'Syntax Errors', 'Not enough semi-colons'),
(38, 756, 'Syntax Errors', 'Insufficiently polite'),
(39, 757, 'Syntax Errors', 'Excessively polite'),
(40, 759, 'Syntax Errors', 'Unexpected`T_PAAMAYIM_NEKUDOTAYIM`'),
(41, 761, 'Substance', 'Hungover'),
(42, 762, 'Substance', 'Stoned'),
(43, 763, 'Substance', 'Under-Caffeinated'),
(44, 764, 'Substance', 'Over-Caffeinated'),
(45, 765, 'Substance', 'Railscamp'),
(46, 766, 'Substance', 'Sober'),
(47, 767, 'Substance', 'Drunk'),
(48, 768, 'Substance', 'Accidentally Took Sleeping Pills Instead Of Migraine Pills During Crunch Week'),
(49, 771, 'Predictable Problems', 'Cached for too long'),
(50, 772, 'Predictable Problems', 'Not cached long enough'),
(51, 773, 'Predictable Problems', 'Not cached at all'),
(52, 774, 'Predictable Problems', 'Why was this cached?'),
(53, 775, 'Predictable Problems', 'Out of cash'),
(54, 776, 'Predictable Problems', 'Error on the Exception'),
(55, 777, 'Predictable Problems', 'Coincidence'),
(56, 778, 'Predictable Problems', 'Off By One Error'),
(57, 779, 'Predictable Problems', 'Off By Too Many To CountError'),
(58, 780, 'Somebody Else\'s Problem', 'Project owner not responding'),
(59, 781, 'Somebody Else\'s Problem', 'Operations'),
(60, 782, 'Somebody Else\'s Problem', 'QA'),
(61, 783, 'Somebody Else\'s Problem', 'It was a customer request, honestly'),
(62, 784, 'Somebody Else\'s Problem', 'Management, obviously'),
(63, 785, 'Somebody Else\'s Problem', 'TPS Cover Sheet not attached'),
(64, 786, 'Somebody Else\'s Problem', 'Try it now'),
(65, 787, 'Somebody Else\'s Problem', 'Further Funding Required'),
(66, 788, 'Somebody Else\'s Problem', 'Designer\'s final designs weren\'t'),
(67, 789, 'Somebody Else\'s Problem', 'Not my department'),
(68, 791, 'Internet crashed', 'The Internet shut down due to copyright restrictions'),
(69, 792, 'Internet crashed', 'Climate change driven catastrophic weather event'),
(70, 793, 'Internet crashed', 'Zombie Apocalypse'),
(71, 794, 'Internet crashed', 'Someone let PG near a REPL'),
(72, 795, 'Internet crashed', '#heartbleed (see 705)'),
(73, 796, 'Internet crashed', 'Some DNS fuckery idno'),
(74, 797, 'Internet crashed', 'This is the last page of the Internet. Go back'),
(75, 798, 'Internet crashed', 'I checked the db backups cupboard and the cupboard was bare'),
(76, 799, 'Internet crashed', 'End of the world');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(5, 'zeephyr@test.fr', '[]', '$2y$13$NrY48LPTsmqgrZvw5Qy02Oqr1HV8KcGFNCL2Ypy8kk8oVLmCrFBmO');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `excuse`
--
ALTER TABLE `excuse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `excuse`
--
ALTER TABLE `excuse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
