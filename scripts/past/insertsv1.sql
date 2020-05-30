/* Insertar los tipos de  residuo*/
INSERT INTO solid_type (solid_type_name, solid_type_description, solid_type_state)
VALUES
('Papel y Carton', 'Todo tipo papel, periódico, cartones y otros.', 1),
('Vidrio','Todas las botellas de vidrio, de cervezas, refrescos, gaseosas.', 1),
('Plastico', 'Bolsas de yogurt, botellas de plastico , bidones, bolsas.', 1),
('Metales', 'Latas de Aluminio, ollas, sartenes, toda la chatarra.', 1);



/*  Insertar residuos Sólidos*/
INSERT INTO solids (solid_type_id, solid_name, solid_description, solid_state) 
VALUES
(1,'Perdiodico','Papel de noticias que venden en las esquinas de los vecindarios.' ,1),
(1,'Papel Blanco','Papel de impresión, bond, papel de oficina.',1),
(1,'Papel Mixto','Papel bond reciclado, con diferentes elementos.',1),
(1,'Carton','Envolturas de electrodomésticos, cajas para guardar elementos similares.',1),
(1,'Cartulina','Hoja un poco mas gruesa generalmente usada para presentaciones, tarjetas.',1),
(2,'Blanco','Este tipo de vidio utilizado en oficinas, no es translúcido.',1),
(2,'De color','Botellas de refrescos, jugos, cerveza.',1),
(3,'PET','Botellas plásticas desechables por ejemplo.',1),
(3,'Duro','Plasticos de juguetes, de utensilios rotos.',1),
(3,'Blanco','Plastico para forrar cuadernos, nylon',1),
(3,'Bolsas Termoresistentes','Bolsas para guardar alimentos o sandwiches.',1),
(3,'Bolsas','Bolsas plasticas de basura comunes.',1),
(4,'Latas de Aluminio',' Latas de leche condensada, champiñones por ejemplo, verduras enlatadas, latas de cerveza.',1),
(4,'Ollas de Aluminio',' Diferentes ollas para cocinar, metal más rígido.',1),
(4,'Chatarra u Olajata','Restos de computadoras, electrodomésticos.',1);



/* Insertar Ubicaciones */
INSERT INTO locations (location_longitude, location_latitude, location_state) 
VALUES
('-16.546613', '-68.075107', 1),
('-16.546469', '-68.074206', 1),
('-16.546695', '-68.075300', 1),
('-16.543815', '-68.076427', 1),
('-16.545409', '-68.078004', 1);



/* Insertar Ciudades */
INSERT INTO cities (city_name, city_state) 
VALUES
('La Paz', 1),
('Cochabamba', 1),
('SantaCruz', 1),
('Oruro', 1),
('Potosi', 1),
('Sucre', 1),
('Tarija', 1),
('Pando', 1),
('Beni', 1);



/* Insertar Grupo */
INSERT INTO groups(group_name, group_description, group_state)
VALUES
('Recolectoras del Norte','Grupo Organizado de recolectores ubicados en la zona norte de Cochabamba.',1);



/* Insertar Roles */
INSERT INTO roles (role_name, role_description, role_state)
VALUES
('Recolector', 'Recolecta los residuos sólidos inorgánicos', 1),
('Generador', 'Vecino que genera basura', 1);




/* Insertar usuarios */
insert into
users(group_id,
	  city_id,
	  role_id,
	  user_first_name,
	  user_second_name,
	  user_first_lastname,
	  user_second_lastname,
	  user_number_id,
	  user_born_date,
	  user_gender,
	  user_email,
	  user_password,
	  user_phone,
	  user_state)
values
(1, 1, 1, 'Carlos', 'Andres', 'Martinez', 'Cuellar', '6962649', '1996-03-31', 'Masculino', 'martinez96carlos@gmail.com', '123456789', '67025211', 1),
(1, 1, 1, 'Waskar', 'Ernesto', 'Gomez', 'Fernandez', '9876543', '1995-11-29', 'Masculino', 'gomez96waskar@gmail.com', '123456789', '73500756', 1),
(1, 1, 2, 'Virginie', 'Ludivine', 'Girerd', 'Gired', '6962651', '1999-03-08', 'Femenino', 'girerd96virginie@gmail.com', '123456789', '77771111', 1);


/* insertar pedidos */ 
insert into orders(location_id, generator_id, recolector_id, order_date, order_detail, order_image_url, order_place, order_state)
values
(1, 3, 1,'2020-05-01','Tengo papeles de oficina', 'http://jonsegador.com/wp-content/apezz.png','Casa',1),
(2, 3, 2,'2020-04-21','Tengo botellas de vidrio', 'http://jonsegador.com/wp-content/apezz.png','Edificio',1),
(3, 3, 1,'2020-04-29','Tengo bolsas plasticas', 'http://jonsegador.com/wp-content/apezz.png','Casa',1),
(4, 3, 2,'2020-03-01','Tengo latas de cerveza', 'http://jonsegador.com/wp-content/apezz.png','Casa',1),
(5, 3, 1,'2020-03-27','Tengo periódico', 'http://jonsegador.com/wp-content/apezz.png','Condominio',1);

/* insertar recolecciones */
insert into recolections (solid_id , order_id, recolection_weight, recolection_state)
values
(1,1,3,1),
(2,1,2.4,1),
(3,1,3.8,1),
(7,1,1,1),
(1,2,3,1),
(3,2,5,1),
(4,2,6,1),
(7,2,1.7,1),
(1,3,4,1),
(3,3,4.2,1),
(4,3,6,1),
(10,3,14.5,1),
(6,4,11.7,1),
(3,4,1,1),
(3,4,2,1),
(12,4,3,1),
(7,5,2,1),
(1,5,1.6,1),
(8,5,1.7,1),
(9,5,3.8,1);