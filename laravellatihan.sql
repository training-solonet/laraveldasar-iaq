-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2024 at 02:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravellatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'web-design', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(2, 'UI UX', 'ui-ux', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(3, 'Esport', 'esport', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(4, 'Photography', 'photography', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(5, 'Novel / Light Novel', 'novel-lightnovel', '2024-08-22 19:52:25', '2024-08-22 19:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_19_035243_create_categories_table', 1),
(5, '2024_08_20_025321_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author_id`, `category_id`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Sit est non porro ut nisi.', 1, 2, 'ratione-vero-quo-est', 'Commodi est est dolor voluptatem. Officia dolor voluptas magnam vel labore eum natus. Est occaecati consequatur qui tenetur nihil delectus similique.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(2, 'Sunt unde nesciunt velit omnis.', 5, 5, 'culpa-enim-enim-ad-saepe-ipsa-eum-molestiae-expedita', 'Ut omnis doloribus aut ut in non quia. Ut et dignissimos sequi est dolorem. Velit sed quia praesentium consequatur.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(3, 'Minus quo esse architecto non sed repudiandae iste eos.', 1, 4, 'eligendi-qui-dignissimos-placeat-impedit-mollitia-iure-ea', 'Odit et eum voluptas et eum sed possimus. Est ea eum qui recusandae quo accusantium optio iste. Est necessitatibus id ut eum sed rem natus.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(4, 'Adipisci velit qui sit fugiat labore vel ipsa enim.', 3, 4, 'id-dicta-quibusdam-error-reiciendis', 'Provident sed commodi rerum et. Blanditiis et id laborum.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(5, 'Aliquid cum aliquam sit ea cupiditate.', 5, 2, 'provident-quo-nam-itaque-et-rerum-debitis-sit', 'Aperiam qui fugiat facere. Aut eaque quis rerum nostrum omnis aut sequi. Impedit tempora ipsa velit nemo veniam eos a. Est sunt voluptas omnis qui omnis. Facilis quia ut quidem eos debitis.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(6, 'Consequatur delectus ea tempore labore molestiae in ex suscipit.', 3, 4, 'et-enim-voluptatem-nisi-sint-qui', 'Vitae deleniti ex voluptate. Amet voluptatibus ea sit vitae. Debitis rerum deserunt assumenda labore molestiae. Quasi delectus eveniet maiores molestiae et nostrum.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(7, 'Voluptatem placeat adipisci aut ratione quod.', 5, 2, 'incidunt-est-quod-repellat', 'In numquam atque et. Qui ea est repellendus recusandae in. Temporibus eos qui quia hic enim. Molestias soluta neque voluptatum praesentium quas maiores iste reprehenderit. Illo explicabo quia sed ut.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(8, 'Est vel eos excepturi rerum quidem.', 1, 1, 'est-hic-et-doloribus-neque-sequi-quia-corporis', 'Rem tempore quo iure omnis quis voluptas quaerat minima. Doloremque cumque rem dolore voluptate nihil. Eligendi non non aut cupiditate aut iure accusantium. Non non qui a quos optio sapiente eveniet.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(9, 'Sunt ut debitis eveniet quia impedit qui.', 5, 1, 'cum-illum-suscipit-suscipit', 'Unde laudantium consequatur beatae beatae consequatur. Quis eos itaque repellat quas dolorem. Nulla minus laborum illum. Et unde deserunt nesciunt sed.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(10, 'Fuga id nulla ullam corporis quisquam est enim.', 3, 4, 'voluptatem-modi-dolorum-fugiat-consequuntur-mollitia', 'Corporis modi est molestias quis. Doloribus itaque dolores veritatis in dolorem. Dolorem consequatur consectetur quos. Aliquam ratione aperiam et rem occaecati autem.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(11, 'Earum est omnis consequuntur veritatis quis alias aut.', 5, 3, 'debitis-qui-corporis-sit-omnis-labore-deleniti', 'Sit omnis dolores deleniti vel aut autem eos expedita. Est ex provident non dolorem quo ad. Modi aliquam sunt et. Iusto sed laudantium incidunt repellat rem delectus.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(12, 'Facilis pariatur laboriosam voluptatem cum doloribus exercitationem repellat dolorum.', 2, 5, 'molestias-totam-neque-beatae-nesciunt-ea-velit-eius-quia', 'Ut cupiditate sequi nulla similique quia. Enim odit qui delectus quis dolorem repudiandae. Exercitationem dicta autem qui eos.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(13, 'Molestias quisquam itaque qui ut.', 3, 2, 'atque-ea-rerum-pariatur-cumque-in-est', 'Aliquid ea fugiat non eveniet similique. Veniam voluptas distinctio blanditiis. Quis suscipit expedita totam provident quia omnis. Natus consequatur corporis necessitatibus totam et.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(14, 'Aut inventore ducimus rerum consectetur vero voluptatem maxime dolore.', 5, 3, 'explicabo-omnis-aut-quidem-temporibus-adipisci-culpa-voluptas', 'Omnis corporis error id. Velit ducimus nobis voluptas quia voluptate voluptas aut. Excepturi et est sit laboriosam. In sed similique praesentium deleniti at molestiae.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(15, 'Neque iure quidem quo ipsam.', 1, 4, 'et-quam-est-dignissimos-laboriosam-omnis-beatae', 'Iusto odio odit ipsum saepe officia nulla. Libero quae vel aperiam ratione. Veritatis est ut facere sed. Rerum aut et id maiores repellat.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(16, 'Delectus quia molestiae quibusdam animi quis quidem explicabo nobis.', 3, 2, 'enim-iste-velit-aliquam-delectus-facilis-vel-aut', 'Quo molestias non aliquam ex rerum quam. Totam tenetur aut saepe quaerat ipsam quibusdam. Et ea et corrupti. Ex impedit odit sequi est quia vitae voluptatum.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(17, 'Corrupti corporis nam deleniti beatae ratione quo architecto.', 5, 4, 'cum-voluptatem-dignissimos-est-velit-molestias', 'Delectus doloribus dolor repudiandae non. Quod ut vel rerum impedit fugit. Perferendis a pariatur sed eum rerum veniam sed. Nesciunt eveniet aut repellendus libero quidem laborum autem libero.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(18, 'Libero et et ducimus ut repellat voluptatem magnam.', 1, 1, 'perferendis-nulla-corrupti-rerum-pariatur-reprehenderit', 'Totam sint voluptates consequuntur eaque explicabo tempore alias. Qui dignissimos laudantium provident ipsam vero natus. Porro iste quis est illum eos. Quam inventore officiis culpa aliquid ab.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(19, 'Exercitationem eum enim veniam qui impedit ex.', 2, 1, 'pariatur-quod-dolorem-debitis-eos-voluptatem-enim', 'Ex omnis et vel ut qui. Eaque eos aut iste laudantium et sit ullam quasi. Ut quia non dolorem eos. Similique culpa quibusdam dolores quas et voluptatem.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(20, 'Quidem eos assumenda fugiat in qui vero.', 5, 1, 'ea-quos-aut-voluptatem-eaque-quidem-consequatur-et-delectus', 'Quo inventore cum voluptate error sint veniam officiis quis. Sunt fugit doloribus repellat. Possimus saepe repudiandae totam consectetur veritatis ut.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(21, 'Omnis quibusdam illo deleniti illo repellendus ea aut nihil.', 4, 3, 'architecto-qui-itaque-deleniti', 'Atque impedit ut voluptatem doloribus. Dolore explicabo sed dolor et. Laboriosam enim molestias deleniti enim.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(22, 'Dolorum quia aut quia tenetur.', 1, 2, 'ut-commodi-consequatur-sed-similique-ut-ut-voluptas', 'Omnis voluptates nihil aut autem vero saepe. Incidunt voluptatem ea dicta maiores. Est odio laudantium voluptate soluta voluptates. Provident magnam cupiditate temporibus ad.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(23, 'Voluptatibus ipsam id aut omnis sed.', 2, 3, 'odit-aperiam-unde-qui-nulla-nam-doloremque-et', 'Nisi nam dolore molestiae necessitatibus molestiae nam illum ut. Non et illum voluptas quia sed sed. Ut reprehenderit corporis consequatur eum eaque quidem.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(24, 'Autem ut aut quam magnam.', 4, 5, 'aut-autem-cupiditate-ullam-et-velit-voluptatem-sint', 'Eos incidunt impedit fugiat quia. Similique ipsam doloremque quia autem et occaecati. Ullam animi quae quaerat dolores aut.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(25, 'Impedit ratione mollitia sunt qui qui nulla voluptatem quisquam.', 1, 4, 'rem-est-dolor-saepe-sed-aut', 'Quisquam quae alias quisquam quae sunt. Quia ut nihil id.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(26, 'Quisquam veritatis doloribus quia sit quaerat.', 5, 2, 'autem-et-voluptatem-cupiditate-quaerat-accusamus-quo-consequatur', 'Deleniti qui est quia sint doloremque in reiciendis sed. Maxime et sed ab. Facilis pariatur ut laudantium totam.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(27, 'Perspiciatis impedit omnis est suscipit repellat in voluptatem.', 2, 3, 'labore-ratione-et-architecto-et-quo-et', 'Corrupti molestias quo voluptatem voluptates. Quis enim itaque est voluptas ut ipsa quos. Dolorum dolore consequatur occaecati maxime iste ut. Provident officia nemo eveniet quas et quidem sed.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(28, 'Illum sunt necessitatibus aspernatur amet veniam.', 4, 1, 'at-ducimus-enim-odit-consequatur-consequatur-molestiae', 'Esse cumque quae quaerat deserunt facilis dolor ipsum commodi. Quae ea alias voluptatem ullam. Et est culpa in sit. Aut porro debitis sint eos rerum tempore ut corrupti.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(29, 'Accusantium id ipsam voluptatem et in.', 4, 5, 'ratione-ea-deserunt-libero', 'Quidem accusamus rerum velit quo. Eveniet deleniti necessitatibus quidem id asperiores. Perspiciatis deleniti ab natus voluptatibus.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(30, 'Rerum ut eum sed fuga expedita et.', 3, 5, 'ea-natus-repudiandae-quia-quia', 'Corporis a non blanditiis provident dolores iste et. Quia ipsum recusandae omnis illo. Atque delectus earum magnam architecto. Suscipit veritatis tempore nesciunt omnis temporibus minus illum dolor.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(31, 'Dolores odio nesciunt architecto quod excepturi id illum.', 4, 4, 'nobis-non-error-minus-officiis', 'Tempora aut dolor voluptatem id temporibus fugit facilis. Eos similique officiis cumque velit laborum et omnis amet. Sed impedit voluptatibus laboriosam. Et provident praesentium sed veniam.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(32, 'Nihil ex assumenda delectus eum facere.', 4, 5, 'hic-sed-est-qui-adipisci', 'Deserunt consectetur eos similique porro. Consequatur possimus quam et velit adipisci. Molestiae est perspiciatis ad. Incidunt optio laboriosam quibusdam minus.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(33, 'Sequi ratione nisi quo debitis officiis minus.', 3, 3, 'sunt-aut-qui-id-veniam-quo-qui', 'Sed itaque quis voluptatem ea consequatur. Qui aut soluta eveniet in omnis. Ut quis incidunt dolores recusandae sed.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(34, 'Nihil repellat voluptatibus qui beatae.', 3, 3, 'corporis-quo-consequatur-quibusdam-at', 'Et autem et dignissimos praesentium. Commodi sit excepturi repudiandae nemo dolor voluptates sit. Ex non vel ut beatae sit ab ea.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(35, 'Maiores voluptatem inventore unde facilis est odio corrupti dignissimos.', 1, 5, 'et-maxime-repudiandae-quia-ut', 'Temporibus odio quia magnam molestiae. Sit eos ullam unde necessitatibus. Laudantium dolore sit quibusdam velit suscipit veritatis totam.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(36, 'Iste consequatur tempore quibusdam fugiat esse maiores nihil.', 2, 3, 'qui-eaque-deserunt-voluptatem-a', 'Est modi consequatur corporis excepturi pariatur. Aut beatae repudiandae quis.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(37, 'Molestiae eveniet consectetur aliquid et.', 1, 2, 'expedita-deleniti-eveniet-saepe-architecto-molestiae-unde-veritatis-consequatur', 'Accusamus assumenda distinctio qui nobis sint voluptatem consequuntur quia. Dolor magni id ut quia nemo. Quaerat soluta fugit quam tenetur.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(38, 'Debitis tenetur aliquam harum voluptatem cumque expedita.', 4, 2, 'maiores-deserunt-quo-autem-maxime-excepturi-amet-deserunt-libero', 'Voluptatum iste quia quis quibusdam. Voluptatem et cum omnis labore. Nostrum magni omnis velit laudantium consectetur libero est aut. Tenetur beatae dolore consequatur harum ratione.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(39, 'Ea saepe ipsam autem temporibus cumque consequuntur sapiente.', 2, 3, 'dolores-rem-natus-veritatis-sit-non-ut', 'Id distinctio consequatur qui. Saepe cumque quae laudantium et sunt hic nihil. Nostrum est dolores ducimus quia incidunt. Aperiam odit eos autem iure.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(40, 'Molestiae error repellat ex pariatur qui tenetur amet.', 3, 2, 'et-maiores-consequuntur-consectetur-eveniet', 'Nemo ipsum dolorem qui. Vel nulla est atque quo aliquam. Impedit asperiores est voluptatem et repellat odit exercitationem impedit. Iure similique in quis tempora animi voluptatum.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(41, 'Inventore ut quia laborum dignissimos.', 4, 3, 'ex-perferendis-maiores-ad-molestias', 'Quam voluptas provident porro nisi non non. Porro nihil eaque dolore et doloremque. Exercitationem at voluptatibus sit omnis. Reprehenderit est accusamus molestias aut doloribus.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(42, 'Quod blanditiis ab labore corporis repellat voluptatem omnis.', 5, 4, 'quia-ad-ut-aut-quis-magni-officiis-velit-assumenda', 'Perferendis dolor qui sit possimus quod eos. Sunt pariatur quia et. Vero labore aspernatur et quis quia repudiandae quaerat.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(43, 'Necessitatibus suscipit quod dolore esse amet.', 2, 4, 'omnis-assumenda-excepturi-eveniet-rerum-velit', 'Commodi deleniti neque est perspiciatis aut sit ab in. Consequatur quia et voluptas aut nisi praesentium. Voluptatibus sunt deleniti porro totam nemo ratione. Tempora voluptas odit doloremque unde.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(44, 'Nesciunt culpa soluta similique adipisci.', 5, 3, 'esse-dolor-quisquam-molestias-molestiae', 'Placeat fugiat autem quia minima sit rerum libero. Perspiciatis voluptate nobis placeat. Quis nam maiores quas eveniet voluptate. Ducimus id quis ullam saepe consectetur.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(45, 'Incidunt veniam odit qui vel.', 2, 5, 'ea-ratione-quia-eos-dolorum-voluptates-illo', 'Consequuntur eum ut mollitia nemo. Labore suscipit architecto in. Odio vitae ut unde aspernatur saepe. Non unde illo neque. Atque voluptas eum dolore adipisci quia et.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(46, 'Commodi in cupiditate et culpa saepe suscipit.', 5, 4, 'impedit-sunt-at-voluptatem-a-iure-occaecati-reiciendis', 'Quae aut earum nobis voluptatibus quas provident. Dolores explicabo ut quia vel quia illum. Eos qui nihil eaque occaecati quam.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(47, 'Ea et est mollitia voluptatibus.', 3, 1, 'sit-quod-tempora-ut-quisquam-maiores', 'Enim aut laboriosam recusandae assumenda quia. Dicta saepe molestiae saepe sint eos. Recusandae aut autem eligendi quasi ut quas laudantium. Iure quia soluta ut laboriosam suscipit exercitationem et.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(48, 'At quod quia provident iusto rem hic.', 2, 2, 'beatae-est-dolorem-suscipit-necessitatibus-enim', 'Quod velit odio doloribus odio aut fugiat voluptate. Eum sed non corporis animi iure. Molestiae et veritatis et. Quis numquam reprehenderit molestiae et aspernatur at et. Dolores quia ea harum earum.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(49, 'Doloribus quis qui labore voluptatum saepe explicabo est.', 5, 4, 'deleniti-enim-earum-id-blanditiis-repellendus', 'Tempore quia et eum velit maxime molestias voluptas velit. Tempore sed est doloribus omnis et. Aut explicabo quo veritatis quia hic adipisci.', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(50, 'A dolor necessitatibus consequatur sed molestias aut.', 1, 5, 'consectetur-molestias-commodi-aut-alias-ea', 'Voluptatibus sed facilis dolor officiis hic minus. Quaerat quod minima cumque eos.', '2024-08-22 19:52:25', '2024-08-22 19:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CIUSsr1XCoHlriJ27olKRCRJ0OnDCSHUnb85DXqz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVBkSmhweFJGQjRFMnluWWF6Q2F5TVRFSHJKelNqcWVYMHZRYTBHbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sYXJhdmVsLTExLnRlc3QvcG9zdHM/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1724811889);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mustika Mustofa', 'kuswoyo.raisa', 'eva.saptono@example.org', '2024-08-22 19:52:25', '$2y$12$aMTXEA0RGoPiS6DCP6qOnOKFUjNZBtrYXW2KpRe4brQ5Co0qOHI6m', 'LNUWlHSJqS', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(2, 'Warsita Maryadi', 'lulut.mansur', 'dina19@example.com', '2024-08-22 19:52:25', '$2y$12$aMTXEA0RGoPiS6DCP6qOnOKFUjNZBtrYXW2KpRe4brQ5Co0qOHI6m', 'AnIpuj9cLl', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(3, 'Anita Laksita S.T.', 'simanjuntak.faizah', 'qtamba@example.com', '2024-08-22 19:52:25', '$2y$12$aMTXEA0RGoPiS6DCP6qOnOKFUjNZBtrYXW2KpRe4brQ5Co0qOHI6m', 'uHDEYgHCbf', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(4, 'Nalar Pratama S.IP', 'nasyidah.ajeng', 'tania.puspasari@example.org', '2024-08-22 19:52:25', '$2y$12$aMTXEA0RGoPiS6DCP6qOnOKFUjNZBtrYXW2KpRe4brQ5Co0qOHI6m', 'Suy2ya7JHr', '2024-08-22 19:52:25', '2024-08-22 19:52:25'),
(5, 'Kairav Saragih', 'megantara.unggul', 'osimanjuntak@example.org', '2024-08-22 19:52:25', '$2y$12$aMTXEA0RGoPiS6DCP6qOnOKFUjNZBtrYXW2KpRe4brQ5Co0qOHI6m', 'dUsyXNkhnQ', '2024-08-22 19:52:25', '2024-08-22 19:52:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id` (`author_id`),
  ADD KEY `posts_category_id` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
