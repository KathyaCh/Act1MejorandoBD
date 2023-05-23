ALTER TABLE Empleado 
ADD id_Sucursal INT NOT NULL




ALTER TABLE Empleado 
ADD CONSTRAINT	FK_id_Sucursal 
FOREIGN KEY (id_Sucursal) REFERENCES Sucursal (id_Sucursal)
ON UPDATE CASCADE
ON DELETE CASCADE 


ALTER TABLE dbo.Sucursal
ADD CONSTRAINT	FK_Nombre_Empleado
FOREIGN KEY ( [Encargado] ) REFERENCES [dbo].[Empleado] ( [Nombre_Empleado] )
ON UPDATE CASCADE
ON DELETE CASCADE 

ALTER TABLE dbo.Empleado 
ADD CONSTRAINT IX_Nombre_Empleado UNIQUE ( [Nombre_Empleado] )
GO




ALTER TABLE Sucursal
DROP CONSTRAINT FK_Nombre_Empleado
GO







INSERT INTO Empleado
VALUES 
('97501379', 'Kathya Chavez', 'Bosque Cipres TCMC', '5620383664', '26', 'chavez.dominguez.kathy@gmail.com', 'Servil2103', '300')



INSERT INTO Sucursal
VALUES 
('100', 'Akiras Boutique:Las Mercedes', 'Rodrigo Melendez', 'Bosques de Chapultepec', '5620383664', 'Venustiano Carranza', 'CDMX')

ALTER TABLE Sucursal ALTER COLUMN Nombre_Sucursal VARCHAR (50) NOT NULL;  
GO  

ALTER TABLE Sucursal ALTER COLUMN Nombre_Sucursal VARCHAR (80) NOT NULL;  
GO  

ALTER TABLE Sucursal ALTER COLUMN Direccion_Sucursal VARCHAR (80) NOT NULL;  
GO  
INSERT INTO Sucursal
VALUES 
('200', 'Akiras Boutique:Las Mercedes', 'Sonia Alejandra Fernandez', 'Calle Roble #507 Fracc Las Mercedes', '4447831225', 'San Luis Potosi', 'San Luis Potosi'),
('300', 'Akiras Boutique: Obraje', 'Fernando Calderon Ayala', 'C Dr Jesus Diaz de Leon #438 Col Obraje', '4493780921', 'Aguascalientes', 'Aguascalientes'),
('400', 'Akiras Boutique: Galerias Mazatlan', 'Daniela Fernanda Diaz', 'Av de la Marina #6204, Marina, Local 35', '6692932059', 'Mazatlan', 'Sinaloa'),
('500', 'Akiras Boutique:Zapopan', 'Mario Alberto Jimenez Salcido', 'Av. Manuel J. Clouthier 525 Col. Benito Juarez', '3337841230', 'Zapopan', 'Jalisco'),
('600', 'Akiras Boutique:Melchor', 'Yesenia Guadalupe Campos', 'Av. Melchor Ocampo #2528 Zona Centro', '6143906721', 'Chihuahua', 'Chihuahua'),
('700', 'Akiras Boutique:Constitucion', 'Tamara Alejandra Bernal', 'Calle Constitucion #106 Zona Centro', '6181962954', 'Durango', 'Durango'),
('800', 'Akiras Boutique:Centro', 'Samuel Enrique Barrios', 'Av. Hidalgo #338 Zacatecas Centro', '4929301250', 'Zacatecas', 'Zacatecas')

