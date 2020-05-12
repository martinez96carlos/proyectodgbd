/* Mostrar los nombres de residuo y el nombre del tipo de residuo*/
select A.solid_name RESIDUO, B.solid_type_name TIPO
from solids A, solid_type B
where A.solid_type_id = B.solid_type_id;


/* Mostrar el nombre del recolector, del generador y la fecha del pedido*/
select a.recolector_first_name recolector, b.generator_first_name generador_nombre,b.generator_second_lastname generador_apellido, b.generator_place lugar, c.order_date
from recolectors a, generators b, orders c
where a.recolector_id = c.recolector_id and b.generator_id = c.generator_id;