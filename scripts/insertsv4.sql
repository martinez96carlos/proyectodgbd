INSERT INTO solid_types (solid_type_name, solid_type_description, solid_type_state)
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
('Carlos', 'Andres', 'Martinez', 'Cuellar', '1996-03-31',0, 'Masculino', 'martinez96carlos@gmail.com', '123456789', '67025211', '65498721', 2,'',1),
('Alberto', 'Juan', 'Martinez', 'Uriarte', '1971-06-08',0, 'Masculino', 'martinez71carlos@gmail.com', '123456789', '72567964', '64894612', 1,'', 1),
('Valeria', 'Andrea', 'Martinez', 'Cuellar',  '1998-08-20',0, 'Femenino', 'martinez98valeria@gmail.com', '123456789', '73049172', '98412654', 3,'',1),
('Silvia', 'Sandra', 'Cuellar', 'Zapata',  '1967-11-03',0, 'Femenino', 'cuellar67silvia@gmail.com', '123456789', '71550623','54498451', 2,'', 1),
('Fulana', 'Lucia', 'Gironda', 'Pantoja',  '1999-03-08',0,'Femenino', 'girerd99virginie@gmail.com', '123456789', '71550623','89186345', 2,'', 1);

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
recolector_state
)
VALUES 
('Juan', 'Antonio', 'Perez', 'Perez', '1996-03-31', 'Masculino', 'perez96juan@gmail.com', '123456789', '67025211', '987654321',1,'Eco Recolectoras del Norte','',1),
('Pedro', 'Alberto', 'Mesa', 'Uriarte', '1971-06-08', 'Masculino', 'mesa71pedro@gmail.com', '123456789', '72567964', '987321654', 2,'Eco Recolectoras del Norte','',1),
('Fulanito', 'Contreras', 'Garcia', 'Pantoja',  '1998-08-20', 'Masculino', 'garcia98fulanito@gmail.com', '123456789', '73049172', '654987321',3,'Eco Recolectoras del Norte','',1),
('Juana', 'Andrea', 'Olivares', 'Rojas',  '1967-11-03', 'Femenino', 'olivares67juana@gmail.com', '123456789', '71550623', '741852963', 3,'Eco Recolectoras del Norte','',1),
('Julia', 'Maria', 'Pereyra', 'Poma',  '1999-03-08', 'Femenino', 'pereyra99julia@gmail.com', '123456789', '71550623', '147258369', 4,'Eco Recolectoras del Norte','',1);


/* insertar pedidos */ 
insert into orders(generator_id, recolector_id, order_date, order_detail, order_image_url, order_rate, order_latitude, order_longitude, order_state)
values
(1, 5,'2020-05-01','Tengo papeles de oficina', '',0.0,'-16.546613', '-68.075107',1),
(2, 4,'2020-04-21','Tengo botellas de vidrio', '',0.0,'-16.546469', '-68.074206',1),
(3, 3,'2020-04-29','Tengo bolsas plasticas', '',0.0,'-16.546695', '-68.075300',1),
(2, 2,'2020-03-01','Tengo latas de cerveza', '',0.0,'-16.543815', '-68.076427', 1),
(2, 1,'2020-03-27','Tengo periódico', '',0.0,'-16.545409', '-68.078004',1);

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