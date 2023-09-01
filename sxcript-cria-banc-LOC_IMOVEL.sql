CREATE DATABASE loc_imovel;
USE loc_imovel;
CREATE TABLE aluguel (
id_venda INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
data_pagto DATE,
valor_pagto FLOAT,
cod_imovel INT,
descricao_imovel VARCHAR (80));
CREATE TABLE imovel (
id_imovel INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo_imovel VARCHAR (50));

INSERT INTO tipo_imovel (imovel) VALUES ("Casa"),("Apartamento"),("Sala Comercial"),("Galpão");
INSERT INTO aluguel (data_pagto,valor_pagto,cod_imovel,desc_imovel) 
VALUES ("2023-04-20",1000.00,2,"3 quartos"),("2023-04-10",750.00,2,"2 quartos"),
("2023-04-10",800.00,2,"4 quartos"),("2023-04-15",900.00,2,"4 quartos, com suite"),
("2023-04-20",700.00,2,"3 quartos");

INSERT INTO aluguel (data_pagto,valor_pagto,cod_imovel,desc_imovel) 
VALUES ("2023-04-20",1000.00,1,"3 quartos e suite"),("2023-04-10",750.00,1,"2 quartos"),
("2023-04-10",800.00,1,"4 quartos, 1 suite"),("2023-04-15",900.00,1,"4 quartos, com suite"),
("2023-04-20",700.00,1,"3 quartos");

INSERT INTO aluguel (data_pagto,valor_pagto,cod_imovel,desc_imovel) 
VALUES ("2023-03-20",1000.00,3,"100 metros quadrado"), ("2023-04-10",950.00,3,"50 metros quadrado"),
("2023-04-10",2000.00,3,"150 metros quadrado"),("2023-04-15",2600.00,3,"200 metros quadrado"),
("2023-04-20",5000.00,3,"3500 metros quadrado");

INSERT INTO aluguel (data_pagto,valor_pagto,cod_imovel,desc_imovel) 
VALUES ("2023-04-20",1000.00,4,"100 metros quadrado"), ("2023-04-10",950.00,4,"50 metros quadrado"),
("2023-04-10",2000.00,4,"150 metros quadrado"),("2023-04-15",2600.00,4,"200 metros quadrado"),
("2023-04-20",5000.00,4,"3500 metros quadrado");

