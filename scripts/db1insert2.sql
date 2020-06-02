INSERT INTO genders (gender_id, gender)
VALUES
(0,'Masculino'),
(1,'Femenino');

INSERT INTO cities (city_id, city_name)
VALUES
(0,'La Paz'),
(1,'Santa Cruz'),
(2,'Cochabamba'),
(3,'Chuquisaca'),
(4,'Oruro'),
(5,'Potosi'),
(6,'Tarija'),
(7,'Beni'),
(8,'Pando');

INSERT INTO places (place_id, place_name)
VALUES
(0,'Edificio'),
(1,'Casa Particular'),
(2,'Condominio');

INSERT INTO solid_types (solid_type_name, solid_type_description, solid_type_state)
VALUES
('Papel y Carton', 'Todo tipo papel, periódico, cartones y otros.', 1),
('Vidrio','Todas las botellas de vidrio, de cervezas, refrescos, gaseosas.', 1),
('Plastico', 'Bolsas de yogurt, botellas de plastico , bidones, bolsas.', 1),
('Metales', 'Latas de Aluminio, ollas, sartenes, toda la chatarra.', 1),
('Otros', 'Aparatos eléctricos, electrónicos, ropa.', 1);



/*  Insertar residuos Sólidos*/
INSERT INTO solids (solid_type_id, solid_name, solid_description, solid_state) 
VALUES
(1,'Papel Perdiodico','Papel de noticias que venden en las esquinas de los vecindarios.' ,1),
(1,'Papel Blanco','Papel de impresión, bond, papel de oficina.',1),
(1,'Papel Mixto','Papel bond reciclado, con diferentes elementos.',1),
(1,'Carton','Envolturas de electrodomésticos, cajas para guardar elementos similares.',1),
(1,'Cartulina','Hoja un poco mas gruesa generalmente usada para presentaciones, tarjetas.',1),
(2,'Vidrio Blanco','Este tipo de vidio utilizado en oficinas, no es translúcido.',1),
(2,'Vidrio De color','Botellas de refrescos, jugos, cerveza.',1),
(3,'PET','Botellas plásticas desechables por ejemplo.',1),
(3,'Plastico Duro','Plasticos de juguetes, de utensilios rotos.',1),
(3,'Plastico Blanco','Plastico para forrar cuadernos, nylon',1),
(3,'Bolsas Termoresistentes','Bolsas para guardar alimentos o sandwiches.',1),
(3,'Bolsas','Bolsas plasticas de basura comunes.',1),
(4,'Latas de Aluminio',' Latas de leche condensada, champiñones por ejemplo, verduras enlatadas, latas de cerveza.',1),
(4,'Ollas de Aluminio',' Diferentes ollas para cocinar, metal más rígido.',1),
(4,'Chatarra u Olajata','Restos de computadoras, electrodomésticos.',1),
(5,'Aceites', 'Otro tipo de residuos',1),
(5,'Telas', 'Otro tipo de residuos',1),
(5,'Ropa', 'Otro tipo de residuos',1),
(5,'Corchos', 'Otro tipo de residuos',1);

INSERT INTO generators
(
generator_first_name,
generator_second_name,
generator_first_lastname,
generator_second_lastname,
generator_born_date,
generator_rate,
generator_gender,
generator_email,
generator_password,
generator_phone,
generator_ci,
generator_place,
generator_picture_url,
generator_state
)
VALUES 
('Juan','Rodrigo','Caballero','Flores','1971-01-12',0.0,0,'juancaballero@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7984651','12345601',0,'',1),
('Carlos','Ricardo', 'Perez', 'Ramallo', '1952-02-28', 0.0, 0, 'carlosperez@gmail.com', '$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe', '7156126','12345602', 1,'',1),
('Lucia','', 'Ramos','Garcia', '1998-11-10',0.0,1,'luciaramos@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe', '7051156','12345603',2,'',1 ),
('Julia','Maria', 'Coca', 'Luna', '2001-03-02', 0.0, 1, 'juliacoca@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','6847102','12345604',0,'',1),
('Sebastian','Joel','Arana','Zuleta', '1964-06-30',0.0,0,'sebastianarana@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7771591','12345605',1,'',1),
('Ricardo','Antonio','Mejia','Castrillo','1989-07-16',0.0,0,'ricardomejia@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7195112','12345606',2,'',1),
('Maria','Eugenia','Palomeque','Hurtado','1978-12-01',0.0,1,'mariapalomeque@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7985465','12345607',0,'',1),
('Alberto','','Soliz','Rada','1996-10-25',0.0,0,'albertosoliz@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7984561','12345608',1,'',1),
('Cristina','Rosa','Molina','Murillo','1985-04-12',0.0,1,'cristinamolina@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7008918','12345609',2,'',1),
('Rolando','Javier','Espinosa','Valdez','1967-03-27',0.0,0,'rolandoespinosa@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','7151974','12345610',0,'',1);



