/*volumen por residuo GENERAL*/
SELECT A.solid_type_name as tipo_residuo, round( CAST(COALESCE(sum(C.weight),0) as decimal), 2) as volumen
FROM dim_solid_types A
LEFT JOIN dim_solids B ON B.solid_type_id = A.solid_type_id
LEFT JOIN fact_recolection C ON C.solid_id = B.solid_id
group by A.solid_type_id
/*volumen por residuo PERSONAL*/
SELECT A.solid_type_name as tipo_residuo, round( CAST(COALESCE(sum(C.weight),0) as decimal), 2) as volumen
FROM dim_solid_types A
LEFT JOIN dim_solids B ON B.solid_type_id = A.solid_type_id
LEFT JOIN fact_recolection C ON C.solid_id = B.solid_id
LEFT JOIN dim_orders D ON D.order_id = C.order_id
where D.recolector_id = 3
group by A.solid_type_id


/*Volumen por tipo de vivienda GENERAL*/
select A.generator_place, round( CAST(COALESCE(sum(B.weight),0) as decimal), 2) as volumen
from dim_orders A
LEFT JOIN fact_recolection B ON B.order_id = A.order_id
group by A.generator_place;
/* Volumen por tipo de vivienda PERSONAL*/
select A.generator_place, round( CAST(COALESCE(sum(B.weight),0) as decimal), 2) as volumen
from dim_orders A
LEFT JOIN fact_recolection B ON B.order_id = A.order_id
where recolector_id = 2
group by A.generator_place;



/*Volumen por mes GENERAL*/
select  TO_CHAR(TO_DATE(A.mes::text, 'MM'),'Month') AS "Mes", round( CAST(COALESCE(sum(B.weight),0) as decimal), 2) as volumen
from dim_time A
LEFT JOIN fact_recolection B ON B.time_id = A.time_id
group by A.mes
order by A.mes asc

/*Volumen por mes PERSONAL*/
select TO_CHAR(TO_DATE(A.mes::text, 'MM'),'Month') AS "Mes", round( CAST(COALESCE(sum(B.weight),0) as decimal), 2) as volumen
from dim_time A
LEFT JOIN fact_recolection B ON B.time_id = A.time_id
LEFT JOIN dim_orders C on B.order_id = C.order_id
where C.recolector_id = 3
group by A.mes
order by A.mes asc



/* Volumen por ciudad GENERAL */ 
select A.city, round( CAST(COALESCE(sum(C.weight),0) as decimal), 2) as volumen
from dim_recolector A
LEFT JOIN dim_orders B on B.recolector_id = A.recolector_id 
LEFT JOIN fact_recolection C on C.order_id = B.order_id
group by A.city


/* TOP 5 RECOLECTORES NIVEL BOLIVIA */
select A.nombre, A.apellido, A.city, round( CAST(COALESCE(sum(C.weight),0) as decimal), 2) as volumen
from dim_recolector A
LEFT JOIN dim_orders B ON B.recolector_id = A.recolector_id
LEFT JOIN fact_recolection C ON C.order_id = B.order_id
group by A.nombre, A.apellido, A.city
limit 5

























	
/*Volumen de Residuo Generado por tipo de vivienda GENERAL*/
select A.generator_place, sum(B.weight)
from dim_orders A, fact_recolection B
where A.order_id = B.order_id
group by A.generator_place



/*Volumen de Residuo Generado por tipo de vivienda PERSONAL*/
select A.generator_place, sum(B.weight)
from dim_orders A, fact_recolection B
where A.order_id = B.order_id and A.recolector_id = 2
group by A.generator_place