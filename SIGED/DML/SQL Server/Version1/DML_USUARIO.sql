select * from usuario;

insert into usuario
( usuario, clave, clave_siged, nombres, apellidos, correo, idrol, estado, 
idfuncion, idunidad, enviocorreo, usuariofinal, flagdocumentocf, flagviewtrazabilidad) 
values('admin', 'admin', 'admin', 'Vidal', 'Cupe','vidal.cupe@sofisisperu.com', 6, 'A',
1, 2, 'S', 'S', '0', '0');


--usuarios derivacion
insert into usuario
( usuario, clave, clave_siged, nombres, apellidos, correo, idrol, estado, 
idfuncion, idunidad, enviocorreo, usuariofinal, flagdocumentocf, flagviewtrazabilidad, jefe) 
values('derivacion1', 'admin', 'admin', 'Juan', 'Perez','vidalcq2607@gmail.com', 8, 'A',
1, 2, 'S', 'S', '0', '0','1');

insert into usuario
( usuario, clave, clave_siged, nombres, apellidos, correo, idrol, estado, 
idfuncion, idunidad, enviocorreo, usuariofinal, flagdocumentocf, flagviewtrazabilidad, jefe) 
values('derivacion2', 'admin', 'admin', 'Luis', 'Martinez','vidalcq_2607@hotmail.com', 8, 'A',
1, 2, 'S', 'S', '0', '0','1');