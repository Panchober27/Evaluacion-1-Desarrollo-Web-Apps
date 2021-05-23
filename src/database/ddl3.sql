-- Tercer archivo sql 😓😓
-- Modificaciones importantes:
-- se añadiran los campos o atributos llamados imgurl -> contienen la  ruta public de las imagenes.

-- Tabla Accesorios.
CREATE TABLE ACCESORIOS(
    cod_acc INT(4) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    descripcion VARCHAR (20),
    cantidad VARCHAR(3) NOT NULL,
    imgurl VARCHAR(50) NOT NULL,
    stock VARCHAR (7) NOT NULL
);


-- Insert a la tabla accesorios.
INSERT INTO ACCESORIOS (cod_acc, nombre, precio, descripcion, cantidad, imgurl, stock)
VALUES (NULL, 'Manillares', '8.990', NULL, 'uno', 'manillares1.jpg', '20'),
(NULL, 'Slime', '13.990', NULL, 'uno', 'slime.jpg', '20'),
(NULL, 'Pedalin', '16.990', NULL, 'uno', 'pedalin.jpg', '10'),
(NULL, 'Kit antipinchazos', '9.990', NULL, 'uno', 'kit-antipinchazo.jpg', '10'),
(NULL, 'Respaldo asiento trasero', '11.990', NULL, 'uno', 'respaldo.jpg', '10'),
(NULL, 'Funda cubre moto', '9.990', NULL, 'uno', 'funda-cubremoto1.jpg', '10'),
(NULL, 'Espejos ecomoto', '18.990', NULL, 'uno', 'espejos-ecomoto.jpg', '20'),
(NULL, 'Sillin ecomoto', '29.990', NULL, 'uno', 'silla-ecomoto.jpg', '20'),
(NULL, 'Tapabarros Amarillo ambar', '30.990', NULL, 'par', 'tapabarros-amarillo-ambar.jpg', '10'),
(NULL, 'Tapabarros Verde mate', '30.990', NULL, 'par', 'tapabarros-verde-mate.jpg', '10'),
(NULL, 'Tapabarros Negro mate', '30.990', NULL, 'par', 'tapabarros-negro-mate.jpg', '10'),
(NULL, 'Tapabarros Pink', '30.990', NULL, 'par', 'tapabarros-pink.jpg', '10'),
(NULL, 'Tapabarros kiss', '36.990', NULL, 'par', 'tapabarros-kiss.jpg', '10'),
(NULL, 'Tapabarros Calaveras', '36.990', NULL, 'par', 'tapabarros-calaveras.jpg', '10'),
(NULL, 'Tapabarros Violeta', '30.990', NULL, 'par', 'tapabarros-morado.jpg', '10'),
(NULL, 'Tapabarros Dorado', '30.990', NULL, 'par', 'tapabarros-dorado.jpg', '10'),
(NULL, 'Tapabarros Azul', '30.990', NULL, 'par', 'tapabarros-azul.jpg', '10'),
(NULL, 'Tapabarros Espacial azul', '36.990', NULL, 'par', 'tapabarros-espacial-azul.jpg', '10'),
(NULL, 'Tapabarros Espacial', '36.990', NULL, 'par', 'tapabarros-espacial.jpg', '10'),
(NULL, 'Tapabarros Verde', '30.990', NULL, 'par', 'tapabarros-verde.jpg', '10'),
(NULL, 'Tapabarros Rojo', '30.990', NULL, 'par', 'tapabarros-rojo.jpg', '10'),
(NULL, 'Tapabarros Negro', '30.990', NULL, 'par', 'tapabarros-negro.jpg', '10'),
(NULL, 'Tapabarros Blanco', '30.990', NULL, 'par', 'tapabarros-blanco.jpg', '10'),
(NULL, 'Tapabarros Amarillo', '30.990', NULL, 'par', 'tapabarros-amarillo.jpg', '10'),
(NULL, 'Tapabarros Graffiti', '36.990', NULL, 'par', 'tapabarros-graffiti.jpg', '10'),
(NULL, 'Tapabarros Faia', '36.990', NULL, 'par', 'tapabarros-faia.jpg', '5'),
(NULL, 'Tapabarros Artistic', '36.990', NULL, 'par', 'tapabarros-artistic.jpg', '5');


-- Tabla Repuestos.
-- SE AÑADIO EL CAMPO imgurl para colocar las rutas de las imagenes como elemento statico😜
CREATE TABLE REPUESTOS(
    cod_rep INT(4) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    descripcion VARCHAR(60),
    cantidad VARCHAR(30) NOT NULL,
    imgurl VARCHAR(30) NOT NULL,
    stock VARCHAR (7) NOT NULL
);

-- Insert a Repuestos.
INSERT INTO REPUESTOS (cod_rep, nombre, precio, descripcion, cantidad, imgurl, stock)
VALUES (NULL, 'Tapa Bateria', '14.990', NULL, 'uno', 'tapa1.jpg', '10'),
(NULL, 'Bateria 12 AH extraible', '219.990', NULL, 'uno', 'bateria-extraible1.jpg', '10'),
(NULL, 'Manillas de Freno', '8.990', NULL, 'uno', 'manillas-freno.jpg', '5'),
(NULL, 'Asiento Trasero', '29.990', NULL, 'uno', 'asiento-trasero.jpg', '5'),
(NULL, 'Asiento Delantero', '29.990', NULL, 'uno', 'asiento-delantero.jpg', '6'),
(NULL, 'Acelerador Ecomoto', '34.990', NULL, 'uno', 'acelerador-ecomoto.jpg', '10'),
(NULL, 'Cargador Ecomoto', '39.990', NULL, 'uno', 'cargador1.jpg', '10'),
(NULL, 'Foco Ecomoto', '48.990', 'con contacto y panel', 'uno', 'luz-frontal.jpg', '10'),
(NULL, 'Neumatico Ecomoto', '69.990', NULL, 'uno', 'neumatico1.jpg', '3'),
(NULL, 'Neumatico con motor Ecomoto', '249.990', NULL, 'uno', 'motor-ecomoto1.jpg', '3');

-- Tablas de las Motos, esta tabla tendra el stock, info e imgurl.
CREATE TABLE MOTOS(
    cod_moto INT(4) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio VARCHAR(20) NOT NULL,
    precio_preventa VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100),
    imgurl VARCHAR(50) NOT NULL,
    stock VARCHAR(3)
);

INSERT INTO MOTOS (cod_moto, nombre, precio, precio_preventa, descripcion, imgurl, stock)
VALUES (NULL, 'Ecomoto Doble 20ah', '990.000', '297.000', NULL, 'imgurl', '10'),
(NULL, 'Ecomoto Doble 12ah', '790.000', '237.000', NULL, 'imgurl', '3');



