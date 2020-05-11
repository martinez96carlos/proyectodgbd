/* Insertar los tipos de  residuo*/
INSERT INTO Solid_type (solid_type_name, solid_type_description, solid_type_state)
VALUES ('Papel y Carton', 'Estos son residuos sólidos inorgánicos, papel, periódigo, cartones y otros', '1');
INSERT INTO Solid_type (solid_type_name, solid_type_description, solid_type_state)
VALUES ('Vidrio','Todas las botellas de vidrio, de cervezas, refrescos, gaseosas.', '1');
INSERT INTO Solid_type (solid_type_name, solid_type_description, solid_type_state)
VALUES ('Plastico', 'Bolsas de yogurt, botellas de plastico , bidones, bolsas.', '1');
INSERT INTO Solid_type (solid_type_name, solid_type_description, solid_type_state)
VALUES ('Metales', 'Latas de Aluminio, ollas, sartenes, toda la chatarra', '1');
/*  Insertar residuos Sólidos*/
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (1,'Perdiodico',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (1,'Papel Blanco',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (1,'Papel Mixto',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (1,'Carton',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (1,'Cartulina',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (2,'Blanco',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (2,'De color',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (3,'PET',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (3,'Duro',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (3,'Blanco',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (3,'Bolsas Termoresistentes',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (3,'Bolsas',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (4,'Latas de Aluminio',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (4,'Ollas de Aluminio',1);
INSERT INTO solids (solid_type_id, solid_name, solid_state) VALUES (4,'Chatarra u Olajata',1);

/* Insertar Ubicaciones */
INSERT INTO locations (location_longitude, location_latitude, location_state) VALUES ('-16.546613', '-68.075107', 1);
INSERT INTO locations (location_longitude, location_latitude, location_state) VALUES ('-16.546469', '-68.074206', 1);
INSERT INTO locations (location_longitude, location_latitude, location_state) VALUES ('-16.546695', '-68.075300', 1);
INSERT INTO locations (location_longitude, location_latitude, location_state) VALUES ('-16.543815', '-68.076427', 1);
INSERT INTO locations (location_longitude, location_latitude, location_state) VALUES ('-16.545409', '-68.078004', 1);

/* Insertar Ciudades */
INSERT INTO cities (city_name, city_state) VALUES ('La Paz', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Cochabamba', 1);
INSERT INTO cities (city_name, city_state) VALUES ('SantaCruz', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Oruro', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Potosi', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Sucre', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Tarija', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Pando', 1);
INSERT INTO cities (city_name, city_state) VALUES ('Beni', 1);

/* Insertar Grupo */
INSERT INTO groups(group_name, group_state) VALUES('Recolectoras del Norte',1);
/* Insertar Roles */
insert into roles (role_name,role_description,role_state) values ('Recolector', 'Recolecta los residuos sólidos inorgánicos', 1);
insert into roles (role_name,role_description,role_state) values ('Generador', 'Vecino que genera basura', 1);
/* Insertar usuarios */
insert into
users(role_id,
	  group_id,
	  city_id,
	  user_first_name,
	  user_second_name,
	  user_first_lastname,
	  user_second_lastname,
	  user_number_id,
	  user_born_date,
	  user_gender,
	  user_email,
	  user_password,
	  user_state)
values(1,
	   1,
	   1,
	   'Carlos',
	   'Andres',
	   'Martinez',
	   'Cuellar',
	   '6962649',
	   '1996-03-31',
	   'Masculino',
	   'martinez96carlos@gmail.com',
	   '123456789',
	   1);
	   
insert into
users(role_id,
	  group_id,
	  city_id,
	  user_first_name,
	  user_second_name,
	  user_first_lastname,
	  user_second_lastname,
	  user_number_id,
	  user_born_date,
	  user_gender,
	  user_email,
	  user_password,
	  user_state)
values(1,
	   1,
	   2,
	   'Waskar',
	   'Ernesto',
	   'Gomez',
	   'Fernandez',
	   '89415498',
	   '1996-11-28',
	   'Masculino',
	   'gomez96waskar@gmail.com',
	   '123456789',
	   1);
insert into
users(role_id,
	  group_id,
	  city_id,
	  user_first_name,
	  user_second_name,
	  user_first_lastname,
	  user_second_lastname,
	  user_number_id,
	  user_born_date,
	  user_gender,
	  user_email,
	  user_password,
	  user_state)
values(2,
	   1,
	   1,
	   'Joel',
	   'Andy',
	   'Rojas',
	   'Valencia',
	   '9876542',
	   '1996-01-10',
	   'Masculino',
	   'rojas96joel@gmail.com',
	   '123456789',
	   1);
	   
insert into
users(role_id,
	  group_id,
	  city_id,
	  user_first_name,
	  user_second_name,
	  user_first_lastname,
	  user_second_lastname,
	  user_number_id,
	  user_born_date,
	  user_gender,
	  user_email,
	  user_password,
	  user_state)
values(1,
	   1,
	   2,
	   'Saul',
	   'Enrique',
	   'Quiroz',
	   'Castillo',
	   '5789423',
	   '1996-02-20',
	   'Masculino',
	   'quiroz96saul@gmail.com',
	   '123456789',
	   1);

/* insertar pedidos */ 
insert into orders(user_id, location_id,order_date,order_detail,order_image_url,order_state, order_place)
values (1, 1,'2020-05-01','Tengo papeles de oficina', 'http://jonsegador.com/wp-content/apezz.png',1,'Casa');
insert into orders(user_id, location_id,order_date,order_detail,order_image_url,order_state)
values (1, 2,'2020-04-21','Tengo botellas de vidrio', 'http://jonsegador.com/wp-content/apezz.png',1'Edificio');
insert into orders(user_id, location_id,order_date,order_detail,order_image_url,order_state)
values (2, 3,'2020-04-29','Tengo bolsas plasticas', 'http://jonsegador.com/wp-content/apezz.png',1,'Casa');
insert into orders(user_id, location_id,order_date,order_detail,order_image_url,order_state)
values (2, 4,'2020-03-01','Tengo latas de cerveza', 'http://jonsegador.com/wp-content/apezz.png',1,'Casa');
insert into orders(user_id, location_id,order_date,order_detail,order_image_url,order_state)
values (4, 5,'2020-03-27','Tengo periódico', 'http://jonsegador.com/wp-content/apezz.png',1'Condominio');

/* insertar recolecciones */
insert into recolections (solid_id , order_id, user_id, recolection_weight, recolection_state)
values (1,1,3,6,1);
insert into recolections (solid_id , order_id, user_id, recolection_weight, recolection_state)
values (3,1,3,3,1);
insert into recolections (solid_id , order_id, user_id, recolection_weight, recolection_state)
values (1,2,3,7,1);
insert into recolections (solid_id , order_id, user_id, recolection_weight, recolection_state)
values (4,2,3,4.8,1);
insert into recolections (solid_id , order_id, user_id, recolection_weight, recolection_state)
values (5,3,3,10,1);

