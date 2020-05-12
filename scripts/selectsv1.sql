/* Mostrar los nombres de residuo y el nombre del tipo de residuo*/
select A.solid_name RESIDUO, B.solid_type_name TIPO
from solids A, solid_type B
where A.solid_type_id = B.solid_type_id;




