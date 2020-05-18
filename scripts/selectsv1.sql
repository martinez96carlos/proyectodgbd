/* Mostrar los nombres de residuo y el nombre del tipo de residuo*/
select A.solid_name RESIDUO, B.solid_type_name TIPO
from solids A, solid_type B
where A.solid_type_id = B.solid_type_id;

/* OBTENER LAS ORDENES ACTIVAS STATE = 1 Y EL DATO DEL GENERADOR*/
select A.order_id id, A.generator_id id_generador, A.recolector_id id_recolector, A.order_date fecha,
A.order_detail detalle, A.order_image_url url_imagen, A.order_rate calidad, A.order_latitude Latitud, A.order_longitude longitud,
B.generator_first_name nombre_generador, B.generator_first_lastname apellido_generador, B.generator_phone telefono_generador
from orders A, generators B
where B.generator_id = A.generator_id and A.order_state = 1;

/* OBTENER UNA ORDEN MEDIANTE SU ID Y LOS DATOS DEL GENERADOR*/
select A.order_id id, A.generator_id id_generador, A.recolector_id id_recolector, A.order_date fecha,
A.order_detail detalle, A.order_image_url url_imagen, A.order_rate calidad, A.order_latitude Latitud, A.order_longitude longitud,
B.generator_first_name nombre_generador, B.generator_first_lastname apellido_generador, B.generator_phone telefono_generador
from orders A, generators B
where B.generator_id = A.generator_id and A.order_ID = 2;