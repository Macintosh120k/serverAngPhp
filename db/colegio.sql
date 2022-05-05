-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2022 a las 17:17:44
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `idAlumno` int(11) NOT NULL,
  `nombres` varchar(250) NOT NULL,
  `apellidoPaterno` varchar(250) NOT NULL,
  `apellidoMaterno` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `ubigeo` varchar(12) DEFAULT NULL,
  `fechaIngreso` date NOT NULL,
  `img` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`idAlumno`, `nombres`, `apellidoPaterno`, `apellidoMaterno`, `direccion`, `telefono`, `ubigeo`, `fechaIngreso`, `img`) VALUES
(1, 'ALFONSO PAUL', 'PORTOCARRERO', 'MAYTA', 'MIGUEL GRAU PSJ. CUSCO 100', '929972411', '-', '2022-02-21', 0x524946466c11000057454250565038206011000090c0009d012a7202a1013e2d168943a1a1211058bc9c1802c4b4b77fffdefdd1600310ee7fc8eeb45b906a554014f0357b166f93f4c654bfe7bf9fee72f0cb57ffdeffb727ca1747fbe79fbf1e913e7dff1f98bf34a9f366f632bfffc45df47b7af31e4ff97fe8ff5a9bc84e7fe004bc9d5a2de9f7ec995621d37a647dbb03c5b3ec4df5753d976d85ffe04e05f7749f084a1df4fca8770e962e8f6c1cda38df7a8d029be9aeb1de09406480dbf5b05b6ba548d3a1e8c4a1cdf0342de76f3765d87d21e5971cb0a2f059688609bde050c3146e5232569c1c140afb7c3c190980a61c9bb74cc832716db3df1b7b84f98b20d8c5b461797923f4b049da63cf5fd060eabfa240f0e4db5262a8665480df92e90fdcb523545a93833c357d37c4bb469c269a7aa91f4319fbd42cf3afd10646aecb525cc8238e4faa81cb1cf57f32ea73f236c1af89782f347ba947f332be0f21a5b99dfeed4099effef2a202780ccd80ac8cb8216d6e6d7dc18c234b818e64c188034ba54fe6d4496f1f0f4ac69a5fd386ccebdc07fab009c0745453d9d36fd50ca70000793db573f5dd228b6fbd608b7b910b7bbc5dc4447a7fea4c2ee7b37d08f7e5311ced65fa5ed56b8f12b440808c66fae422596f0962f08cdc64130ca33db1566a4419a9861fc97ea59cf5927e03008599e593cadcaf9107be24dfc3eecc8b19af52a9a6bec9e8562f66b7b8a09996566c190fe7dde01c8f3059cc3f562be2483f23b6c3685b29da8e5ece237ee3587a951bd3767685ea4e54d58ee8ffc954de32a8f6c40240fc67f9fd9cd03838518d57917c39a3efe7f7a02f87bd4a1c28b73253a2b8b124a0bea94aa18fd2c35b91b0788cf0e218ddc8fdaac57486eeaa11a2d0801eb4abc462e841850cfd2c35b91b0795aabcecfc3c31fa583f7e744ced8a0f4f01fad4b5321ea22b57c8268a40352363513a039a1fc8d3bb10ea4ebdd8875275eec43a93ad7b3b26709e3df4bf1155e767e1e18fd2c35b91b0795aabcecfc3c310f30d6c65bdd8875275eec43a93af7621d49d7bb10ea4ebdd8875275eec43a93af7621d49d7bb10ea73944ad55e767e1e18fd2c35b91b0795aabcecfc3c31f9fe9b0795aabcecfc3c31fa586b72360f2b5579d9f87863e152d3dd8875275eec43a93af7621d49d7bb11030adc8d83cad55e767e1e18fd2c35b91b0795aabcecfc00a7f4b0d6e46c1e56aaf3b3f0f0c7e961adc8d83cad55da1b3e8f35f0d9f479af86cfa3cd7c367d1e6b9a981dbdc8e5938d317eb0f36741e3bf85fa161c2b72360f2b5579d9f87863f4b0d6e46c1e0927f33165a6e12753985633af43b15f0eb9c2ef20403ac90b1c875275eec43a93af7622040c508a6ab78b52d3855a75b1a49e0390c6ab96a09d0e0a4ec238e07575961ec9f14fc311430d6e46c1e13d584cfc27f6093bf00391791ac48ba94618ba1abf14c50184d4254f2f4980c57fad119f6a7c1d476c96a0f1657674f935a6f5ef67594023514367410502bd0f8b5aebcf06b025a4af9575ca0ad897e124bc9348cf126f31cd25a407c8d446b4afd4a7766fe18c46724eda063854d37a9abeb9d860b6e43d37acd5a9ae150c6c7d6ff116cca5b6115fe1d49561346e7517a671a2834682e7114393c892571a58af5b19adff262fe45961dbfd7fc7c2368f8491f8fe48a9ddb4f7bc48aa667dcbd5c34f821ee9863718e870627a5a9f56408da6b3c07222d9fba3feb75a947178c75404e9644275b93ded1cf38bdcc0f0864e6ba86c94a85e8102fbaa0dcde1649cd98526be42e19e3eed4bcd05b557e589db088d4b3f7fdee8994d8d9b75f03e72748bf745478a84b036f49c01cd1b999a24fc2c6e3af35ea6fecafaa556c0940c530a00b5c65a93ec881b19009c2e7b5a9abfb17c9df1081c33cb5e9b6ec7452a9cb73dfd42416c08f86ab98c9620e77b95bfc09e449366932a4dcc975bae8fa86718b297d0225c7462e926e95f9f29b386e50dd78a162464d70f82914b26a682e2887ee5a58758514c4849ed7d5616eb6d6529566e7f4a675b163bcd30b2ab7b3cf0ab199caa2c62daec126be9644f1b7a62b4dfb4a372ed4676a49ad8bde25dd115b37bddf0cb110f7bf303641201e3d9b4ed416ee88752f37bf726affb9d50e1b787b667661b61882f518ca74f8e1ba90482801e8000fefdbad01d574b3c8d026604a7883e41c7554d17c366dd089bb9ab054886d7af24d6c4b332325765cbd19a3979b0fca3131b312f519223d7c28c7dfe5ffa32b88b5b0837c723432dbf5be6ba875e3d9c03ff0d2e4b0c222d5abff8badd5325c23891d8ba4eb86207e4a31c834d51602535e26ea1b645b09db958a14711798a215d7b988493b963438218a4af82857574744a7edfa5a41469d4830014a7fc182aaf3bfb5707e968d480cb4f4fd88729558155b2e88c74eae122a1797c745a44f2ef974d488ae896ccebcf123c5f9bd31cebfa005211de187ac32e6f965a6afd8afc4f33a3c21ceacc954c8b2d44807fb1bbe46cf4cb5b997fc29bffa13f898dd2680056f189c104ba6c7c4abb293adb02adc929eaace7df59d90ddb73b4fd14d604002801047310865ebf32936b33e717d2c4a6a67fb7910cb37073eb2b912726a32f977d9d666ed0c551f8385dedaf15d7ec010e9c051a2d8cf3c10414ed24c4afaa29a9a54e06b5cf9335e78ed96ff9a880022d99c84bef3a768f7b52ed112663c273db0395c9d8c8e553a3dde7d435baca78469423ac169a998b0e55c26b40edd40b83d7c72716140531562ddd600dd92f006d48744476beef7c4df90157f746df744bef93a6a445729d366a0e02a9b7ea09151eaf6cad1d2c0469685fd2a294f3cceec5833a0185ab63639bbeac05f8fe62809025c317b03454007c678f82030cf9434980c98c2cc7e4245e9ba0f8716232531377d4f6ebb3bbd6f9667ce9866c4091fb9cbfaf46e664c6c3a6d532f8594abee08414a73007d10ce0f6ac500aaea4dd11ea11ee2ce61b61cc5489922180199c89c435477a687344f4825c91c2c418f0445b79a2bd55d22fec56d6911c00407a0172926bf75944802f81e47c466dd16bf9a167d0caa07a60d1b2ba26eeb653b5a94917cadf88d794ded66fa308b1fb27c7552bab1c68cabc7ab54735c8cb4b622c0d8e8aaff69281491a96e3a83a2c7aa5234d0089529fe8b5202dbdf61569cf49a341f96e8b53a1c7c593b42a5334282eb09996813e084b2a851bbf09d8db8372f3e263778415328f1111910b7d5310a8046d1ad257c13c213ca595ea98f15a62e57a1ec20f31fa465c08696181bba1f6392abd60fa2366950d2ebb64f84f60c0ec93aec716f59c8e5fcb209768db83d376aa53736faa7cc948596a35582097443b958bdeffb5d1867ca03e3212adc4b77044016bbc698d90cc453466bf77a5444177c557c54cdf794a630e732b92411f1095d5083892651395d14f2122251accbe49af3b748d8899b7a978fc03f2eb5054188a20a0fab414f3a04914d426dd9dd571063242ac7f3ee2955d93add653d72e823f98f6e40ba4d9bdf53236f900133c33d7292cb451800cf6a674f66c33a5397ecc7b8b4a872085f63b1d7daf4f0c655ce856682b86fe0bfd266a0bfc1fa596f4c6b49336479a56d48acfd56c38ccaf52e29096b7d2a415ee4616c7af6c2abe0c00bc6c48c40c3b070ba8e77ccf9631da2f3846fb6100d57dec5dab077ae51f7667bcee4d70f46140e60dcaf992ed1e69051c9688232880426811ffa3ea917d82a43f114b2bccc193388f91587a9e686a5e1a75afef78a5ec78a3c1dddd796885d556f1cd3f929451ab2cc0446bec6d84abfa91f7979f31e9000000000947ed0ac0e89cc6082d2e295fe1d3e78525da0ee051dbcd06b90432680ec12171314073afb8b9e8899a819a2b2f16cbaccc7ac835c6cf82efe54b6336d3d4faaf8031b6e92dcd123105851620ac65885088f513c2ee03d051ac7000000000aeb0622acb0c073ff357264cb72507fff27133c4902a2e3b03697598c560bd183244a9d5c3c1b898f1a84d0e3095042c99e8186a3ff8a032b72154a85c0001596dbef90763a02b72bc8dc24fcc53ea01de49f88ade0249ad2dc8871ca8f7bac8103dc2a72198ca212e2bcd08e082f7b7422dce89f256adb9134a688c672254990e50c76229acc60f35ff90db894466f9e0b6629e59844595a0000005a23a06ff824ba8e2800000000000000002cbcc00008a700000000000307600000904b300000000000fd7f7d52173aa0e5402b0570ef867f10006273ef509f3c349e0397f24346d20b7d116550352f849093feb5ab1fe09287a780000190f9c7d3b53e8d186967d78189e513b894f0d9a77d124f753862a16214534016fd491a4bed564040a29222d45b2adf79042655fdee87be1790f0cb5067ae9210e5c0801fd7c4509fc69a11ee19800cf219480b3ec9e74fb990ee2ea4518140f11d158526e7648b5dcb8324bf81bbb06324b4d877bdb81f36d7b2181b8b4cc5e7b715fadf519aee38c174653b848744ce1ebd520732a4c56799e583f8a82283b5fdbb924bb2c95f9f99a0df0d9530af303d0a9c0a1409ec4f3d6568ee9721f9721b4ac6f5306eb271faccc82be04025f803578b62dbcae8b80e06f5fe580f1f9ff358b311f30152b793811b5cd7dcbd788857711e1a377c16496f004263d7b5b00eba6cdcae1f83d4ef1d1b92597dd7ad2daee183c198b46710bd38dc076b015bd1081d645e7ab589cbb0071d78531d748dac438bc17bceca1236fc91f7da7f144e95e7371daed49231272924b9ae641fcd8614104728b798617d60d9ff3335173706716bf78ae452ea6e8c65c947aeaf59dddeed72ee90fd8dc220ef56be4915fdf23f9cb98c4b7a862667b22514819f81b5e5d534bafd54c1c4095a00936d3bb193fbe5f525d1f443f47a9031707107b8ed6393def01b798a58f419b0c104e03ea47072829dd4f6fc09c9854e0ef4245d65967d6b7f4f57d987a5f43b6de82b071d43d7e083b9e9fe5597ee39d7f4cf634caa80bb3d602707e3df1edc14e054f19c4cb3954c06d1b2fefc6b21c95d03f03ba8fba431ab06210fd7a7384ea960e066db7b5a6b6c413744ace88e351af3c4fa1dfdea55685171ad02204b71358e0ec1be745c674d95d29d1410823806ba488b10870a6c11b0a1984821d965fbb8e0bac8d238b5916bab15ced494a893d0fa4c3f5f967363ef7b8fb0042ca1413dab1e43c733ae44f5d4fe4976aab5007087d97085014e5d8d7d0496b23e8fabfd9f3825fcb67ed4b1978c7299e69c4fefaf48f1fb91b6bbcc658abaa75d4b2bd6c59552c765b46aa856fc80543c2f0b6fbc114dc5c3d6b6f88448178cfcdcd66d0c86e55c44843873969064328e32d8b5953b9062d5f42001c4ba72598a89369e28ac1c7d23acdf26047651a8875c27d3a08f4866a9f211a0cba6642724176bb99f65dd0850bd56e6a9318e2ca542191b34f08becf45ae3318bfc9d395293559b6e0a7b9ea3edf58f20b00386c15051f9831e793cfb7e8683f2b6ea164d1232a0394551de2a797015ca0eccb3b3846df353814e00b69409256de79ad84f5e8192e6600213608e52e6ed264392c3cacd76800003aba053f190035456b55dac6164124163e0f0ce1c88fb501fe50a3ea3fc1c8ae27555b12bd94fb2c7fd378e958a4f13121e934afd3a325291a129107b572480dd84d4162f65f2ea3ed653b53328540edb8b70240a6a293e3f68631a358b7070c5541331b40dbc7c842e8db9e98b36001c71df1343648129ab69ffc60ffd35301dec61e0daff450171f03c2b2c00786044b1d90d218c48ccfd477ba18a5ded4d5a0e74908b028f28eb3e3a58522716ed59c2572620f21bbc76dfd861ba28190c7b6242e6fd26dd120f3d296e489b66547fdbd7ccbc919def5dbaf2cffb41e454812facd0046ef00d1c800e92a1d3236a5c2ca3ce4136b9bb48286af521fedf0ab0072a0fe34da718b626b144040a3ea0b0d7f5508fc04fd5a91b9ec0ab0c5644338c9d267b0fb9de1c4b83e28f719fe3528cd5614568fc00393262a3e067acabf369e82e4a15a9ba5df5e1023b72dfb04654646b0ae9dbcbf2862ae33a92c90f11230c17642c9b6ac64c9973d139ad0d6d699892b85a21098166562489830fbddc91c99d6a1edfb42dec03b26b38d937c6d7c7d10f956ad1c60239cd7d2124db07960003c46e086b00010d06ef2c61b9630f28a66026641067dedb56ac35ad8ba53f0000000),
(2, 'VALERIA', 'TORRES', 'SALAS', 'MIRAFLORES', '985458748', NULL, '2022-02-22', 0x524946466c11000057454250565038206011000090c0009d012a7202a1013e2d168943a1a1211058bc9c1802c4b4b77fffdefdd1600310ee7fc8eeb45b906a554014f0357b166f93f4c654bfe7bf9fee72f0cb57ffdeffb727ca1747fbe79fbf1e913e7dff1f98bf34a9f366f632bfffc45df47b7af31e4ff97fe8ff5a9bc84e7fe004bc9d5a2de9f7ec995621d37a647dbb03c5b3ec4df5753d976d85ffe04e05f7749f084a1df4fca8770e962e8f6c1cda38df7a8d029be9aeb1de09406480dbf5b05b6ba548d3a1e8c4a1cdf0342de76f3765d87d21e5971cb0a2f059688609bde050c3146e5232569c1c140afb7c3c190980a61c9bb74cc832716db3df1b7b84f98b20d8c5b461797923f4b049da63cf5fd060eabfa240f0e4db5262a8665480df92e90fdcb523545a93833c357d37c4bb469c269a7aa91f4319fbd42cf3afd10646aecb525cc8238e4faa81cb1cf57f32ea73f236c1af89782f347ba947f332be0f21a5b99dfeed4099effef2a202780ccd80ac8cb8216d6e6d7dc18c234b818e64c188034ba54fe6d4496f1f0f4ac69a5fd386ccebdc07fab009c0745453d9d36fd50ca70000793db573f5dd228b6fbd608b7b910b7bbc5dc4447a7fea4c2ee7b37d08f7e5311ced65fa5ed56b8f12b440808c66fae422596f0962f08cdc64130ca33db1566a4419a9861fc97ea59cf5927e03008599e593cadcaf9107be24dfc3eecc8b19af52a9a6bec9e8562f66b7b8a09996566c190fe7dde01c8f3059cc3f562be2483f23b6c3685b29da8e5ece237ee3587a951bd3767685ea4e54d58ee8ffc954de32a8f6c40240fc67f9fd9cd03838518d57917c39a3efe7f7a02f87bd4a1c28b73253a2b8b124a0bea94aa18fd2c35b91b0788cf0e218ddc8fdaac57486eeaa11a2d0801eb4abc462e841850cfd2c35b91b0795aabcecfc3c31fa583f7e744ced8a0f4f01fad4b5321ea22b57c8268a40352363513a039a1fc8d3bb10ea4ebdd8875275eec43a93ad7b3b26709e3df4bf1155e767e1e18fd2c35b91b0795aabcecfc3c310f30d6c65bdd8875275eec43a93af7621d49d7bb10ea4ebdd8875275eec43a93af7621d49d7bb10ea73944ad55e767e1e18fd2c35b91b0795aabcecfc3c31f9fe9b0795aabcecfc3c31fa586b72360f2b5579d9f87863e152d3dd8875275eec43a93af7621d49d7bb11030adc8d83cad55e767e1e18fd2c35b91b0795aabcecfc00a7f4b0d6e46c1e56aaf3b3f0f0c7e961adc8d83cad55da1b3e8f35f0d9f479af86cfa3cd7c367d1e6b9a981dbdc8e5938d317eb0f36741e3bf85fa161c2b72360f2b5579d9f87863f4b0d6e46c1e0927f33165a6e12753985633af43b15f0eb9c2ef20403ac90b1c875275eec43a93af7622040c508a6ab78b52d3855a75b1a49e0390c6ab96a09d0e0a4ec238e07575961ec9f14fc311430d6e46c1e13d584cfc27f6093bf00391791ac48ba94618ba1abf14c50184d4254f2f4980c57fad119f6a7c1d476c96a0f1657674f935a6f5ef67594023514367410502bd0f8b5aebcf06b025a4af9575ca0ad897e124bc9348cf126f31cd25a407c8d446b4afd4a7766fe18c46724eda063854d37a9abeb9d860b6e43d37acd5a9ae150c6c7d6ff116cca5b6115fe1d49561346e7517a671a2834682e7114393c892571a58af5b19adff262fe45961dbfd7fc7c2368f8491f8fe48a9ddb4f7bc48aa667dcbd5c34f821ee9863718e870627a5a9f56408da6b3c07222d9fba3feb75a947178c75404e9644275b93ded1cf38bdcc0f0864e6ba86c94a85e8102fbaa0dcde1649cd98526be42e19e3eed4bcd05b557e589db088d4b3f7fdee8994d8d9b75f03e72748bf745478a84b036f49c01cd1b999a24fc2c6e3af35ea6fecafaa556c0940c530a00b5c65a93ec881b19009c2e7b5a9abfb17c9df1081c33cb5e9b6ec7452a9cb73dfd42416c08f86ab98c9620e77b95bfc09e449366932a4dcc975bae8fa86718b297d0225c7462e926e95f9f29b386e50dd78a162464d70f82914b26a682e2887ee5a58758514c4849ed7d5616eb6d6529566e7f4a675b163bcd30b2ab7b3cf0ab199caa2c62daec126be9644f1b7a62b4dfb4a372ed4676a49ad8bde25dd115b37bddf0cb110f7bf303641201e3d9b4ed416ee88752f37bf726affb9d50e1b787b667661b61882f518ca74f8e1ba90482801e8000fefdbad01d574b3c8d026604a7883e41c7554d17c366dd089bb9ab054886d7af24d6c4b332325765cbd19a3979b0fca3131b312f519223d7c28c7dfe5ffa32b88b5b0837c723432dbf5be6ba875e3d9c03ff0d2e4b0c222d5abff8badd5325c23891d8ba4eb86207e4a31c834d51602535e26ea1b645b09db958a14711798a215d7b988493b963438218a4af82857574744a7edfa5a41469d4830014a7fc182aaf3bfb5707e968d480cb4f4fd88729558155b2e88c74eae122a1797c745a44f2ef974d488ae896ccebcf123c5f9bd31cebfa005211de187ac32e6f965a6afd8afc4f33a3c21ceacc954c8b2d44807fb1bbe46cf4cb5b997fc29bffa13f898dd2680056f189c104ba6c7c4abb293adb02adc929eaace7df59d90ddb73b4fd14d604002801047310865ebf32936b33e717d2c4a6a67fb7910cb37073eb2b912726a32f977d9d666ed0c551f8385dedaf15d7ec010e9c051a2d8cf3c10414ed24c4afaa29a9a54e06b5cf9335e78ed96ff9a880022d99c84bef3a768f7b52ed112663c273db0395c9d8c8e553a3dde7d435baca78469423ac169a998b0e55c26b40edd40b83d7c72716140531562ddd600dd92f006d48744476beef7c4df90157f746df744bef93a6a445729d366a0e02a9b7ea09151eaf6cad1d2c0469685fd2a294f3cceec5833a0185ab63639bbeac05f8fe62809025c317b03454007c678f82030cf9434980c98c2cc7e4245e9ba0f8716232531377d4f6ebb3bbd6f9667ce9866c4091fb9cbfaf46e664c6c3a6d532f8594abee08414a73007d10ce0f6ac500aaea4dd11ea11ee2ce61b61cc5489922180199c89c435477a687344f4825c91c2c418f0445b79a2bd55d22fec56d6911c00407a0172926bf75944802f81e47c466dd16bf9a167d0caa07a60d1b2ba26eeb653b5a94917cadf88d794ded66fa308b1fb27c7552bab1c68cabc7ab54735c8cb4b622c0d8e8aaff69281491a96e3a83a2c7aa5234d0089529fe8b5202dbdf61569cf49a341f96e8b53a1c7c593b42a5334282eb09996813e084b2a851bbf09d8db8372f3e263778415328f1111910b7d5310a8046d1ad257c13c213ca595ea98f15a62e57a1ec20f31fa465c08696181bba1f6392abd60fa2366950d2ebb64f84f60c0ec93aec716f59c8e5fcb209768db83d376aa53736faa7cc948596a35582097443b958bdeffb5d1867ca03e3212adc4b77044016bbc698d90cc453466bf77a5444177c557c54cdf794a630e732b92411f1095d5083892651395d14f2122251accbe49af3b748d8899b7a978fc03f2eb5054188a20a0fab414f3a04914d426dd9dd571063242ac7f3ee2955d93add653d72e823f98f6e40ba4d9bdf53236f900133c33d7292cb451800cf6a674f66c33a5397ecc7b8b4a872085f63b1d7daf4f0c655ce856682b86fe0bfd266a0bfc1fa596f4c6b49336479a56d48acfd56c38ccaf52e29096b7d2a415ee4616c7af6c2abe0c00bc6c48c40c3b070ba8e77ccf9631da2f3846fb6100d57dec5dab077ae51f7667bcee4d70f46140e60dcaf992ed1e69051c9688232880426811ffa3ea917d82a43f114b2bccc193388f91587a9e686a5e1a75afef78a5ec78a3c1dddd796885d556f1cd3f929451ab2cc0446bec6d84abfa91f7979f31e9000000000947ed0ac0e89cc6082d2e295fe1d3e78525da0ee051dbcd06b90432680ec12171314073afb8b9e8899a819a2b2f16cbaccc7ac835c6cf82efe54b6336d3d4faaf8031b6e92dcd123105851620ac65885088f513c2ee03d051ac7000000000aeb0622acb0c073ff357264cb72507fff27133c4902a2e3b03697598c560bd183244a9d5c3c1b898f1a84d0e3095042c99e8186a3ff8a032b72154a85c0001596dbef90763a02b72bc8dc24fcc53ea01de49f88ade0249ad2dc8871ca8f7bac8103dc2a72198ca212e2bcd08e082f7b7422dce89f256adb9134a688c672254990e50c76229acc60f35ff90db894466f9e0b6629e59844595a0000005a23a06ff824ba8e2800000000000000002cbcc00008a700000000000307600000904b300000000000fd7f7d52173aa0e5402b0570ef867f10006273ef509f3c349e0397f24346d20b7d116550352f849093feb5ab1fe09287a780000190f9c7d3b53e8d186967d78189e513b894f0d9a77d124f753862a16214534016fd491a4bed564040a29222d45b2adf79042655fdee87be1790f0cb5067ae9210e5c0801fd7c4509fc69a11ee19800cf219480b3ec9e74fb990ee2ea4518140f11d158526e7648b5dcb8324bf81bbb06324b4d877bdb81f36d7b2181b8b4cc5e7b715fadf519aee38c174653b848744ce1ebd520732a4c56799e583f8a82283b5fdbb924bb2c95f9f99a0df0d9530af303d0a9c0a1409ec4f3d6568ee9721f9721b4ac6f5306eb271faccc82be04025f803578b62dbcae8b80e06f5fe580f1f9ff358b311f30152b793811b5cd7dcbd788857711e1a377c16496f004263d7b5b00eba6cdcae1f83d4ef1d1b92597dd7ad2daee183c198b46710bd38dc076b015bd1081d645e7ab589cbb0071d78531d748dac438bc17bceca1236fc91f7da7f144e95e7371daed49231272924b9ae641fcd8614104728b798617d60d9ff3335173706716bf78ae452ea6e8c65c947aeaf59dddeed72ee90fd8dc220ef56be4915fdf23f9cb98c4b7a862667b22514819f81b5e5d534bafd54c1c4095a00936d3bb193fbe5f525d1f443f47a9031707107b8ed6393def01b798a58f419b0c104e03ea47072829dd4f6fc09c9854e0ef4245d65967d6b7f4f57d987a5f43b6de82b071d43d7e083b9e9fe5597ee39d7f4cf634caa80bb3d602707e3df1edc14e054f19c4cb3954c06d1b2fefc6b21c95d03f03ba8fba431ab06210fd7a7384ea960e066db7b5a6b6c413744ace88e351af3c4fa1dfdea55685171ad02204b71358e0ec1be745c674d95d29d1410823806ba488b10870a6c11b0a1984821d965fbb8e0bac8d238b5916bab15ced494a893d0fa4c3f5f967363ef7b8fb0042ca1413dab1e43c733ae44f5d4fe4976aab5007087d97085014e5d8d7d0496b23e8fabfd9f3825fcb67ed4b1978c7299e69c4fefaf48f1fb91b6bbcc658abaa75d4b2bd6c59552c765b46aa856fc80543c2f0b6fbc114dc5c3d6b6f88448178cfcdcd66d0c86e55c44843873969064328e32d8b5953b9062d5f42001c4ba72598a89369e28ac1c7d23acdf26047651a8875c27d3a08f4866a9f211a0cba6642724176bb99f65dd0850bd56e6a9318e2ca542191b34f08becf45ae3318bfc9d395293559b6e0a7b9ea3edf58f20b00386c15051f9831e793cfb7e8683f2b6ea164d1232a0394551de2a797015ca0eccb3b3846df353814e00b69409256de79ad84f5e8192e6600213608e52e6ed264392c3cacd76800003aba053f190035456b55dac6164124163e0f0ce1c88fb501fe50a3ea3fc1c8ae27555b12bd94fb2c7fd378e958a4f13121e934afd3a325291a129107b572480dd84d4162f65f2ea3ed653b53328540edb8b70240a6a293e3f68631a358b7070c5541331b40dbc7c842e8db9e98b36001c71df1343648129ab69ffc60ffd35301dec61e0daff450171f03c2b2c00786044b1d90d218c48ccfd477ba18a5ded4d5a0e74908b028f28eb3e3a58522716ed59c2572620f21bbc76dfd861ba28190c7b6242e6fd26dd120f3d296e489b66547fdbd7ccbc919def5dbaf2cffb41e454812facd0046ef00d1c800e92a1d3236a5c2ca3ce4136b9bb48286af521fedf0ab0072a0fe34da718b626b144040a3ea0b0d7f5508fc04fd5a91b9ec0ab0c5644338c9d267b0fb9de1c4b83e28f719fe3528cd5614568fc00393262a3e067acabf369e82e4a15a9ba5df5e1023b72dfb04654646b0ae9dbcbf2862ae33a92c90f11230c17642c9b6ac64c9973d139ad0d6d699892b85a21098166562489830fbddc91c99d6a1edfb42dec03b26b38d937c6d7c7d10f956ad1c60239cd7d2124db07960003c46e086b00010d06ef2c61b9630f28a66026641067dedb56ac35ad8ba53f0000000),
(3, 'BETTY', 'MAYTA', 'MAMANI', 'sin direcccion', '985458745', '', '2022-05-03', ''),
(4, 'prueba', 'sdg', 'sdg', '', '', '', '0000-00-00', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000004b504c5445ffffff979797929292919191989898fafafa9d9d9df2f2f2a4a4a4edededcbcbcbafafaff7f7f7e3e3e3c3c3c3a9a9a9bdbdbdd4d4d4dcdcdcbfbfbfe5e5e5eeeeeed7d7d7b7b7b7c9c9c93e716801000008c849444154789ced5dd996ab2a10bd8222ce434cf4ffbff46af74901c6242a53d98bfd744eaf4828a909a8daf9efbf80808080808080808080808080808080808080005c48d2aceff2699af2aecfd2c4f7740ca3eceb864594925f501ab1a6ee4bdfd3328534e7b354d11af3df789efa9e9c3e92bea0afd28194b4785c5b5f939cd1b7e2fd82b2fcc232e6f1fbe5931632ce7d4ff424aa688f7cbf32f6be277b02e5f84d3f155d1d2fe758fb5d0a7ae165ac5f1770098411e39cb3df7fbe2c63ed7bd20790142b01098d9ba9bf3f9d6692f55313afa3082d2ee3544baece9d44e346fe52f6e3ca15117e11632c9932711ae7ef265eaec225619710511590b0eee3a7bbd5a72f2062a2a82899bedad6a47c9ee3b7c582c8f3cd763c91c9ef8414d667a809394cd0dbce876ef243c883c6439a2b79ec7f4c5a45baff310f4863c9a6aa030f56d27331e64da36c84c3a127876b98a2a4a3e49880f32a8a9783574f13c9988ee7d1b2095b989c11d4b00ca71ca270c304a93f2d858a36a7066884a2e24c6dc41246e7bc611ae15ec4122205397bee92c33b8a312e620766c44e8fc1c0903fe7eb7ec035fce8133dbc256e7066869019999c784d7b7276b7003fa315af212822f43560424c67879788618ccdcc10eecf25247bb74cdbb8c13877433333850e667634215531c038d8bce9484c28a9a4a66434343353e0a626061b3064f102b6bedaca05ea8e2cad816848f5cc70364418095744846484ea9e06263012aeab1ac89989f6503012ae7bd3da9c7f009f852bab699f12ea9f2215665207d378864303510c246c0dcccb1c0c4a68702893f8fb12dab0435c5afaf77d29c4c3587ba808673c84bd39d51e0a694e632e9b3497e19a051ce61eb834dc86b84ac475c92636aeba1eb045ba3f041faf7d82044751d86e11c5e642cf1033a45b0bf90469d21a673274a26501702fa3673f70e8ad1f584d030edbe8910a85352a38f3c695952e80b969b90870585aefc912404d3582beb8dec1a7a4f215f0b93bee050d240eb8d2ee5fa4a24ee16c4629ae0f09ae84e61fc0d79c3dd917174f08fdcc0208d66753b7560c80eb34182016f1d42da9281942ba84b3258aaa267adc8eee5a4f3b82545173f85e4514abe8267e5601ae624ede8e895872f128ba0b6e098358c463ad05720303be9c5b865c047da01236957a88b097414bd57711d91bf97bf9a1f319911b24721df4ce5276b9903d8ad1b72364d27a44847ddf22546a8b0dd2582f6350264c8bcf7531a9da0486dbcb3c512922123abe5f966c541bd808c25de116541123429a6ecbada65db36a43bcc60a2ec8d60da424e25325bb90b29af8ba4d98c417b0c127926635fb455b29e1e3ad9eeadbc897ffbc7ca041ef45156cb4c946bf9db25b1db2d1812629345805812f200cd74dd33eb4fb454476dfbb0b49dfc6df2503c4637f2d2bbcd7ec03dfc7e62a52565fc79556c5b633f9262429ae11f02b7e842e4205e5f81d8e8e7c5790715893293cb13027d18533a2699a8537822e8c4a6f642cf0e66ec9b835e94538de767d96086f992459dfb5fc8d98a445ea571f9b64506cec3eec2dba916d3e85b18bb47c5550429bfc7b04c8f2f516e34755d11d99bef2d15096ef6d0ab9bfd249a1e3ab69d7742d4763dbf0124329a64c2e7da16b698f2b59dabe90b9a0d1d441cd4009b99dec92ad57eb1823891b9d3a2d1d27b13a9742d2fc34a987655cb3b34b55788ae092e6a60aa83fa35cd508ef5b7f659bbb8f8fe61b32e590c7f7e658a19d3376a7a21cf250af17c26a183417a37b45513daea2ec64cc462f25c2fa73379d2ca0e1d3ce44a6baf1c53f5049025ad024d9c4fd54b9a5f24bb6716f2bfb1b1f355209b72ca06ae61e78dca4fdbcb5a82c6513eec3a2e4652c360a4af9846b6f2319a1556a2e49531c9b221482daee8b90acdd6991462ef900bb6df3827c2aa20efb1304a193fd8b69b9f0c19d9e8a7cc341df87208f72579429921927054c6233e52cb5111588c405774529f4d451d5a208858e6294eb2f94eacd5df96f61f74e16511cad39233a926ae41d2ca2b484ee0a414579b52685d11e08a3705827296a3a1d5822a4514e5b204550b4de3c2b6dec6d7f950211136d2751d03ee7f8c05d74e15aee0f2e7d58e102c912ed6619e255baaea807776ad9fe859f717d3494baf13522f4baef96171ec06675985052f7b7ecbd133515871716bfe41de0bb2da6c3600b5e1a04e154caa20f102c343e4ed905af9f3d1381e34b7d9e9d330036027ba7c39e79478cf1a7bc0524349e7847c0935b4b6b8421f8a957ceac1b2230ab78eaa083dcd45aa330d8812ffa1feb13002e285f352e40856dc9d5c04f9078abc512876076cc445038f92aa80356384bc9b7682bf455152958e1ece454c015e7e0446f1b8215ce4e1d38045c7f5c71c08b6927e5004fe6af63feb97bb3e4cd61f7e28f0d0fd85bedecde1090c31aa4badd02021aea9b5d09c108fc5173d4765dc1df9710f25e7f45bb96536f30736fdc0ee240d18e2b907e4ad38f88620296b6c0f2cf1bd6ee13b7542ea9b5f4f51295d7b71f32368eb296baa2ec157ecbfd4d84bcfd316af3c85aa5f9dd5e45864aae43881b9a80b4e3abe67e8b35208f55e31565b685bce7cd0bcb8b553ff778e9f52471b1a315f61caadb4697b0ed8bfceaa51b7659ca68cc33b36b99f637be4162e3a2ed72dd22f85c4a1a376d9719703e495a4d05db922e72d5cad6bde30a20b3caf2a27e0c27e54cee55de362c7a4f46a0d9dcb87f26b74fcc1e3f2442aca8bb7ed8a950b3648f59b4f82dffd0bf815dc6e0b4dd30c7b59c7446cc9ba2ada7bc7bf4d59065d93d4dd37b960d43d53fba7cba8d0567e48742e21b1b0a759e634c2f2df49f16f5575e05ef29a33686a0858ff6fcbe38c8b27312b313ab7dfda065d2cde1d8ae9484b0d66fcf7ad98fecadefd3958e46cd84a1253fc9f231362ce56cb7a4a92b4c3ff2983e6e7cbfe7f82cdc1c56c77c40c95173efa782ff44ec734c580b0dd19c199dcd185c214987ae96e2dc6761ff0512c278d14e7d8686eb630f9232ab1edd12d41bcee28d7818b3391d18eb7c497e4a943a7914495296e982b24cfe844001010101010101010101010101010101010101010101010101010157c3ff7562487656816ba40000000049454e44ae426082),
(5, 'ALFONSO', 'PORTOCARRERO', 'SAHUANAY', '', '', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nombreCurso` varchar(150) NOT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `idGrado` int(11) NOT NULL,
  `nombreGrado` varchar(150) NOT NULL,
  `modalidad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idPersonal` int(11) NOT NULL,
  `nroDi` int(11) NOT NULL,
  `nombrePer` varchar(450) NOT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `especialidad` varchar(150) DEFAULT NULL,
  `img` blob DEFAULT NULL,
  `fechaRegistro` date NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidoPaterno` varchar(100) NOT NULL,
  `apellidoMaterno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idPersonal`, `nroDi`, `nombrePer`, `direccion`, `telefono`, `genero`, `especialidad`, `img`, `fechaRegistro`, `nombres`, `apellidoPaterno`, `apellidoMaterno`) VALUES
