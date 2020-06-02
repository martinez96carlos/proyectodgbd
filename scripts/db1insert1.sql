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
('generadoruno', 'generadoruno', 'generadoruno', 'generadoruno', '1991-01-01',0.0, 0, 'generadoruno@gmail.com', '$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe', '66661111', '123456789', 2,'',1),
('generadordos', 'generadordos', 'generadordos', 'generadordos', '1991-01-02',0.0, 0, 'generadordos@gmail.com', '$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe', '66662222', '123456781', 2,'',1);


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
('recolectoruno', 'recolectoruno', 'recolectoruno', 'recolectoruno', '1992-02-01', 0, 'recolectoruno@gmail.com', '$2b$10$Dgf./jH24fNTsiyiy.8rMOchbXm.ZTUTxd/hw2JnYTpNModFgnedm', '77771111', '987654321',2,'Eco-Recolectoras del Norte','',0.0,1),
('recolectordos', 'recolectordos', 'recolectordos', 'recolectordos', '1992-02-02', 1, 'recolectordos@gmail.com', '$2b$10$Z2eqhLQan3dJUCtXmHfNV.0hIqxTY0f4P51.JaLun2l4ekHSCS066', '77772222', '987654322', 2,'Eco-Recolectoras del Norte','',0.0,1),
('recolectortres', 'recolectortres', 'recolectortres', 'recolectortres', '1992-02-03', 0, 'recolectortres@gmail.com', '$2b$10$7ohek.rqBSdxM4WarPJEeu/5lwN0BsecrQw61UkasiJcadebXipEa', '77773333', '987654323', 2,'Eco-Recolectoras del Norte','',0.0,1);


/* insertar pedidos */ 
insert into orders(generator_id, recolector_id, order_date, order_detail, order_image_url, order_rate,order_recolection_rate, order_latitude, order_longitude, order_state)
values
(1, 2,'2020-05-01 11:11:00','Tengo papeles de oficina', '',4, 5,'-16.546613', '-68.075107',2),
(1, 3,'2020-05-02 12:12:00','Tengo botellas de vidrio', '',4, 4,'-16.546469', '-68.074206',2),
(1, null,'2020-05-03 13:13:00','Tengo botellas de vidrio', '',0.0, 0.0,'-16.546312', '-68.074206',0);

/* insertar recolecciones */
insert into recolections (solid_id , order_id, recolection_weight, recolection_state)
values
(1, 1, 1.6, 1 ),
(3, 1, 2, 1),
(2, 1, 3.4, 1),
(4, 1, 0.7, 1),
(6, 2, 4, 1),
(7, 2, 5.7, 1);

/* Passowrd generador 1 
$2b$10$4s9E8mDdM/KuuXKnQ4H2lutbS/vnAqQJhiBGIWPEmYEf83Vi.GfG.
$2b$10$EK0.DTWLnNzsBRru9LGBDOu1d95qzRQaBnNx3MZbesbiukoj1QUlG

Password recolector 1
$2b$10$Dgf./jH24fNTsiyiy.8rMOchbXm.ZTUTxd/hw2JnYTpNModFgnedm
$2b$10$Z2eqhLQan3dJUCtXmHfNV.0hIqxTY0f4P51.JaLun2l4ekHSCS066*/

/* Password 123456 
$2b$10$9YcpxLyLP3KpnQDHYrzXN.pYIf3GKHcwSZudwBZVXMxlHz3rwcLDe
*/


/*Base de datos para pruebas*/
const pool = new Pool({
    host: 'ec2-34-195-169-25.compute-1.amazonaws.com',
    database: 'd5jlqojdg7lrhm',
    user: 'fdevkbaiodubzx',
    password: 'a03def1fcadb6bcb7cb110b34b0e2e1d89c9e3912872df164b2302bd6d4c974a',
    port: '5432'
});