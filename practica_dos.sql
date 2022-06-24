-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2022 a las 12:01:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica_dos`
--
create database practica_dos;
use practica_dos;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `user_admin` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pass_admin` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email_admin` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `user_admin`, `pass_admin`, `email_admin`) VALUES
(1, 'pepe', 'pepe', 'pepe@pepe.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_receta` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `username` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `id_receta`, `username`) VALUES
(142, 'Prueba de comentario en una receta', '106', 'nereacablaz'),
(143, 'Holaaa', '106', 'nereacablaz'),
(144, 'Holaaa', '106', 'nereacablaz'),
(145, 'Maj', '107', 'nereacablaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `ingrediente` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_recetas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `ingrediente`, `id_recetas`) VALUES
(290, '1kg de solomillo de cerdo cerdo troceado (pídelo así en tu carnicería)', 106),
(291, '4 patatas', 106),
(292, '3 zanahorias', 106),
(293, '1 cebolla', 106),
(294, '1 puerro', 106),
(295, '100ml de vino blanco', 106),
(296, '200ml de salsa de tomate', 106),
(297, '500ml de caldo de carne', 106),
(298, 'sal y pimienta', 106),
(299, 'aceite de oliva', 106),
(300, '400g de arroz redondo', 107),
(301, '500g de champiñones', 107),
(302, '1 pimiento rojo', 107),
(303, '1 pimiento verde', 107),
(304, '4 tomates', 107),
(305, '1 zanahoria', 107),
(306, '1 puerro', 107),
(307, '3 dientes de ajo', 107),
(308, '800ml de caldo de verduras', 107),
(309, '100ml de vino blanco', 107),
(310, '1 cucharadita de pimentón dulce', 107),
(311, 'unas hebras de azafrán', 107),
(312, 'tomillo', 107),
(313, 'sal y pimienta', 107),
(314, 'aceite', 107),
(315, '1kg de tomates', 108),
(316, '200g de miga de pan', 108),
(317, '100ml de aceite de oliva', 108),
(318, '1 diente de ajo', 108),
(319, '1 huevo cocido', 108),
(320, '50g de jamón ibérico en taquitos', 108),
(321, 'sal y pimienta', 108),
(322, '1kg de lomo de cerdo', 109),
(323, '2 cebollas', 109),
(324, '4 dientes de ajo', 109),
(325, '500ml de leche', 109),
(326, '100ml de vino blanco', 109),
(327, '1 cucharadita de harina', 109),
(328, 'sal y pimienta', 109),
(329, 'aceite', 109),
(330, '500g de ternera', 110),
(331, '600g de calabaza', 110),
(332, '4 patatas', 110),
(333, '1 cebolla', 110),
(334, '2 dientes de ajo', 110),
(335, '200g de salsa de tomate', 110),
(336, '100ml de vino blanco', 110),
(337, '300ml de caldo de carne', 110),
(338, '1 cucharadita de orégano', 110),
(339, 'sal y pimienta', 110),
(340, 'aceite de oliva', 110),
(341, '400g de garbanzos', 111),
(342, '1 berza', 111),
(343, '3 zanahorias', 111),
(344, '1 puerro', 111),
(345, '2 patatas', 111),
(346, '1 cebolla', 111),
(347, '750ml de caldo de verduras', 111),
(348, '1 cucharadita de pimentón dulce', 111),
(349, 'sal y pimienta', 111),
(350, 'aceite de oliva', 111),
(351, '2 doradas fileteadas (pídelas así en tu pescadería)', 112),
(352, '4 patatas', 112),
(353, '1 cebolla', 112),
(354, '4 dientes de ajo', 112),
(355, '4 guindillas de cayena', 112),
(356, '100ml de vino blanco', 112),
(357, '1 cucharada de pimentón de la vera', 112),
(358, 'sal y pimienta', 112),
(359, 'aceite de oliva', 112),
(360, '3 cucharadas de aceite de oliva', 113),
(361, '1 cebolla', 113),
(362, '1 diente de ajo', 113),
(363, '2-3 hojas de curry (opcional)', 113),
(364, '2 cucharadas de curry en polvo', 113),
(365, '4 tazas (200 g aprox) de bulgur integral', 113),
(366, '150 g de setas variadas al gusto', 113),
(367, '1 l de caldo de verduras o carne', 113),
(368, '1 vaso de leche de coco', 113),
(369, 'Aceite de oliva', 113),
(370, '10 avellanas picadas', 113),
(371, '1 manzana cortada en cubitos', 113),
(372, '1/2 calabacín cortado en cubitos', 113),
(373, '1 lima en zumo', 113),
(374, 'Sal', 113),
(376, '3 kg de cantero', 114),
(377, 'Aceite de oliva', 114),
(378, 'Sal Maldon', 114),
(379, '250 g de foie gras', 114),
(380, '400 g de champiñones', 114),
(381, '1 vaso de Oporto', 114),
(382, 'Pimienta molida', 114),
(383, 'Perejil fresco', 114),
(384, 'Salvia fresca', 114),
(385, 'Masa de hojaldre', 114),
(386, '2 Cebolletas', 114),
(387, '50 g de mantequilla', 114),
(388, '1 pierna de cordero de lechal', 115),
(389, '30 g de mantequilla', 115),
(390, 'Aceite de oliva', 115),
(391, 'Sal Maldon', 115),
(392, 'Pimienta molida', 115),
(393, 'Albahaca fresca', 115),
(394, 'Perejil fresco', 115),
(395, 'Tomillo fresco', 115),
(396, 'Romero fresco', 115),
(397, '4 dientes de ajo', 115),
(398, '250 g de parmesano', 115),
(399, '150 g de pan rallado fresco', 115),
(400, '1 kg de rabo de toro', 116),
(401, '150 g de zanahorias', 116),
(402, '150 g de apio', 116),
(403, '6 dientes de ajo', 116),
(404, '6 Tomates maduros', 116),
(405, '2 Cebolletas grandes', 116),
(406, '100 ml de Jerez', 116),
(407, '500 ml de vino tinto', 116),
(408, '8 hojas de laurel', 116),
(409, 'Pimienta negra molida', 116),
(410, 'Agua templada', 116),
(411, 'Tomillo fresco', 116),
(412, 'Aceite de oliva', 116),
(413, 'Sal', 116),
(414, '1 Morcilla', 117),
(415, 'Miel', 117),
(416, 'Sal', 117),
(417, 'Pasta filo', 117),
(418, '24 Espárragos', 117),
(419, 'Aceite de oliva', 117),
(420, 'Sal gorda', 117),
(421, '½ kg de gambas de Palamós', 118),
(422, 'Sal Maldon', 118),
(423, '1 chucharadita de jengibre rallado', 118),
(424, '1/2 Lima para zumo', 118),
(425, '1 Chile', 118),
(426, 'Albahaca fresca', 118),
(427, 'Perejil fresco', 118),
(428, 'Aceite de oliva', 118),
(429, 'Sal', 118),
(430, 'Pimienta rosa en grano', 118),
(431, '2 Puerros', 118),
(432, 'Patatas medianas (2)', 119),
(433, 'Aceite de oliva (40 ml)', 119),
(434, 'Ajo en polvo (3 gr)', 119),
(435, 'Pimentón (2 gr)', 119),
(436, 'Queso feta desmenuzado (60 gr)', 119),
(437, 'Perejil picado (4 gr)', 119),
(438, 'Orégano fresco (3 gr)', 119),
(439, 'Pimienta y sal', 119),
(440, '5 o 6 patatas medianas', 120),
(441, 'Una cucharada de aceite de oliva', 120),
(442, 'Una cebolla', 120),
(443, 'Sal', 120),
(444, '6-7 huevos', 120),
(445, 'Yogur griego (125 ml)', 121),
(446, 'Aceite de oliva (20 ml)', 121),
(447, 'Pimentón (2 gr)', 121),
(448, 'Comino (1 gr)', 121),
(449, 'Limón; ralladura y jugo (1)', 121),
(450, 'Sal', 121),
(451, 'Pimienta negra', 121),
(452, 'Dientes de ajo picados (4)', 121),
(453, 'Pinchos de madera', 121),
(454, 'Pechuga de pollo (450 gr)', 121),
(455, 'Calamar grande (1)', 122),
(456, 'Diente de ajo (1)', 122),
(457, 'Orégano (1 manojo)', 122),
(458, 'Aceite de oliva (2 cucharadas)', 122),
(459, 'Sal (una pizca)', 122),
(460, 'Un chuletón de 450-500 gramos (sin hueso)', 123),
(461, 'Sal', 123),
(462, 'Pimienta negra', 123),
(463, 'Ajo en polvo', 123),
(464, 'Cebolla en polvo', 123),
(465, 'Orégano seco', 123),
(466, 'Romero seco (una pizca)', 123),
(467, 'Cayena (una pizca)', 123),
(468, 'Aceite de oliva', 123),
(469, 'Queso semi duro tipo feta (200 gr)', 124),
(470, 'Masa para empanada rectangular (280 gr)', 124),
(471, 'Aceite de oliva', 124),
(472, '4 filetes de salmón sin piel', 125),
(473, '2 cucharadas de zumo de limón', 125),
(474, '3 cucharadas de mantequilla derretida', 125),
(475, '1 pizca de orégano', 125),
(476, '2 dientes de ajo picados', 125),
(477, '1 pizca de pimienta', 125),
(478, '1 pizca de sal', 125),
(479, '2 rodajas de limón', 125),
(480, 'Perejil.', 125);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `asunto` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `username` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `leido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `elaboracion` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `dificultad` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `categoria` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id`, `titulo`, `elaboracion`, `dificultad`, `categoria`, `imagen`) VALUES
(106, 'Estofado de cerdo con patatas', '1.- En una olla o cazuela amplia, ponemos un chorrito de aceite y lo calentamos a fuego fuerte. Cuando esté caliente, añadimos el solomillo de cerdo previamente salpimentado. Dejamos que se cocine durante 5 minutos por todas sus caras. Cuando haya cogido color, lo retiramos del fuego y reservamos.   2.- A continuación, bajamos la potencia del fuego a medio. En la misma cazuela, añadimos la cebolla, el puerro y las zanahorias, todo ello bien picado. Salpimentamos y lo cocinamos durante unos 10 minutos mientras removemos las verduras con frecuencia.  3.- Cuando las verduras de nuestro estofado de cerdo con patatas estén blanditas, es el turno de añadir las patatas previamente peladas y cortadas en dados. Removemos, y pasados 3 minutos, agregamos el vino blanco. Dejamos que el alcohol se evapore durante 1 minuto. Finalmente, vertemos la salsa de tomate y mezclamos para que todos los ingredientes se integren.  4.- Para terminar, añadimos el solomillo que teníamos reservado al principio y lo cubrimos todo con el caldo. Salpimentamos y lo calentamos a fuego fuerte. Cuando rompa a hervir, moderamos el fuego y dejamos que todo se cocine aquí alrededor de 35 minutos. Servimos inmediatamente.', 'Media', 'Recetas tradicionales', 'uploads/estofado de cerdo con patatas.PNG'),
(107, 'Arroz con champiñones y verduras', '1.- En una paellera o cazuela ancha ponemos un chorrito de aceite y lo calentamos a fuego medio. Cuando esté caliente, añadimos el ajo bien picado. Agregamos también la zanahoria, el pimiento rojo y el pimiento verde cortado en cubitos y el puerro picado. Salpimentamos y dejamos que todo se cocine manteniendo el fuego medio durante alrededor de 10 minutos, removiendo con frecuencia.  2.- Pasado este tiempo, añadimos los tomates cortados en cubos de tamaño de bocado. Dejamos que se cocine todo nuevamente unos 5 minutos más mientras seguimos removiendo con frecuencia.  3.- Hecho esto, es el turno de añadir los champiñones cortados en cuartos de nuestro arroz con champiñones y verduras. Subimos la potencia del fuego y dejamos que se cocine junto con la verdura alrededor de unos 5 minutos más.   4.- Cuando los champiñones hayan disminuido su tamaño, volvemos a bajar la potencia del fuego a medio y agregamos la cucharadita de pimentón dulce, las hebras de azafrán y el tomillo. Removemos para mezclarlo con el resto de ingredientes mientras se cocina sólamente 1 minuto.  5.- A continuación, vertemos el vino blanco. Removemos nuevamente para que se integre con el sofrito de nuestro arroz con champiñones y verduras y dejamos que se cocine todo durante 1 minuto más.  6.- Agregamos el arroz y lo mezclamos con el resto de ingredientes hasta que quede bien repartido por la cazuela. Es importante que quede bien mezclado, ya que cuando añadamos el caldo no podremos remover o el arroz soltará su almidón y estropeará el plato.  7.- Finalmente, añadimos el caldo de verduras junto con una pizca de sal. Dejamos que se cocine todo durante unos 15 minutos a fuego medio, dependiendo del tipo de arroz. Lo normal es que el arroz quede al dente. Si todavía vemos que el arroz queda demasiado seco o poco hecho, podemos añadir un poco más de caldo de verduras y dejar que se cocine unos pocos minutos más, hasta que el arroz absorba el agua por completo. Dejamos reposar con el fuego apagado 10 minutos más y servimos.', 'Difícil', 'Recetas tradicionales', 'uploads/arroz con champiñones y verduras.PNG'),
(108, 'Salmorejo cordobes', '1.- Para comenzar esta receta tradicional, limpiamos bien los tomates y los trituramos con ayuda de una batidora o una licuadora.   2.- Hecho esto, colamos el jugo de tomate que hemos obtenido para quitar la piel y las pepitas y lo volvemos a colocar en el vaso batidor para continuar con la elaboracion de nuestro salmorejo cordobes.   3.- Añadimos las migas de pan, el aceite de oliva y el ajo entero. Salpimentamos y trituramos nuevamente todos los ingredientes. Obtendremos una crema fría espesa de pan y tomate.   4.- Colocamos el samorejo cordobés en boles individuales y regamos con un chorrito de aceite de oliva. Decoramos con trocitos de huevo cocido y unos taquitos de jamón ibérico. Servimos inmediatamente.', 'Fácil', 'Recetas tradicionales', 'uploads/salmorejo.PNG'),
(109, 'Lomo en salsa de cebolla', '1.- Cortamos el lomo en medallones de alrededor de 1cm de grosor y los salpimentamos por cada una de sus caras. A continuación, en una sarten ponemos un chorrito de aceite y lo calentamos a fuego fuerte. Cuando esté caliente, añadimos los medallones de lomo y dejamos que se cocinen durante unos 5 minutos por ambas caras. Cuando estén dorados, los retiramos de la sartén y los reservamos.  2.- Hecho esto, preparamos la salsa de cebolla que acompañará a nuestro lomo. En la misma sartén, bajamos la potencia del fuego a medio y ponemos la cebolla y el ajo bien picado. Salpimentamos y dejamos que se cocine alrededor de unos 10 minutos mientras removemos con cierta frecuencia.  3.- Pasado este tiempo, manteniendo el fuego medio, agregamos la harina y dejamos que se cocine durante 1 minuto mientras removemos para que se integre con el resto de ingredientes. A continuación, es el turno de agregar el vino blanco. Dejamos que se cocine nuevamente todo durante 1 minuto más mientras seguimos removiendo.  4.- Finalmente, añadimos la leche y devolvemos el lomo a la sartén. Removemos brevemente para que se integren todos los ingredientes y cubrimos el lomo con la salsa de cebolla. Dejamos cocinar todo de nuevo durante unos 10 minutos más y servimos inmediatamente.', 'Fácil', 'Recetas tradicionales', 'uploads/Lomo en salsa de cebolla.PNG'),
(110, '  Guiso de ternera con calabaza', '1.- En una olla o cazuela grande, ponemos un chorrito de aceite y lo calentamos a fuego fuerte. Cuando esté caliente, añadimos la ternera troceada y previamente salpimentada. Dejamos que se cocine alrededor de unos 3 minutos por todas sus caras. Después, retiramos la carne de nuestro guiso de ternera con calabaza del fuego y la reservamos en un plato.   2.- En la misma cazuela, bajamos la potencia del fuego a fuego medio y añadimos la cebolla y el ajo bien picado. Salpimentamos y dejamos que se cocine todo durante unos 10 minutos, removiendo con frecuencia.  3.- Pasado este tiempo, agregamos la salsa de tomate, el orégano y el vino blanco. Dejamos cocinar alrededor de 1 minuto para que evapore su alcohol y mezclamos para integrar todos los ingredientes del sofrito para nuestro guiso de ternera con calabaza.   4.- A continuación, devolvemos a la cazuela la carne que habíamos reservado al principio. Cubrimos todo con el caldo de carne y lo llevamos a ebullición. Cuando rompa a hervir, añadimos las patatas peladas y troceadas. Dejamos que todo se cocine durante unos 20 minutos, a fuego medio.    5.- Finalmente, agregamos la calabaza cortada en dados de tamaño de bocado. Corregimos de sal y de pimienta y agregamos más caldo si es necesario. Dejamos que nuestro guiso de ternera con calabaza se termine de cocinar otros 15 minutos más. Servimos.', 'Media', 'Recetas tradicionales', 'uploads/guiso de ternera con calabaza.PNG'),
(111, 'Garbanzos con berza', '1.- La noche anterior ponemos los garbanzos en remojo. Introducimos los garbanzos en un recipiente con abundante agua, que los cubra por completo. Añade si es necesario, una cucharadita de sal o bicarbonato dependiendo de la dureza del agua. De este modo, conseguiremos que los garbanzos se ablanden antes.   2.- Al día siguiente, escurrimos los garbanzos de su agua y los ponemos en una olla amplia, junto con la zanahoria y el puerro cortados en rodajas. Cubrimos todo con el caldo de verduras y lo calentamos a fuego medio. Dejamos que se cocine todo durante alrededor de 1 hora y 30 minutos. En olla express el tiempo se reduce a unos 30 minutos.   4.- Mientras se cocinan los garbanzos, cortamos la berza en tiras. A continuación, la introducimos en una cazuela con abundante agua hirviendo. Añadimos una pizca de sal y dejamos que se cocine durante unos 10 minutos. Después, escurrimos la berza de esta agua y la reservamos en un plato.  5.- Hecho esto, en una sartén a fuego medio, ponemos un chorrito de aceite. Cuando esté caliente, añadimos la cebolla bien picada. Salpimentamos y cocinamos unos 10 minutos mientras removemos con cierta frecuencia. Cuando la cebolla coja color, añadimos el pimentón y lo tostamos 1 minuto sin dejar de remover y se mezcle con la cebolla.   6.- Cuando los garbanzos se estén terminando de cocer, añadimos este sofrito junto con la patata pelada y cortada en trozos de tamaño de bocado. Dejamos que se cocine todo otros 20 minutos más. Cuando la patata esté cocida, añadimos la berza y dejamos que se cocine nuevamente unos 5 minutos más antes de servir. ', 'Fácil', 'Recetas tradicionales', 'uploads/garbanzos con berza.PNG'),
(112, 'Dorada a la bilbaina', '1.- Para comenzar, vamos a preparar la guarnición de nuestra dorada a la bilbaina. En una bandeja o fuente de horno, ponemos las patatas peladas y cortadas en rodajas y la cebolla en tiras finas. Salpimentamos. Añadimos un chorrito de aceite y el vino blanco y removemos para mezclar bien todos los ingredientes.  portada libro ¡Que Viva La Cocina!  2. Después, colocamos la bandeja en el horno, previamente calentado a 180ºC, calor arriba y abajo. Dejamos que se cocine aquí alrededor de unos 20 minutos.  3.- Pasado este tiempo, removemos todos los ingredientes de nuevo para evitar que se peguen. Corregimos de líquido y dejamos que se cocinen nuevamente otros 20 minutos más.  4.- Cuando las patatas y la cebolla estén casi cocinadas, colocamos sobre ellas, la dorada previamente salpimentada y dejamos que se cocine todo alrededor de otros 20 minutos más. Retiramos la bandeja del horno.  5.- Finalmente, preparamos la salsa de la dorada a la bilbaina. En una sartén pequeña, ponemos un chorrete de aceite y lo calentamos a fuego medio. Cuando esté caliente, añadimos los ajos picados y las guindillas de cayena. Dejamos que todo se cocine aquí entorno a 1 minuto. Hasta que el ajo coja color.  6.- Añadimos nuestra salsa la cucharadita de pimentón. Removemos bien para mezclar todos los ingredientes y retiramos la sartén del fuego. Dejamos que el aceite tueste el pimentón durante 30 segundos. Pasado este tiempo, regamos el pescado con esta salsa, que además de darle mucho sabor, terminará de cocinar nuestra dorada a la bilbaina. ', 'Difícil', 'Recetas tradicionales', 'uploads/dorada a la bilbainaCaptura.PNG'),
(113, 'Risotto de bulgur, coco, setas y avellanas', 'Preparamos y pesamos todos los ingredientes para que nos sea mucho más fácil cocinar.  Ponemos una olla al fuego y le añadimos el aceite de oliva, una vez caliente añadimos las setas que previamente hemos lavado con cuidado y cortado en cuartos para marcarlas y las retiramos del fuego.  En ese mismo aceite añadimos la cebolla fina y el diente de ajo y los ponemos a pochar a fuego bajo para que vaya tomando color.  Añadimos una pizca de sal para que sude la cebolla y le echamos las hojas de curry y el curry en polvo para que se tuesten un poco y suelten todo el aroma.  Una vez tostados añadimos el bulgur, lo removemos bien y le echamos la mitad del caldo de verduras para que empiece a cocerse despacio.  Conforme nos vayamos quedando sin caldo le vamos añadiendo un poco más para que nos seque y se cueza poco a poco, quedando meloso y suave. Esto puede llevarnos unos 14-15 minutos fuego medio.  Mientras tanto vamos preparando nuestra vinagreta, con las avellanas picadas, la manzana y el calabacín crudo bien cortados, el zumo de lima y la sal y reservamos.  Cuando falten aproximadamente dos minutos para terminar la cocción total del bulgur, veremos que se ha consumido casi todo el caldo, será el momento de rectificarlo de sal, de curry y añadirle el vaso de leche de coco.  Esta leche de coco será la que le dará mucha más cremosidad y untuosidad al plato.  Removemos dos minutos y listo para servir.  Terminaremos emplatando, con un chorlito de aceite de oliva y una cucharada de la vinagreta por encima. En este caso además el cocinero Juan Llorca le añade unos brotes de mostaza que le aportan un toque picante.', 'Difícil', 'Recetas Slow food', 'uploads/Risotto de bulgur, coco, setas y avellanas.PNG'),
(114, 'Cantero al horno con hojaldre y foie', 'En primer lugar, en una sartén grande, marcamos la carne de cantero por ambos lados durante 2-3 minutos. Reservamos.  Mientras, precalentamos el horno a 140º C.  Por otro lado, lavamos y troceamos los champiñones. Pelamos y cortamos en brunoise la cebolla.  En otra sartén, echamos una cuchara de mantequilla y aceite de oliva. Salteamos los champiñones y la cebolla.  Picamos el perejil y la salvia. En la sartén del salteado, añadimos las hierbas aromáticas picadas previamente. Cocinamos durante 2 minutos.  En la sartén del salteado, echamos un vaso de Oporto. Dejamos cocinar durante otros 2 minutos.  En una fuente para horno, colocamos la masa de hojaldre extendida como base. Incorporamos la mitad de los champiñones salteados. Salamos y reservamos.  Por otra parte, untamos foie gras por ambos lados de la carne. A continuación, colocamos la carne sobre el hojaldre.  Cubrimos el cantero con el resto de los champiñones salteados. Inmediatamente, tapamos la carne completamente con el hojaldre.  Seguidamente, horneamos a 140º C durante 25 minutos.  Extraemos del horno, emplatamos y servimos en caliente.', 'Media', 'Recetas Slow food', 'uploads/Cantero al horno con hojaldre y foie.jpg'),
(115, 'Pierna de cordero lechal con costra', '  En primer lugar, en una sartén derretimos un poco de mantequilla con el aceite de oliva. Reservamos.  Salpimentamos la carne y la doramos en la sartén por todos los lados a temperatura media durante 4-5 minutos.  Cuando la carne esté hecha, la colocamos sobre una fuente para horno. Precalentamos el horno a 180ºC.  Por otro lado, pelamos los dientes de ajo. Dejamos a un lado.  A continuación, en una batidora de vaso, trituramos bien las hierbas aromáticas con los dientes de ajo.  Seguidamente, en un bol mezclamos las hierbas trituradas con la mantequilla, el pan rallado y el parmesano hasta que quede una masa homogénea. Recubrimos bien la pierna de lechal con la masa de las hierbas.  Horneamos a 180ºC durante 45 minutos. Pasado ese tiempo, dejamos reposar la pierna en el horno sin temperatura durante otros 10 minutos.  Extraemos del horno, emplatamos y servimos.', 'Media', 'Recetas Slow food', 'uploads/Pierna de cordero lechal con costra.jpg'),
(116, 'Rabo de toro al estilo Federica', '  En primer lugar, limpiamos y cortamos el rabo de toro en trozos. Reservamos.  A continuación, sin encender el fuego, en un cazo amplio echamos aceite de oliva.  Encendemos el fuego a temperatura media. Echamos el rabo de toro para marcar la carne ligeramente. Removemos durante 3 minutos y sacamos el cazo del fuego. Reservamos en un bol el rabo de toro.  Por otro lado, lavamos la zanahoria y el apio y lo cortamos en dados. Pelamos y picamos la cebolla. Por último, pelamos el ajo. Reservamos.  En el mismo cazo del rabo de toro, añadimos un poco más de aceite, la cebolla picada y el ajo y removemos durante 1 minuto. A continuación, incorporamos la zanahoria y el apio cortado. Removemos durante 3 minutos. Por último, añadimos laurel y tomillo. Removemos y cocinamos 2-3 minutos a fuego medio.  Subimos el fuego, añadimos el rabo de toro y vamos girando los trozos para que absorban los sabores durante 4 minutos.  Mojamos con el jerez, salpimentamos y dejamos cocinar 4 minutos, hasta que se evapore el alcohol.  Mientras, lavamos y troceamos el tomate en una tabla de madera. Cubrimos la carne con el vino, echamos el tomate troceado y vamos añadiendo agua según la necesite.  Dejamos cocinar a fuego medio durante 1 hora y media hasta que la carne esté tierna y se deshilache.  Emplatamos en una fuente y servimos.', 'Media', 'Recetas Slow food', 'uploads/Rabo de toro al estilo Federica.jpg'),
(117, 'Paquetitos de morcilla y espárragos al horno', '  En primer lugar, con ayuda de un cuchillo quitamos la piel a la morcilla y la cortamos en rodajas. Reservamos.  Estiramos con cuidado la pasta filo y la cortamos en cuadrados medianos. Reservamos.  Por otro lado, precalentamos el horno a 180ºC.  A continuación, ponemos las rodajas de morcilla en la pasta filo, echamos un poquito de sal y miel y las envolvemos haciendo paquetitos. Dejamos a un lado.  Limpiamos y ponemos los espárragos en un recipiente para horno. Echamos aceite y sal gorda.  Una vez tengamos todos los paquetitos de morcilla, los colocamos sobre el papel de horno en una bandeja de horno.  En otra bandeja de horno colocamos el recipiente de los espárragos que habíamos reservado previamente.  Introducimos los espárragos y los paquetitos de morcilla al horno durante 15 minutos a 180ºC.  Extraemos los espárragos y los paquetitos de morcilla del horno y los emplatamos.  Servimos.', 'Fácil', 'Recetas Slow food', 'uploads/Paquetitos de morcilla y espárragos al horno.jpg'),
(118, 'Brocheta de gambas de Palamós marinadas', '  Primero, troceamos el chile retirando las semillas. En un bol echamos abundante aceite, sal, pimienta rosa, el jengibre rallado y el chile. Removemos.  Lavamos y picamos el perejil y la albahaca. Añadimos las hierbas aromáticas al bol y removemos de nuevo. Incorporamos las gambas enteras y lo cubrimos con papel film. Dejamos durante 6 horas en el frigorífico para que se marinen.  Cuando estén marinadas las gambas, montamos las brochetas con ellas y las hacemos a la parrilla. Mientras se cocinan, añadimos sal de gambas.  Por otro lado, limpiamos y cortamos los puerros en tiras. En una sartén con un chorrito de aceite, salteamos junto al orégano, la pimienta rosa y la pimienta negra durante 10 minutos.  Para el emplatado, ponemos una cama de puerros en el recipiente y colocamos encima las gambas, echamos el marinado sobrante y el zumo de media lima.  Servimos.', 'Fácil', 'Recetas Slow food', 'uploads/Brocheta de gambas de Palamós marinadas.jpg'),
(119, 'Patatas queso', '    Pela las patatas y córtalas con forma alargada (80 15 mm aproximadamente).      Ponlas en agua a remojar para que suelten el almidón durante un tiempo mínimo de 15 minutos. Después enjuágalas con agua y sécalas con papel de cocina.     Mezcla el aceite de oliva con el pimentón y el polvo de ajo.      Reparte la mezcla de forma uniforme por todas las patatas. Pon a precalentar la freidora a 195 ºC.     Cuando esté lista, agrega las patatas a la cesta y ponlas a freír durante 30 minutos.      Cada 7-8 minutos abre la cesta y agita las patatas para cocinarlas uniformemente.     Cuando estén listas sácalas y mezcla las patatas con el queso, orégano, perejil sal y pimienta.      Puedes añadir rodajas de limón para mejorar la presentación y añadir un toque ácido.', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/patatas-queso-freidora-sin-aceite.png'),
(120, 'Tortilla de patata', '    Pela las patatas y córtalas en trocitos finos. Déjalas a remojo para que suelten el almidón.      Cuanto más pequeños sean los trozos de patata más rápido las cocinará la freidora sin aceite.     Introduce las patatas en la cesta sin ningún accesorio. Puedes utilizar la base plana u otro molde de silicona para freidora sin aceite. Echa el aceite, la sal y mézclalo todo uniformemente.      Configura durante 30 minutos a 180 ºC la freidora. Remueve de vez en cuando para que se cocine por igual. Mientras pela la cebolla.     Cuando hayan pasado 20 minutos, introduce la cebolla en la cesta y sigue removiendo. Mientras bate los huevos en un bol      A los 30 minutos, mira la cesta para certificar que se han cocinado la cebolla y las patatas. Si necesitas otros 5 minutos, configúrala de nuevo sin problema.     Ahora introduce el huevo batido en la cesta y remueve, de forma que cubra toda la patata y se mezcle por completo.      Para cuajar la tortilla, configúrala a 130 ºC durante 6-8 minutos para que quede jugosa.     Saca la cesta y vuelca con cuidado la tortilla sobre un plato.      Listo, ¡a comer!', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/tortilla-patatas-freidora-sin-aceite.png'),
(121, 'Pinchos de pollo', '    Mezcla uniformemente todos los ingredientes (a excepción del pollo)      Puedes variarlos en función de tus gustos para potenciar diferentes sabores.     Corta la pechuga de pollo en dados de unos 3 cm y agrégalos a la salsa.      Remuévelos para que se reparta de forma uniforme y deja macerar el pollo durante 4 horas en el frigorífico.     Pon a precalentar tu freidora sin aceite a 200 ºC.      Mientras, corta los pinchos de madera al tamaño de la cesta de tu freidora. Ensarta los trozos de pollo en cada pincho.     Introduce los pinchos que hayas preparado en la freidora sin que estos se toquen.      Ponla a cocinar a 200 grados durante 10 minutos. Puedes darle la vuelta a los 5 minutos para que se hagan de forma uniforme.', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/pinchos-pollo-freidora-sin-aceite.jpg'),
(122, 'Calamares', '    Pon a precalentar la freidora sin aceite a 200 ºC.      Limpia el calamar e imprégnalo por ambos lados con el aceite de oliva de una cucharada.     Introduce el calamar en la freidora sin aceite a 200 ºC durante 10 minutos. Dale la vuelta a los 5 minutos.      Si no te cabe completamente, corta el calamar en anillas.     Mientras que se cocina el calamar prepara la salsa verde en un pequeño bol.      Para ello picamos muy bien el ajo y perejil. Una vez picados, lo mezclamos con la otra cucharada de aceite y sal.     Sacamos los calamares de la freidora de aire en un plato y echamos la salsa verde por encima.      Acompañar de tu guarnición favorita, ya sea ensalada, patatas fritas o cocidas al vapor.', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/calamar-en-freidora-de-aire.png'),
(123, 'Chuletón ', '    Pon a precalentar tu freidora sin aceite al máximo de temperatura (200 – 205 ºC)      Si dispone de modo precalentar, pulsa directamente esa opción.     Mezcla las especies y condimentos de forma uniforme.      Ahora espolvoréalos de la misma forma sobre tu chuletón.     Pulveriza el aceite de oliva o `pintalo´ con una brocha de cocina.      De igual forma, intenta repartirlo uniformemente por toda la superficie.     Introduce el chuletón en la cesta y ponlo a freír a 200 ºC.      Los tiempos son de 6 minutos si te gusta medio crudo, 8 si te gusta al punto y 10 minutos si te gusta muy hecho.     Espera a que se enfríe unos 10 minutos antes de servirlo.      Ahora ya puedes cortarlo y disfrutar de esta deliciosa receta.', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/chuleton-freidora-de-aire.jpg'),
(124, 'Tequeños ', '    Corta el queso en barras de 1,5 cm de grosor y 5 cm de largo aproximadamente.      Corta tiras de empanada de 2 cm de grosor y unos 15 cm de largo.     Coloca en el extremo de cada tira de masa un trozo de queso y enrolla la tira hasta cubrir completamente el queso.      Mientras haces los tequeños pon a precalentar la freidora de aire a 200ºC.     Una vez precalentada, introduce en la cesta los tequeños pulverizando con aceite de oliva ligeramente la masa. También puedes pintarlos de aceite de oliva con una brocha.      Cocínalos en tu airfyer a 200 ºC durante 15 minutos, dándole la vuelta a la mitad para que se doren por igual.', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/tequenos-freidora-de-aire.png'),
(125, 'Salmón ', '    Colocamos el salmón en el papel de aluminio      Corta el suficiente papel para poder tapar completamente todas las piezas.     Ponemos a precalentar la freidora sin aceite a 180 ºC.      Si tu freidora sin aceite tiene función precalentado perfecto. Si no, pon el temporizador durante 6-8 minutos a 180 grados.     Preparamos la mezcla de aliño para el salmón      En un bol batimos el zumo de limón, la mantequilla derretida, el ajo picado, orégano, pimienta negra y sal al gusto.     Vertimos la mezcla sobre los lomos del salmón y lo sellamos con el papel de aluminio.      Metemos en la cesta de la freidora sin aceite el salmón a 180 ºC durante 10 minutos.     Sacamos la cesta de la freidora y dejamos sin aluminio la parte superior del salmón.      Ahora ponemos durante 2 minutos a 200 ºC la freidora de aire para tostar la parte superior del salmón.     Sacamos con cuidado el salmón y lo emplatamos.      Primero saca los filetes y después echa por encima el jugo del papel de aluminio. Decóralo con el perejil y las rodajas de limón.', 'Fácil', 'Recetas de freidora sin aceite', 'uploads/salmon-freidora-de-aire.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido_uno` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido_dos` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `nombre`, `apellido_uno`, `apellido_dos`, `edad`, `telefono`, `email`) VALUES
(64, 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 'aaaaaa', 21, '13123', 'aaaaaa@aaaaaa.es'),
(66, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 43, '3463241', 'prueba@prueba.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoraciones`
--

CREATE TABLE `valoraciones` (
  `id` int(11) NOT NULL,
  `valoracion` decimal(11,0) NOT NULL,
  `id_recetas` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `valoraciones`
--

INSERT INTO `valoraciones` (`id`, `valoracion`, `id_recetas`, `username`) VALUES
(12, '4', 106, 'pepa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `valoraciones`
--
ALTER TABLE `valoraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