/* Insertar en recolectors */
INSERT INTO recolectors
(
recolector_first_name,
recolector_second_name,
recolector_first_lastname,
recolector_second_lastname,
recolector_born_date,
recolector_gender,
recolector_email,
recolector_password,
recolector_phone,
recolector_ci,
recolector_city,
recolector_group,
recolector_picture_url,
recolector_rate,
recolector_state
)
VALUES 
('Maria','Alejandra','Mamani','Mamani','1982-11-04',1,'mariamamani@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','71951975','98765401',0,'Eco-Recolectoras del Norte','',0.0,1),
('Gregoria','','Apaza','Chura','1961-02-05',1,'gregoriaapaza@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','78945157','98765402',0,'Eco-Recolectoras del Norte','',0.0,1),
('Rosa','Isabel','Hinojoza','Chambi','1999-12-25',1,'rosahinojoza@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','78941785','98765403',0,'Eco-Recolectoras del Norte','',0.0,1),
('Miguel','Angel','Cuevas','Rodriguez','1970-06-13',0,'miguelcuevas@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','69874561','98765404',1,'Eco-Recolectoras del Norte','',0.0,1),
('Carlota','Rosario','Pinto','Mansilla','1968-10-06',1,'carlotapinto@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','72549981','97865405',1,'Eco-Recolectoras del Norte','',0.0,1),
('Juana','','Cutile','Esprella','2002-08-02',1,'juanacutile@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','70649894','97865406',1,'Eco-Recolectoras del Norte','',0.0,1),
('Elizabeth','Judit','Rojas','Palomillo','1978-04-24',1,'elizabethrojas@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','79519416','98765407',2,'Eco-Recolectoras del Norte','',0.0,1),
('Carmen','Eli','Morales','Poma','1997-09-07',1,'carmenmorales@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','73059594','98765408',2,'Eco-Recolectoras del Norte','',0.0,1),
('Efrain','Roberto','Chura','Alanoca','1967-07-24',0,'efrainchura@gmail.com','$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe','73013486','98765409',2,'Eco-Recolectoras del Norte','',0.0,1);