(1, 76630862, 'PORTOCARRERO/MAYTA,ALFONSO PAUL', 'MIGUEL GRAU', 929972411, 'M', '', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000004b504c5445ffffff979797929292919191989898fafafa9d9d9df2f2f2a4a4a4edededcbcbcbafafaff7f7f7e3e3e3c3c3c3a9a9a9bdbdbdd4d4d4dcdcdcbfbfbfe5e5e5eeeeeed7d7d7b7b7b7c9c9c93e716801000008c849444154789ced5dd996ab2a10bd8222ce434cf4ffbff46af74901c6242a53d98bfd744eaf4828a909a8daf9efbf80808080808080808080808080808080808080005c48d2aceff2699af2aecfd2c4f7740ca3eceb864594925f501ab1a6ee4bdfd3328534e7b354d11af3df789efa9e9c3e92bea0afd28194b4785c5b5f939cd1b7e2fd82b2fcc232e6f1fbe5931632ce7d4ff424aa688f7cbf32f6be277b02e5f84d3f155d1d2fe758fb5d0a7ae165ac5f1770098411e39cb3df7fbe2c63ed7bd20790142b01098d9ba9bf3f9d6692f55313afa3082d2ee3544baece9d44e346fe52f6e3ca15117e11632c9932711ae7ef265eaec225619710511590b0eee3a7bbd5a72f2062a2a82899bedad6a47c9ee3b7c582c8f3cd763c91c9ef8414d667a809394cd0dbce876ef243c883c6439a2b79ec7f4c5a45baff310f4863c9a6aa030f56d27331e64da36c84c3a127876b98a2a4a3e49880f32a8a9783574f13c9988ee7d1b2095b989c11d4b00ca71ca270c304a93f2d858a36a7066884a2e24c6dc41246e7bc611ae15ec4122205397bee92c33b8a312e620766c44e8fc1c0903fe7eb7ec035fce8133dbc256e7066869019999c784d7b7276b7003fa315af212822f43560424c67879788618ccdcc10eecf25247bb74cdbb8c13877433333850e667634215531c038d8bce9484c28a9a4a66434343353e0a626061b3064f102b6bedaca05ea8e2cad816848f5cc70364418095744846484ea9e06263012aeab1ac89989f6503012ae7bd3da9c7f009f852bab699f12ea9f2215665207d378864303510c246c0dcccb1c0c4a68702893f8fb12dab0435c5afaf77d29c4c3587ba808673c84bd39d51e0a694e632e9b3497e19a051ce61eb834dc86b84ac475c92636aeba1eb045ba3f041faf7d82044751d86e11c5e642cf1033a45b0bf90469d21a673274a26501702fa3673f70e8ad1f584d030edbe8910a85352a38f3c695952e80b969b90870585aefc912404d3582beb8dec1a7a4f215f0b93bee050d240eb8d2ee5fa4a24ee16c4629ae0f09ae84e61fc0d79c3dd917174f08fdcc0208d66753b7560c80eb34182016f1d42da9281942ba84b3258aaa267adc8eee5a4f3b82545173f85e4514abe8267e5601ae624ede8e895872f128ba0b6e098358c463ad05720303be9c5b865c047da01236957a88b097414bd57711d91bf97bf9a1f319911b24721df4ce5276b9903d8ad1b72364d27a44847ddf22546a8b0dd2582f6350264c8bcf7531a9da0486dbcb3c512922123abe5f966c541bd808c25de116541123429a6ecbada65db36a43bcc60a2ec8d60da424e25325bb90b29af8ba4d98c417b0c127926635fb455b29e1e3ad9eeadbc897ffbc7ca041ef45156cb4c946bf9db25b1db2d1812629345805812f200cd74dd33eb4fb454476dfbb0b49dfc6df2503c4637f2d2bbcd7ec03dfc7e62a52565fc79556c5b633f9262429ae11f02b7e842e4205e5f81d8e8e7c5790715893293cb13027d18533a2699a8537822e8c4a6f642cf0e66ec9b835e94538de767d96086f992459dfb5fc8d98a445ea571f9b64506cec3eec2dba916d3e85b18bb47c5550429bfc7b04c8f2f516e34755d11d99bef2d15096ef6d0ab9bfd249a1e3ab69d7742d4763dbf0124329a64c2e7da16b698f2b59dabe90b9a0d1d441cd4009b99dec92ad57eb1823891b9d3a2d1d27b13a9742d2fc34a987655cb3b34b55788ae092e6a60aa83fa35cd508ef5b7f659bbb8f8fe61b32e590c7f7e658a19d3376a7a21cf250af17c26a183417a37b45513daea2ec64cc462f25c2fa73379d2ca0e1d3ce44a6baf1c53f5049025ad024d9c4fd54b9a5f24bb6716f2bfb1b1f355209b72ca06ae61e78dca4fdbcb5a82c6513eec3a2e4652c360a4af9846b6f2319a1556a2e49531c9b221482daee8b90acdd6991462ef900bb6df3827c2aa20efb1304a193fd8b69b9f0c19d9e8a7cc341df87208f72579429921927054c6233e52cb5111588c405774529f4d451d5a208858e6294eb2f94eacd5df96f61f74e16511cad39233a926ae41d2ca2b484ee0a414579b52685d11e08a3705827296a3a1d5822a4514e5b204550b4de3c2b6dec6d7f950211136d2751d03ee7f8c05d74e15aee0f2e7d58e102c912ed6619e255baaea807776ad9fe859f717d3494baf13522f4baef96171ec06675985052f7b7ecbd133515871716bfe41de0bb2da6c3600b5e1a04e154caa20f102c343e4ed905af9f3d1381e34b7d9e9d330036027ba7c39e79478cf1a7bc0524349e7847c0935b4b6b8421f8a957ceac1b2230ab78eaa083dcd45aa330d8812ffa1feb13002e285f352e40856dc9d5c04f9078abc512876076cc445038f92aa80356384bc9b7682bf455152958e1ece454c015e7e0446f1b8215ce4e1d38045c7f5c71c08b6927e5004fe6af63feb97bb3e4cd61f7e28f0d0fd85bedecde1090c31aa4badd02021aea9b5d09c108fc5173d4765dc1df9710f25e7f45bb96536f30736fdc0ee240d18e2b907e4ad38f88620296b6c0f2cf1bd6ee13b7542ea9b5f4f51295d7b71f32368eb296baa2ec157ecbfd4d84bcfd316af3c85aa5f9dd5e45864aae43881b9a80b4e3abe67e8b35208f55e31565b685bce7cd0bcb8b553ff778e9f52471b1a315f61caadb4697b0ed8bfceaa51b7659ca68cc33b36b99f637be4162e3a2ed72dd22f85c4a1a376d9719703e495a4d05db922e72d5cad6bde30a20b3caf2a27e0c27e54cee55de362c7a4f46a0d9dcb87f26b74fcc1e3f2442aca8bb7ed8a950b3648f59b4f82dffd0bf815dc6e0b4dd30c7b59c7446cc9ba2ada7bc7bf4d59065d93d4dd37b960d43d53fba7cba8d0567e48742e21b1b0a759e634c2f2df49f16f5575e05ef29a33686a0858ff6fcbe38c8b27312b313ab7dfda065d2cde1d8ae9484b0d66fcf7ad98fecadefd3958e46cd84a1253fc9f231362ce56cb7a4a92b4c3ff2983e6e7cbfe7f82cdc1c56c77c40c95173efa782ff44ec734c580b0dd19c199dcd185c214987ae96e2dc6761ff0512c278d14e7d8686eb630f9232ab1edd12d41bcee28d7818b3391d18eb7c497e4a943a7914495296e982b24cfe844001010101010101010101010101010101010101010101010101010157c3ff7562487656816ba40000000049454e44ae426082, '2022-05-04', 'ALFONSO PAUL', 'PORTOCARRERO', 'MAYTA'),
(2, 29674324, 'MAYTA/MAMANI,BETTY MARISOL', '', NULL, 'F', '', NULL, '2022-05-05', 'BETTY MARISOL', 'MAYTA', 'MAMANI'),
(3, 29569497, 'PORTOCARRERO/SAHUANAY,ALFONSO', '', NULL, 'M', '', NULL, '2022-05-05', 'ALFONSO', 'PORTOCARRERO', 'SAHUANAY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `idSeccion` int(11) NOT NULL,
  `nombreSeccion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idSeccion`, `nombreSeccion`) VALUES
(1, 'SECCION A'),
(2, 'SECCION B'),
(3, 'SECCION C');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`idAlumno`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`idGrado`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idPersonal`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`idSeccion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
