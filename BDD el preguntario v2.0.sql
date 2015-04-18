-- INSTITUTO TECNOLOGICO DE ENSENADA
	
	-- Aplicacion de dispositivos moviles.
	
	-- Programacion logica y funcional.


		/* 
            Proyecto El Preguntario, aplicacion movil educativa para el Instituto Real San Sebastian.
		*/


/*
        INTEGRANTES:
Eduardo Gabriel Bastida García.
Francisco Eduardo García Perea.
Pedro Abraham López Ruiz.


*/

-- Creacion de la Base de Datos PREGUNTARIO--

CREATE DATABASE PREGUNTARIO

-- Creacion de la Tabla preguntas--

CREATE TABLE IF NOT EXISTS `preguntas` (
`ID_preg` int(4) NOT NULL,
  `pregunta` longtext NOT NULL,
  `materia` varchar(10) NOT NULL,
  `grado` int(1) NOT NULL,
   PRIMARY KEY (ID_preg)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

-- Creacion de la tabla respuestas--

CREATE TABLE IF NOT EXISTS `respuestas` (
`ID_resp` int(4) NOT NULL,
  `respuesta` text NOT NULL,
  `materia` varchar(10) NOT NULL,
  `grado` varchar(10) NOT NULL,
  `ID_preg` int(4) NOT NULL,
   PRIMARY KEY (ID_resp),
   CONSTRAINT ID_preg FOREIGN KEY (ID_preg)
      REFERENCES preguntas (ID_preg)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 ;

-- Creacion de la tabla usuarios--

CREATE TABLE IF NOT EXISTS `usuarios` (
`ID_user` int(4) NOT NULL,
  `Usuario` text NOT NULL,
  `Contraseña` varchar(10) NOT NULL,
  `Llave` varchar(10) NOT NULL,
   PRIMARY KEY (ID_user)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1 ;

-- Insercion de los datos en la tabla usuario--


INSERT INTO `usuarios` (`ID_user`, `Usuario`, `Contraseña`, `Llave`) VALUES
(1, 'gaby', 'gaby123', 68486512 ),
(2, 'abraham', 'abraham123', 74913215 ),
(3, 'mrpako', 'pako123', 98745517 ),
(4, 'francisco', 'francisco1', 33577844 );



-- Insercion de los datos que conponen la tabla preguntas--


INSERT INTO `preguntas` (`ID_preg`, `pregunta`, `materia`, `grado`) VALUES
(1, '¿Cómo está compuesta una obra de teatro?', 'español', 3),
(2, 'La siguiente es una frase con signos de admiración:', 'español', 3),
(3, '¿Qué son las recetas?', 'español', 3),
(4, 'El signo de puntuación que se utiliza para separar dos oraciones diferentes pero que se refieren al mismo tema o contenido se llama:', 'español', 3),
(5, 'Para escribir una autobiografía es útil tener claro:', 'español', 3),
(6, '¿Que es un cuento?', 'español', 3),
(7, '¿Qué es una leyenda?', 'español', 3),
(8, '¿Qué es una obra de teatro?', 'español', 3),
(9, 'Se usa principalmente para indicar el final de un enunciado, de un párrafo o de un texto.', 'español', 3),
(10, 'Es una manera de representar gráficamente a los miembros de tu familia.', 'español', 3),
(11, '¿En dónde puedes investigar las palabras cuyo significado desconoces?', 'español', 3),
(12, '¿Cuántas veces cabe el 6 en el 42?', 'mate', 3),
(13, 'Claudia tiene 30 chocolates y se los quiere repartir a sus 5 mejores amigas, ¿Cuántos chocolates les toca a cada una?', 'mate', 3),
(14, 'En un grupo hay 22 niñas y 18 niños. Si todos tenían una banca, pero se rompieron 5, ¿cuántas bancas sirven todavía?', 'mate', 3),
(15, 'En una tienda por cada peso nos dan 3 dulces. ¿Cuántas monedas de a peso necesitará el maestro para regalarle un dulce a sus alumnos si tiene 18 niñas y 15 niños?', 'mate', 3),
(16, 'Un pastelero coloca 6 cerezas a cada pastel. ¿Cuántas cerezas necesitará para 7 pasteles?', 'mate', 3),
(17, '¿Qué  numero falta  para  que la operación  sea correcta?   \r\n7 X ___ +25=46.', 'mate', 3),
(18, 'En  la tienda  de  Don Raúl   venden  jugos  de ¼  de  litro .¿Cuantos  litros vendieron si tenían 20 envases y sólo sobraron 4 de ellos?', 'mate', 3),
(19, 'Un  kilogramo de  frijol  se  repartió  en partes iguales entre cuatro personas. Si Elena  cocinó  la mitad de una mitad del kilogramo de frijol, ¿A  cuánto  equivale  esa porción?', 'mate', 3),
(20, 'Si   en la papelería  de  Pilar  vendió  8  cajas  de  colores de  24 colores  cada  una .¿Cuantos   colores  vendió  en total?', 'mate', 3),
(21, 'Raúl va a sembrar 1/3 de un terreno, mientras que su hermano, sembrará el resto, ¿qué fracción le toca sembrar a su hermano?', 'mate', 3),
(22, 'Es un astro o cuerpo celeste más cercano a nuestro planeta y se desplaza alrededor de ella:', 'ciencias', 3),
(23, 'Es el movimiento que la Luna lleva a cabo sobre su propio eje:', 'ciencias', 3),
(24, 'Es el movimiento que la Luna lo realiza alrededor de la Tierra:', 'ciencias', 3),
(25, '¿Dónde inicia el proceso digestivo?', 'ciencias', 3),
(26, 'Por medio de esta parte, las plantas toman el agua del suelo.', 'ciencias', 3),
(27, 'Parte por la que respiran las plantas.', 'ciencias', 3),
(28, 'Se alimentan de plantas y carne.', 'ciencias', 3),
(29, 'Se alimentan de plantas.', 'ciencias', 3),
(30, 'Se alimentan de carne.', 'ciencias', 3),
(31, '¿Por donde viaja el sonido?', 'ciencias', 3),
(32, '¿Qué es ser tolerante?', 'civica', 3),
(33, 'Cuando tomas una decisión  te haces responsable de:', 'civica', 3),
(34, 'Miguel   sufre  de  agresiones de  los  compañeros de  la escuela. ¿Qué  debe hacer   para defender sus  derechos?', 'civica', 3),
(35, 'Al expresar tus  emociones debes…', 'civica', 3),
(36, '¿Qué significa la palabra prejuicio?', 'civica', 3),
(37, 'En una sociedad se debe establecer normas y leyes para:', 'civica', 3),
(38, '¿Cómo se pueden solucionar los conflictos?', 'civica', 3),
(39, 'Vivir con armonía sin violencia es:', 'civica', 3),
(40, 'Cuando sabes cómo y cuándo lograr lo que te propones, estás planteando:', 'civica', 3),
(41, '¿Que es la puntualidad?', 'civica', 3),
(42, '¿A qué nos referimos cuando decimos que México es uno de los países con mayor diversidad lingüística en el mundo?', 'español', 4),
(43, '¿Qué es un poema?', 'español', 4),
(44, '¿Qué es un ensayo?', 'español', 4),
(45, '¿Qué es un resumen?', 'español', 4),
(46, '¿Qué es un relato historico?', 'español', 4),
(47, '¿Qué es una entrevista?', 'español', 4),
(48, '¿Qué es una biografia?', 'español', 4),
(49, '¿Que es un Verbo?', 'español', 4),
(50, '¿Qué es un adjetivo?', 'español', 4),
(51, '¿Qué es un sustantivo?', 'español', 4),
(52, 'Si a 8/8 le quitamos 1/4, nos quedan:', 'mate', 4),
(53, '¿Cuál es el valor equivalente a 1/2?', 'mate', 4),
(54, 'De acuerdo a un dado ¿Cuál es la probabilidad de que al lanzarlo, caiga 4?', 'mate', 4),
(55, 'Manuel ha ahorrado 450 pesos, para repartirlos en sus dos sobrinos que son gemelos, ¿Cuánto le toca a cada uno?', 'mate', 4),
(56, 'Si tengo 10 pedazos de 1/4 de metro cada uno, ¿Cuántos metros tengo en total?', 'mate', 4),
(57, 'Si cada metro de listón cuesta 3 pesos y quiero comprar 18 metros, ¿Cuántos pesos tengo que pagar?', 'mate', 4),
(58, 'Rosa practica patinaje 1/4  hora diariamente, ¿Cuántas horas a la semana practica?', 'mate', 4),
(59, 'Mario tiene 5 playeras: morada, roja, verde, amarilla y blanca. También tiene 2 pantalones: negro y azul, ¿Cuántas combinaciones puede hacer?', 'mate', 4),
(60, 'Cada depósito contiene 43 litros de agua, ¿cuántos litros de agua hay en total en\r\ndos depósitos iguales?', 'mate', 4),
(61, 'Una calculadora cuesta 35 pesos y el libro de matemáticas 8 pesos menos. ¿Cuánto\r\ncuestan las dos cosas juntas?', 'mate', 4),
(62, 'Capacidad que tienen los seres vivos para engendrar nuevos individuos.', 'ciencias', 4),
(63, 'Su función consiste en realizar todos los movimientos del cuerpo humano.', 'ciencias', 4),
(64, 'Son las encargadas de llevar el oxigeno y los nutrientes a todo el cuerpo.', 'ciencias', 4),
(65, 'Su funcion es la de captar y procesar rápidamente las señales sobre los demás órganos para lograr una adecuada, oportuna y eficaz interacción con el medio ambiente cambiante.', 'ciencias', 4),
(66, 'Los consumidores primarios se alimentan de:', 'ciencias', 4),
(67, 'Los consumidores secunadrios se alimentan de: ', 'ciencias', 4),
(68, 'Los seres vivos ovnívoros se alimentan de:', 'ciencias', 4),
(69, '¿Cómo se le llama al efecto de poder ver nuestra imagen en un espejo?', 'ciencias', 4),
(70, '¿Que es la dilatacion?', 'ciencias', 4),
(71, '¿Cómo aprendieron a producir el fuego nuestros antepasados?', 'ciencias', 4),
(72, 'Lugar donde se cree que se originó el hombre:', 'historia', 4),
(73, 'Lugar por donde pasaron los primeros pobladores de América para llegar a este continente.', 'historia', 4),
(74, 'Acontecimiento que se conoce como el más grande adelanto de la historia y que cambió la vida de los grupos nómadas:', 'historia', 4),
(75, 'Grupo de humanos que no vivia en ningun lugar:', 'historia', 4),
(76, 'Cultivo principal del México antiguo y que seguimos consumiendo.', 'historia', 4),
(77, 'Es el conjunto de seres vivos, el ambiente o medio donde viven y las relaciones que establecen entre sí a través de las cadenas alimentarias. ', 'historia', 4),
(78, 'Signo compuesto por imágenes  y símbolos que expresaban ideas o palabras y, a veces sonidos.', 'historia', 4),
(79, 'El proceso por medio del cual los españoles enseñaron la religión católica y el idioma español a los indígenas, se conoce como: ', 'historia', 4),
(80, '¿Que ocurrio el 16 de septiembre de 1810?', 'historia', 4),
(81, 'Término que se utiliza en distintos contextos, pero siempre con el sentido de indicar la población u ocupación de un espacio.', 'historia', 4),
(82, 'Sirve como límite natural entre México y Guatemala:', 'geografia', 4),
(83, 'Son regiones hundidas y más bajas que el terreno que las rodea:', 'geografia', 4),
(84, 'Sirve de frontera con E.U.A.', 'geografia', 4),
(85, 'Industria que transforma los minerales y otras materias primas en productos que utilizamos:', 'geografia', 4),
(86, '¿Cómo se les denomina a las personas que no asisten a la escuela y no saben leer ni escribir?', 'geografia', 4),
(87, 'hace referencia a las enormes pérdidas materiales y vidas humanas ocasionadas por terremotos, inundaciones, Tsunamis, deslizamientos de tierra,etc...', 'geografia', 4),
(88, 'Efectos, procesos o materiales que son el resultado de actividades humanas, normalmente se usa para describir contaminaciones ambientales:', 'geografia', 4),
(89, 'AL movimiento de la tierra al rededor del sol se le conoce como:', 'geografia', 4),
(90, 'Proceso provocado generalmente por la acción humana, en el que se destruye la superficie forestal.', 'geografia', 4),
(91, 'Aumento observado en los últimos siglos de la temperatura media del sistema climático de la Tierra.', 'geografia', 4);

-- Insercion de los datos que conponen la tabla respuestas--

INSERT INTO `respuestas` (`ID_resp`, `respuesta`, `materia`, `grado`, `ID_preg`) VALUES
(1, 'En escenas', 'español', '3' , '1'),
(2, '¡Auxilio, alguien que nos ayude!', 'español', '3' , '2'),
(3, 'Es un tipo de instructivo en el que se indican pasos para elaborar algo.', 'español', '3', '3'),
(4, 'Coma.', 'español', '3', '4'),
(5, 'Los sucesos más importantes de la vida propia.', 'español', '3', '5'),
(6, 'Narración breve, en la que se narra una historia de ficción.', 'español', '3', '6'),
(7, 'Narración de hechos naturales o sobrenaturales, que se transmite de generación en generación.', 'español', '3', '7' ),
(8, 'forma literaria normalmente constituida por diálogos entre personajes y con un cierto orden.', 'español', '3', '8' ),
(9, 'Punto.', 'español', '3', '9'),
(10, 'El árbol genealógico.', 'español', '3', '10'),
(11, 'Diccionario', 'español', '3', '11'),
(12, '7.', 'mate', '3', '12'),
(13, '6.', 'mate', '3', '13'),
(14, '35.', 'mate', '3', '14'),
(15, '11.', 'mate', '3', '15'),
(16, '42.', 'mate', '3', '16'),
(17, '21.', 'mate', '3', '17'),
(18, '4.', 'mate', '3', '18'),
(19, '1/8.', 'mate', '3', '19'),
(20, '192.', 'mate', '3', '20'),
(21, '2/3', 'mate', '3', '21'),
(22, 'La luna.', 'ciencias', '3', '22'),
(23, 'Rotacion.', 'ciencias', '3', '23'),
(24, 'Traslacion.', 'ciencias', '3', '24'),
(25, 'En la boca.', 'ciencias', '3', '25'),
(26, 'Raiz.', 'ciencias', '3', '26'),
(27, 'Hojas.', 'ciencias', '3', '27'),
(28, 'Omnívoro.', 'ciencias', '3', '28'),
(29, 'Herbívoro.', 'ciencias', '3', '29'),
(30, 'Carnívoro.', 'ciencias', '3', '30'),
(31, 'Aire.', 'ciencias', '3', '31'),
(32, 'Tener la capacidad de dualogar con las personas.', 'civica', '3', '32'),
(33, 'De tus actos y consecuencias.', 'civica', '3', '33'),
(34, 'Exigir que lo respeten, sin gritar, sin insultar y pedir  ayuda a su maestra.', 'civica', '3', '34'),
(35, 'Respetar a los demas.', 'civica', '3', '35'),
(36, 'Juzgar a una persona sin antes conocerla.', 'civica', '3', '36'),
(37, 'Que funcione y ofrezca seguridad a los individuos.', 'civica', '3', '37'),
(38, 'Mediante el Dialogo.', 'civica', '3', '38'),
(39, 'Paz.', 'civica', '3', '39'),
(40, 'Metas.', 'civica', '3', '40'),
(41, 'El valor que se construye por el esfuerzo de estar a tiempo en el lugar adecuado.', 'civica', '3', '41'),
(42, 'Que existen muchas lenguas en él.', 'español', '4', '42'),
(43, 'Composición literaria que se concibe como expresión artística de la belleza.', 'español', '4', '43'),
(44, 'Tipo de texto que brevemente analiza, interpreta un tema de manera libre.', 'español', '4', '44'),
(45, 'Técnica que consiste en reducir un texto con las ideas principales de éste.', 'español', '4', '45'),
(46, 'Narración con la intención de contar los detalles de determinados sucesos.', 'español', '4', '46'),
(47, 'Charla con una o más personas con un objetivo y un fin determinado.', 'español', '4', '47'),
(48, 'Historia de la vida de una persona narrada desde su nacimiento hasta su muerte.', 'español', '4', '48'),
(49, 'Parte de la oración o categoría léxica que expresa acción.', 'español', '4', '49'),
(50, 'Palabra que complementa a un sustantivo para calificarlo.', 'español', '4', '50'),
(51, 'Palabra que nombra a personas, animales o cosas.', 'español', '4', '51'),
(52, '6/8.', 'mate', '4', '52'),
(53, '8/16.', 'mate', '4', '53'),
(54, '1/6.', 'mate', '4', '54'),
(55, '225.', 'mate', '4', '55'),
(56, '1.5', 'mate', '4', '56'),
(57, '54.', 'mate', '4', '57'),
(58, '3.5', 'mate', '4', '58'),
(59, '10.', 'mate', '4', '59'),
(60, '86.', 'mate', '4', '60'),
(61, '43.', 'mate', '4', '61'),
(62, 'Reproduccion.', 'ciencias', '4', '62'),
(63, 'Sistema muscular (o locomotor).', 'ciencias', '4', '63'),
(64, 'Aparato circulatorio.', 'ciencias', '4', '64'),
(65, 'Sistema nervioso.', 'ciencias', '4', '65'),
(66, 'Plantas.', 'ciencias', '4', '66'),
(67, 'Animales.', 'ciencias', '4', '67'),
(68, 'Plantas y animales.', 'ciencias', '4', '68'),
(69, 'Reflexion.', 'ciencias', '4', '69'),
(70, 'EL aumento de tamaño de un material al calentase.', 'ciencias', '4', '70'),
(71, 'Por la fricción al frotar trozos de madera con rapidez.', 'ciencias', '4', '71'),
(72, 'África.', 'historia', '4', '72'),
(73, 'Estrecho de Behring.', 'historia', '4', '73'),
(74, 'La invencion agricultura.', 'historia', '4', '74'),
(75, 'Nomadas.', 'historia', '4', '75'),
(76, 'Maiz.', 'historia', '4', '76'),
(77, 'Ecosistema.', 'historia', '4', '77'),
(78, 'Códice.', 'historia', '4', '78'),
(79, 'Evangelización.', 'historia', '4', '79'),
(80, 'Independencia.', 'historia', '4', '80'),
(81, 'Colonización.', 'historia', '4', '81'),
(82, 'El río Suchiate', 'geografia', '4', '82'),
(83, 'Depresion.', 'geografia', '4', '83'),
(84, 'Rio Bravo.', 'geografia', '4', '84'),
(85, 'Manufacturera.', 'geografia', '4', '85'),
(86, 'Analfabetas.', 'geografia', '4', '86'),
(87, 'Desastre natural.', 'geografia', '4', '87'),
(88, 'Antropogénico.', 'geografia', '4', '88'),
(89, 'Traslación.', 'geografia', '4', '89'),
(90, 'Deforestación.', 'geografia', '4', '90'),
(91, 'Calentamiento Global.', 'geografia', '4', '91');
