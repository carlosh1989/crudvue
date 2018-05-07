-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-05-2018 a las 17:00:22
-- Versión del servidor: 5.7.22-0ubuntu0.16.04.1
-- Versión de PHP: 7.2.4-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `larticles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 'Quos eos quod est esse.', 'Ad error et quo enim. Est nihil fugit doloremque non asperiores aut recusandae. Minima voluptatum quas sunt omnis exercitationem excepturi.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(3, 'Qui libero aut iusto alias dolor magnam harum.', 'Iusto sed enim dolor et iste aut dolor nobis. Ut maxime accusamus voluptate tempora quo ducimus ducimus. Quas ut laudantium enim velit.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(4, 'update title', 'update body', '2018-05-02 03:28:30', '2018-05-02 05:00:14'),
(5, 'Architecto harum rerum corrupti.', 'Laboriosam tempora ipsa inventore et tempore cumque. Voluptatem rerum omnis quod ipsam ex. Debitis odit harum molestiae qui.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(6, 'Sit numquam laborum nobis qui qui molestiae quos.', 'Rem voluptatem repellat tempora odio. Eligendi saepe quam omnis odit exercitationem vel maiores. Modi libero quibusdam debitis inventore aut id. Omnis aut provident eligendi sapiente.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(7, 'Voluptas aut odio a quia et.', 'Alias possimus aut aliquid. Cupiditate reprehenderit cum optio odit excepturi quae consequatur. Incidunt rerum tempora iusto. Blanditiis beatae voluptatem quasi est porro.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(8, 'Ducimus laboriosam aut sit voluptate debitis.', 'Quas corrupti ut molestias amet sunt sint. Consectetur delectus a rerum qui et voluptatem.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(9, 'Minima aut reprehenderit ipsum.', 'Rem dolores voluptatem qui facere odit. Ut et quia unde et quod enim doloremque. Sunt maiores id illo quisquam amet totam vel. Voluptatem quidem voluptas accusantium.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(10, 'Rerum aut voluptas quisquam maxime.', 'Consectetur nostrum sunt quam quia iure dolorem consequatur. Expedita quibusdam vitae fugiat sed cum. Voluptatem quia quia aut. Impedit consequatur sit eos.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(11, 'Dolores beatae culpa ut aperiam.', 'Praesentium eveniet quia dicta. Beatae dicta tenetur aut quidem id velit facere. Repellat sit culpa ut sed velit nisi ut.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(12, 'Voluptas et dignissimos delectus accusamus.', 'Odit accusamus omnis itaque commodi libero esse. Sit ex perferendis doloremque veniam autem quis eius. Iusto dolor repellat amet ut mollitia iusto qui.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(13, 'Pariatur maiores ab omnis perspiciatis quod.', 'Sit qui earum et fugiat velit. Expedita asperiores numquam enim nihil. Beatae aut est temporibus.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(14, 'Est rerum non modi sed.', 'Alias sit architecto quis et. Facilis vero est labore quis corrupti natus. Sunt autem nostrum quia repudiandae inventore. Natus at expedita dolore.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(15, 'Tenetur qui itaque ea soluta veritatis est.', 'Blanditiis nostrum et id accusamus. Excepturi mollitia qui illo id. Voluptatem similique ut ut. Nemo iste odit ratione natus mollitia dolorum.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(16, 'Eos quod nemo quidem qui non quae autem.', 'Tenetur dicta quia earum repellat error quidem corporis. Doloremque molestiae occaecati aliquam sunt dolorem doloribus. Sint est aut odit.', '2018-05-02 03:28:30', '2018-05-02 03:28:30'),
(17, 'Quis animi est voluptatem.', 'Molestiae odit accusantium facere magnam molestiae hic impedit. Fuga ullam ut alias sunt consectetur possimus impedit.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(18, 'Nulla aliquid aut nam provident recusandae.', 'Sit et corporis autem animi ut ex quis quibusdam. Provident sint ad nemo esse.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(19, 'Fuga at et eum ut sit.', 'Amet et exercitationem molestiae magni non inventore esse. Dolor sed eligendi ea. Nesciunt et ut autem. Exercitationem alias aut ut.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(20, 'Labore neque qui consequatur.', 'Nihil temporibus quo inventore et doloribus. Saepe hic fuga est fugit repellendus et velit. Sapiente hic aliquid repellendus nobis error enim.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(21, 'Facilis perferendis sunt sunt.', 'Voluptatibus ea optio ut. Et qui unde ducimus cum. Modi optio iusto aliquam ut. Aut repellat aut deserunt eum molestiae aut.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(22, 'Omnis aut numquam nisi est voluptates.', 'Sed quidem est qui rerum doloribus et temporibus totam. Sapiente minima doloremque asperiores voluptatem omnis perspiciatis placeat recusandae. Iure quisquam quia laboriosam alias esse dolores amet.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(23, 'Numquam soluta reiciendis vitae.', 'Est assumenda sint sunt quo voluptatibus enim. Qui reiciendis pariatur distinctio ea omnis enim aut. Et qui pariatur non quis sit consequatur magnam et.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(24, 'Qui ex veritatis reiciendis ut.', 'Quae officiis velit maiores dolor voluptas. Facilis repellendus sit modi. Vel repudiandae exercitationem modi aut. Qui numquam et quia voluptas.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(25, 'Rem eius enim et sed ratione et magni molestias.', 'Sint nostrum quibusdam illum illo distinctio. Veritatis facere illum explicabo ipsa sit. Sit tempora non sequi. Molestiae expedita quod tempore iusto.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(26, 'Libero beatae quae laudantium quam.', 'Qui et unde est. Odit magnam consequuntur hic provident perferendis.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(27, 'Officiis ab et quia id a distinctio illo.', 'Tenetur sed quia similique voluptas. Voluptates unde quaerat quibusdam dolorem iure ipsum. Ea odio cumque officia fugiat. Omnis nobis est accusamus sunt neque id.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(28, 'Consequatur non suscipit ipsum ea sed.', 'Qui dolore nulla quis amet error. Fuga ipsam vero nostrum incidunt laudantium vitae nobis. Nemo in id voluptatem est sint. Cupiditate at nesciunt nostrum qui aut sit voluptatum.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(29, 'Ut qui aliquid quia inventore ad ab nemo.', 'Id nisi quibusdam sapiente deserunt. Cum accusantium et quam excepturi. Velit qui et et esse doloribus harum id. Et ea quo tempora eos quia.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(30, 'Soluta esse molestiae laborum.', 'Quae non ut explicabo numquam culpa illum. Sit qui sit et molestiae. Ullam qui non aut occaecati sunt vel voluptatem.', '2018-05-02 03:28:31', '2018-05-02 03:28:31'),
(31, 'test title', 'test body', '2018-05-02 04:46:47', '2018-05-02 04:46:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2018_05_01_200343_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
