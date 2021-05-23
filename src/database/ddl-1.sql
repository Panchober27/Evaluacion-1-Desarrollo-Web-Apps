-- Tabla Accesorios.
CREATE TABLE ACCESORIOS(
    cod_acc INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    descripcion VARCHAR (20),
    cantidad VARCHAR(3) NOT NULL,
    stock VARCHAR (7) NOT NULL
);


-- Insert a la tabla accesorios.
INSERT INTO ACCESORIOS (cod_acc, nombre, precio, descripcion, cantidad, stock)
VALUES (NULL, 'Manillares', '8.990', NULL, 'uno', '20'),
(NULL, 'Slime', '13.990', NULL, 'uno', '20'),
(NULL, 'Pedalin', '16.990', NULL, 'uno', '10'),
(NULL, 'Kit antipinchazos', '9.990', NULL, 'uno', '10'),
(NULL, 'Respaldo asiento trasero', '11.990', NULL, 'uno', '10'),
(NULL, 'Funda cubre moto', '9.990', NULL, 'uno', '10'),
(NULL, 'Espejos ecomoto', '18.990', NULL, 'uno', '20'),
(NULL, 'Sillin ecomoto', '29.990', NULL, 'uno', '20'),
(NULL, 'Tapabarros Amarillo ambar', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Verde mate', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Negro mate', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Pink', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros kiss', '36.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Calaveras', '36.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Violeta', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Dorado', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Azul', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Espacial azul', '36.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Espacial', '36.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Verde', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Rojo', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Negro', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Blanco', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Amarillo', '30.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Graffiti', '36.990', NULL, 'par', '10'),
(NULL, 'Tapabarros Faia', '36.990', NULL, 'par', '5'),
(NULL, 'Tapabarros Artistic', '36.990', NULL, 'par', '5');


-- Tabla Repuestos.
CREATE TABLE REPUESTOS(
    cod_rep INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    descripcion VARCHAR(60),
    cantidad VARCHAR(30) NOT NULL,
    stock VARCHAR (7) NOT NULL
);

-- Insert a Repuestos.
INSERT INTO REPUESTOS (cod_rep, nombre, precio, descripcion, cantidad, stock)
VALUES (NULL, 'Tapa Bateria', '14.990', NULL, 'uno', '10'),
(NULL, 'Bateria 12 AH extraible', '219.990', NULL, 'uno', '10'),
(NULL, 'Manillas de Freno', '8.990', NULL, 'uno', '5'),
(NULL, 'Asiento Trasero', '29.990', NULL, 'uno', '5'),
(NULL, 'Asiento Delantero', '29.990', NULL, 'uno', '6'),
(NULL, 'Acelerador Ecomoto', '34.990', NULL, 'uno', '10'),
(NULL, 'Cargador Ecomoto', '39.990', NULL, 'uno', '10'),
(NULL, 'Foco Ecomoto', '48.990', 'con contacto y panel', 'uno', '10'),
(NULL, 'Neumatico Ecomoto', '69.990', NULL, 'uno', '3'),
(NULL, 'Neumatico con motor Ecomoto', '249.990', NULL, 'uno', '3');
