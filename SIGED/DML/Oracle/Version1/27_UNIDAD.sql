--select * from UNIDAD;
--commit;

insert into unidad( idunidad, dependencia, sede, nombre, descripcion) 
values( 1, null, 1, 'Empresa', 'Unidad raiz');

insert into unidad(idunidad, dependencia, sede, nombre, descripcion) 
values(2, 1, 1, 'Sistemas', 'Unidad de Sistemas');

insert into unidad(idunidad, dependencia, sede, nombre, descripcion) 
values(3, 1, 1, 'Sistemas', 'Unidad de Tesoreria');

insert into unidad(idunidad, dependencia, sede, nombre, descripcion) 
values(4, 1, 1, 'Sistemas', 'Unidad de Contabilidad');
