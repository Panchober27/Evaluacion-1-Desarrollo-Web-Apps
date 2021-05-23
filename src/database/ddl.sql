
CREATE TABLE accesorios(
    cod_acc INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    stock VARCHAR (7) NOT NULL
);

INSERT INTO accesorios (cod_acc, nombre, precio, stock)
VALUES (NULL, 'manillares', '1.000', '30'),
(NULL, 'pedalin', '5.000', '12'),
(NULL, 'tapa barro negro', '20.000', '10');

CREATE TABLE motos(
    cod_moto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    stock VARCHAR (7) NOT NULL
);

INSERT INTO motos (cod_moto, nombre, precio, stock)
VALUES (NULL, 'ecomoto doble 20h', '800.000', '5'),
(NULL, 'ecomoto doble 12h', '799.990', '3');

CREATE TABLE repuestos(
    cod_rep INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    cantidad VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    stock VARCHAR (7) NOT NULL
);

INSERT INTO repuestos (cod_rep, nombre, cantidad, precio, stock)
VALUES (NULL, 'tapa bateria', '1', '5.000', '25'),
(NULL, 'bateria 12ah extraible', '1', '35.000', '5'),
(NULL, 'manillas de freno', '2', '10.000', '20'),
(NULL, 'asiento trasero', '1', '35.000', '4');



CREATE TABLE test(
    cod_test INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    precio VARCHAR (20) NOT NULL,
    stock VARCHAR (7) NOT NULL
);





