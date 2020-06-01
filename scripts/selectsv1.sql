/*OBTENER TODAS LAS ORDENES*/
select A.order_id id, A.generator_id id_generador, A.recolector_id id_recolector, A.order_date fecha,
    A.order_detail detalle, A.order_image_url url_imagen, A.order_rate calidad, A.order_latitude Latitud, A.order_longitude longitud,
    B.generator_first_name nombre_generador, B.generator_first_lastname apellido_generador, B.generator_phone telefono_generador
    from orders A, generators B
    where B.generator_id = A.generator_id and A.order_state = 1;



/* OBTENER DETALLE DE ORDEN POR ID DE ORDEN */
select A.order_id id, A.generator_id id_generador, A.recolector_id id_recolector, A.order_date fecha,
    A.order_detail detalle, A.order_image_url url_imagen, A.order_rate calidad, A.order_latitude Latitud, A.order_longitude longitud,
    B.generator_first_name nombre, B.generator_first_lastname apellido, B.generator_phone
    from orders A, generators B
    where B.generator_id = A.generator_id and A.order_ID = $1;

/* OBTENER LAS ORDENES POR ID DE GENERADOR */
select A.order_id id, A.generator_id id_generador, A.recolector_id id_recolector, A.order_date fecha,
    A.order_detail detalle, A.order_image_url url_imagen, A.order_rate calidad, A.order_latitude Latitud, A.order_longitude longitud
    from orders A, generators B
    where A.generator_id = $1 and B.generator_id = $1 and A.order_state = 1;

/* Crear una orden */
insert into orders(generator_id, order_date, order_detail, order_image_url, order_latitude, order_longitude, order_state)
    values
    ($1,$2,$3,$4,$5,$6,1) returning order_id;


/* Eliminar logicamente una ordem */
update orders set order_state = 3 where order_id = $1;

/* Bloquear una orden por estar siendo recolectada */


/* OBTENER LAS RECOLECCIONES DE UNA ORDEN */

select A.recolection_id id, B.solid_name residuo, A.recolection_weight peso_kg, A.order_id
    from recolections A, solids B
    where A.order_id = $1 and B.solid_id = A.solid_id;


/* OBTENER LOS RESIDUOS SÓLIDOS */
select A.solid_id ID, A.solid_name Residuo_Solido
    from solids A, solid_types B
    where A.solid_type_id = B.solid_type_id;

/* oBTENER DATOS DE GENERADOR */

    select 
    generator_id id,
    generator_first_name nombre,
    generator_second_name segundo_nombre,
    generator_first_lastname apellido_paterno,
    generator_second_lastname apellido_materno,
    generator_born_date fecha_nacimiento,
    generator_gender genero,
    generator_email correo,
    generator_rate calificacion,
    generator_phone telefono,
    generator_place tipo_domicilio
    from generators where generator_email = $1 and generator_password = $2;




/* OBTENER DATOS DE RECOLECTOR */

	select 
	recolector_id id,
	recolector_first_name nombre,
	recolector_second_name segundo_nombre,
	recolector_first_lastname apellido_paterno,
	recolector_second_lastname apellido_materno,
	recolector_born_date fecha_nacimiento,
	recolector_gender genero,
	recolector_email correo,
	recolector_phone telefono,
	recolector_ci cedula,
	recolector_city ciudad
	from recolectors where recolector_email = $1 and recolector_password = $2	




/* registrar recolector */

insert into recolectors(
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
        recolector_state,
        recolector_group,
        recolector_picture_url)
    values
    ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,1,'Eco Recolectoras del Norte','') returning recolector_id;

/* registrar generador */

 insert into generators(
        generator_first_name,
        generator_second_name,
        generator_first_lastname,
        generator_second_lastname,
        generator_born_date,
        generator_gender,
        generator_email,
        generator_password,
        generator_phone,
        generator_place,
        generator_ci,
        generator_rate,
        generator_picture_url,
        generator_state)
    values
    ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,0,'',1) returning generator_id;


/* OBTENER LAS ORDENES POR ID DE ORDEN */
/* OBTENER LAS ORDENES POR ID DE ORDEN */
/* OBTENER LAS ORDENES POR ID DE ORDEN */
/* OBTENER LAS ORDENES POR ID DE ORDEN */