INSERT INTO Empleado 
VALUES
('98194352', 'Sonia Alejandra Fernandez', 'Faisan #200 Las Mercedes','4445218546', '38 años', 'fernandez-moreno.ale@gmail.com','ale123', '200'),
('91154287', 'Rodrigo Melendez', 'Roma Sur #1012','4441263951','29 años', 'melendez.olayo@gmail.com', 'bart1802', '200'),
('97502134', 'Amalia Duran', 'La virgen #5263 Las Mercedes', '4449512530', '32 años','duranceron@hotmail.com', 'dur123', '200'),
('94587412', 'Jesus Chavez', 'Chapultepec #2310', '4441243256', '38 años', 'blackfd@gmail.com', '2910jes','200'),
('97512548', 'Mariana Rojas', 'Alvaro Obregon #8545', '4445685152','36 años', 'bestforever@gmail.com', 'forever2000', '200'),
('96524187', 'Fernando Calderon Ayala', 'Montes altos #4152', '4491035108', '51 años', 'calderon.ayala@hotmail.com', 'cald6587', '300'),
('90854152', 'Marisela Contreras', 'Niños Heroes #1609', '4495685412', '48 años ', 'contreras.pollito@gmail.com', 'mari1602', '300'),
('98572164', 'Paulina Ramirez', 'Vasconcelos #4512', '4497452123', '36 años', 'ramirezestrella@live.com','jav1745', '300'),
('90061523', 'Nubia Cazada', '10 de Mayo #4512', '4491256320','34 años', 'cazada19@gmail.com', 'nubis19', '300'),
('91452365', 'Tania Rosales', 'Aguascalientes #5641', '4496325418', '27 años', 'tania1996@gmail.com', 'rosa96', '300'),
('95124587', 'Dulce Gomez', 'Mambo #1920', '4492541851', '31 años', 'candy25@gmail.com', 'dul251', '300'),
('92415263', 'Daniela Fernanda Diaz', 'Los Monchis #23', '6662538961','32 años', 'ferdia1526@hotmail.com','diaz2631', '400'),
('97145263', 'Alma Casillas', 'Nicolas Bravo #345', '6671253451', '28 años', 'lovecas25@gmail.com', 'akira123','400'),
('97315245', 'Ruben Gregorio Sesma', 'Las Bombas #12','6672563892','19 años', 'gregorio.sesma@gmail.com', 'sesma251', '400'),
('95214563', 'Omar Contreras', 'Escobedo #524', '6641252631','30 años','akiracontreas@hotmail.com', 'esco2516', '400'),
('97415896', 'Javier Montalvo', 'Obregon #1526','6612295851','41 años', 'montalvo.jav@gmail.com', 'montal5263', '400'),
('90125645', 'Mario Alberto Jimenez Salcido', 'Calle Francia #6532', '3331025631','36años','mankind@gmail.com', 'beto123', '500'),
('98745213', 'Juliana Vazquez Mota', 'Av laureles', '3311256345', '24 años', 'julianavaz@gmail.com', 'mot156', '500'),
('97451263', 'Cesar Estrada Gomez', 'Tepeyac #16', '3322563152', '32 años', 'estrada.gomez@gmail.com', 'estrada526', '500'),
('98451263', 'Tatiana Guerrero Ruiz', 'La venta #523', '3358596121', '30 años', 'guerra15@hotmail.com', 'guer5263', '500'),
('91154263', 'Patricia Duran Castillo', 'Astillero #5241', '3352634152', '48 años', 'castle33@gmail.com', 'dcs5216', '500'),
('98524152', 'Yesenia Guadalupe Campos', 'Juan Gabriel #147', '3315263841', '34 años ', 'yescampos@gmail.com', 'yes789', '600'),
('98667657','Katherin Del romero Martinez','CDA Bosques de Jamaica', '3366745876','76 años','romerobello69@gmail.com','mami16','600'),
('94885736','Mario Rosales Pineda','C del manantial #7B','3396728401','54 años','pinedabello24@hotmail.com','loto675','600'),
('93642746','Michelle Melendez De La O','C Plaza del Carmen','3315687465','35 años','bartolome76@gmail.com','hermoso09','600'),
('91651657','Rafael del Solar','C del Remo #90','3325478963','26 años','ereneltitan@hotmail.es','nezuko58','600'),
('96874736','Tamara Alejandra Bernal Ramos','CDA de los Moros #18','6143548961','18 años','floresdelanoche@hotmail.com','fresas548','700'),
('91356874','Jorge Martinez Olayo','C Azuncion SN','6145489632','26 años','niñadepapa45@yahoo.com','love56','700'),
('96115525','Miguel Angel Solo Martinez','Plaza de la Azuncion #76a','6143654897','28 años','doctor.martinez@hotmail.com','maria1992','700'),
('91516552','Roberto Alonso Juarez Escamilla','C Lopez Portillo SN','6143654897','48 años','escamilla69@live.com','juarez1587','700'),
('92542658','Antonio Mota Lopez','CDA de Bosques de Mex #3B','6141547896','35 años','skatedelamuerte@hotmail.com','anttoni64','700'),
('93232657','Samuel Enrique Barrios Enciso','Av de la Revolucion #876a','4923254897','43 años','rapdecorazon1998@gmail.com','arte125','800'),
('93352525','Bartolome del Pozo Altamirano','CDA del Estado de Morelos #45B','4925489632','25 años','rimasdelalma588@hotmail.es','plate18','800'),
('92212045','Gustavo Camacho Smith','C de la plaza mayor #2665a','4925876425','34 años','mirestante54@live.com','Lopez58746','800'),
('92523585','Luis Guevara Herrera','CDA de Las lomas #315a','4925486315','18 años','mirey125@hotmail.com','angel154788','800'),
('92531525','Rodrigo Madero Ortiz','C del Marin #5C','4925687154','25 años','fallguy554@live.com','mistico547','800'),
('94512589','Ellie Montalvo Cruz','C Jamaica #38B','4448512564','37 años','loveheart354@gmail.com','montal253','200'),
('91457896','Anastacia Rojas Zaragoza','Madero Surz #52','4493587132','29 años','anarojasz@hotmail.com','zaragoza29','300'),
('95652352','Rogelio Castillo Sanchez','Chabacano #874','6678523650','19 años','weekend265@live.com','roger123','400'),
('97584512','Roberto Esteban Garcia','CDA Mexicali #8D','4928541231','40 años','rober1554@gmai.com','marian15','800')


DELETE FROM Empleado

DELETE FROM Sucursal 


ALTER TABLE Empleado ALTER COLUMN Edad VARCHAR (10) NOT NULL;  
GO

ALTER TABLE Sucursal ALTER COLUMN Encargado VARCHAR (50) NOT NULL;  
GO




ALTER TABLE Empleado 
ADD CONSTRAINT	FK_Encargado 
FOREIGN KEY (Encargado) REFERENCES Sucursal (Encargado)
ON UPDATE CASCADE
ON DELETE CASCADE 


SELECT Encargado, id_Sucursal 
FROM Sucursal
WHERE id_Sucursal  = '700'

SELECT Nombre_Empleado, id_Sucursal, Edad 
FROM Empleado 
WHERE Edad  <= '32 años'


SELECT Nombre_Empleado, id_Sucursal, Edad
FROM Empleado 
WHERE Edad BETWEEN '20 años' AND '45 años'


SELECT id_Sucursal, Nombre_Sucursal, Encargado
FROM Sucursal
ORDER BY id_Sucursal DESC

SELECT *
FROM Empleado
ORDER BY id_Sucursal ASC

SELECT * 
FROM Sucursal
ORDER BY id_Sucursal DESC