/* insertar pedidos */ 
insert into orders(generator_id, recolector_id, order_date, order_detail, order_image_url, order_rate,order_recolection_rate, order_latitude, order_longitude, order_state)
values
(1,1,'2020-03-20 15:29:17','Descripcion prueba','',5,2,'-16.504242','-68.130191',2),
(1,2,'2020-03-21 20:06:07','Descripcion prueba','',2,5,'-16.504242','-68.130191',2),
(1,2,'2020-03-23 07:19:05','Descripcion prueba','',4,4,'-16.504242','-68.130191',2),
(1,1,'2020-03-25 10:42:08','Descripcion prueba','',5,2,'-16.504242','-68.130191',2),
(1,3,'2020-03-27 08:43:17','Descripcion prueba','',3,4,'-16.504242','-68.130191',2),
(2,3,'2020-03-28 08:00:45','Descripcion prueba','',4,3,'-16.504242','-68.130191',2),
(2,1,'2020-03-29 17:46:10','Descripcion prueba','',2,4,'-16.504242','-68.130191',2),
(2,2,'2020-04-01 07:49:55','Descripcion prueba','',3,3,'-16.504242','-68.130191',2),
(3,1,'2020-04-01 17:14:34','Descripcion prueba','',3,2,'-16.504242','-68.130191',2),
(3,3,'2020-04-05 17:10:24','Descripcion prueba','',2,3,'-16.504242','-68.130191',2),
(3,2,'2020-04-07 09:04:39','Descripcion prueba','',3,4,'-16.504242','-68.130191',2),
(3,1,'2020-04-12 07:30:03','Descripcion prueba','',4,3,'-16.504242','-68.130191',2),
(4,4,'2020-04-15 16:46:38','Descripcion prueba','',2,4,'-17.372531','-66.162384',2),
(4,5,'2020-04-18 10:11:25','Descripcion prueba','',4,3,'-17.372531','-66.162384',2),
(4,5,'2020-04-18 23:37:03','Descripcion prueba','',2,3,'-17.372531','-66.162384',2),
(5,6,'2020-04-21 07:49:37','Descripcion prueba','',4,5,'-17.372531','-66.162384',2),
(5,4,'2020-04-23 08:48:41','Descripcion prueba','',3,2,'-17.372531','-66.162384',2),
(5,4,'2020-04-25 08:14:16','Descripcion prueba','',4,4,'-17.372531','-66.162384',2),
(5,6,'2020-04-25 11:49:20','Descripcion prueba','',2,1,'-17.372531','-66.162384',2),
(5,5,'2020-04-27 12:20:00','Descripcion prueba','',1,5,'-17.372531','-66.162384',2),
(5,5,'2020-04-27 21:13:56','Descripcion prueba','',5,2,'-17.372531','-66.162384',2),
(6,4,'2020-04-28 09:03:03','Descripcion prueba','',4,2,'-17.372531','-66.162384',2),
(6,6,'2020-04-29 14:45:15','Descripcion prueba','',4,2,'-17.372531','-66.162384',2),
(6,5,'2020-05-02 12:06:28','Descripcion prueba','',5,2,'-17.372531','-66.162384',2),
(7,7,'2020-05-04 16:36:38','Descripcion prueba','',2,4,'-17.794606','-63.178254',2),
(7,8,'2020-05-08 20:20:15','Descripcion prueba','',5,4,'-17.794606','-63.178254',2),
(8,9,'2020-05-09 10:15:16','Descripcion prueba','',4,5,'-17.794606','-63.178254',2),
(8,7,'2020-05-11 15:09:29','Descripcion prueba','',5,4,'-17.794606','-63.178254',2),
(8,8,'2020-05-11 22:48:12','Descripcion prueba','',5,4,'-17.794606','-63.178254',2),
(8,7,'2020-05-11 23:15:57','Descripcion prueba','',2,4,'-17.794606','-63.178254',2),
(9,8,'2020-05-12 21:58:54','Descripcion prueba','',1,3,'-17.794606','-63.178254',2),
(9,8,'2020-05-14 08:26:30','Descripcion prueba','',5,4,'-17.794606','-63.178254',2),
(9,8,'2020-05-14 14:08:16','Descripcion prueba','',3,2,'-17.794606','-63.178254',2),
(10,9,'2020-05-16 21:39:50','Descripcion prueba','',5,2,'-17.794606','-63.178254',2),
(10,9,'2020-05-18 12:59:39','Descripcion prueba','',2,3,'-17.794606','-63.178254',2),
(10,9,'2020-05-18 16:22:44','Descripcion prueba','',3,2,'-17.794606','-63.178254',2),
(10,7,'2020-05-18 22:38:12','Descripcion prueba','',4,4,'-17.794606','-63.178254',2),
(10,8,'2020-05-19 10:03:08','Descripcion prueba','',5,3,'-17.794606','-63.178254',2);
/* insertar recolecciones */
insert into recolections (solid_id , order_id, recolection_weight, recolection_state)
values
(1,1,3.88,1),
(10,1,2.40,1),
(9,1,1.94,1),
(1,2,0.81,1),
(15,2,0.58,1),
(3,2,0.48,1),
(2,3,0.49,1),
(15,3,3.48,1),
(15,4,2.90,1),
(7,4,2.77,1),
(13,4,1.46,1),
(4,4,1.89,1),
(6,5,2.30,1),
(8,5,1.64,1),
(5,6,0.36,1),
(10,6,1.44,1),
(14,7,2.60,1),
(14,7,0.61,1),
(15,7,1.13,1),
(15,7,0.52,1),
(13,7,2.21,1),
(1,8,2.93,1),
(2,8,0.23,1),
(5,9,3.98,1),
(6,9,1.30,1),
(8,9,0.14,1),
(13,9,3.39,1),
(12,10,1.42,1),
(3,10,3.58,1),
(10,10,2.31,1),
(2,11,0.65,1),
(11,11,3.38,1),
(3,11,1.09,1),
(7,11,0.56,1),
(5,12,1.48,1),
(9,12,3.85,1),
(7,13,3.05,1),
(12,13,0.96,1),
(4,14,3.92,1),
(8,14,2.64,1),
(1,14,2.94,1),
(10,14,1.80,1),
(2,15,2.15,1),
(9,15,1.45,1),
(14,15,0.12,1),
(13,15,0.07,1),
(10,16,0.87,1),
(15,16,1.87,1),
(4,17,3.81,1),
(6,17,3.42,1),
(3,18,1.50,1),
(3,18,0.40,1),
(2,18,2.09,1),
(4,18,0.03,1),
(4,19,1.99,1),
(7,19,1.37,1),
(5,20,2.44,1),
(7,20,2.21,1),
(3,20,1.67,1),
(8,20,1.41,1),
(4,21,1.82,1),
(14,21,2.56,1),
(1,22,3.68,1),
(14,22,2.66,1),
(10,22,3.28,1),
(7,22,3.03,1),
(6,23,3.68,1),
(8,23,0.04,1),
(1,23,3.89,1),
(6,23,2.33,1),
(5,24,0.95,1),
(10,24,2.18,1),
(12,25,2.02,1),
(13,25,2.31,1),
(15,25,0.12,1),
(8,26,0.84,1),
(8,26,1.67,1),
(12,26,0.49,1),
(12,27,3.13,1),
(11,27,2.99,1),
(3,28,0.23,1),
(9,28,1.71,1),
(2,28,0.06,1),
(10,28,1.76,1),
(1,28,0.73,1),
(15,29,1.62,1),
(6,29,3.09,1),
(16,30,1.05,1),
(10,30,3.72,1),
(14,31,0.51,1),
(7,31,0.67,1),
(13,31,0.42,1),
(12,31,0.13,1),
(5,32,3.66,1),
(9,32,0.49,1),
(13,32,3.59,1),
(10,33,1.90,1),
(11,33,0.21,1),
(6,33,0.17,1),
(11,33,0.68,1),
(7,34,0.10,1),
(3,34,2.27,1),
(7,35,1.47,1),
(2,5,1.01,1),
(10,36,2.89,1),
(15,36,1.75,1),
(7,36,2.49,1),
(18,36,3.04,1),
(10,37,0.61,1),
(14,37,3.11,1),
(10,38,3.38,1),
(3,38,2.87,1),
(19,38,0.69,1),
(2,38,2.01,1);
/* Passowrd generador 1 
$2b$10$4s9E8mDdM/KuuXKnQ4H2lutbS/vnAqQJhiBGIWPEmYEf83Vi.GfG.
$2b$10$EK0.DTWLnNzsBRru9LGBDOu1d95qzRQaBnNx3MZbesbiukoj1QUlG

Password recolector 1
$2b$10$Dgf./jH24fNTsiyiy.8rMOchbXm.ZTUTxd/hw2JnYTpNModFgnedm
$2b$10$Z2eqhLQan3dJUCtXmHfNV.0hIqxTY0f4P51.JaLun2l4ekHSCS066*/

/* Password 123456 
$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe
*/


/*Base de datos para pruebas
const pool = new Pool({
    host: 'ec2-34-195-169-25.compute-1.amazonaws.com',
    database: 'd5jlqojdg7lrhm',
    user: 'fdevkbaiodubzx',
    password: 'a03def1fcadb6bcb7cb110b34b0e2e1d89c9e3912872df164b2302bd6d4c974a',
    port: '5432'
});*/