--SET IDENTITY_INSERT usuario ON;
--select * from usuario;
--delete from usuario;

insert into usuario
( idusuario, usuario, clave, clave_siged, nombres, apellidos, correo, idrol, estado, 
idfuncion, idunidad, enviocorreo, usuariofinal, flagdocumentocf, flagviewtrazabilidad) 
values(1, 'admin', 'admin', 'admin', 'Vidal', 'Cupe','vidal.cupe@sofisisperu.com', 6, 'A',
8, 2, 'S', 'S', '0', '0');


--usuarios derivacion
insert into usuario
( idusuario, usuario, clave, clave_siged, nombres, apellidos, correo, idrol, estado, 
idfuncion, idunidad, enviocorreo, usuariofinal, flagdocumentocf, flagviewtrazabilidad, jefe) 
values(2, 'derivacion1', 'admin', 'admin', 'Juan', 'Perez','vidalcq2607@gmail.com', 6, 'A',
5, 3, 'S', 'S', '0', '0','1');

insert into usuario
( idusuario, usuario, clave, clave_siged, nombres, apellidos, correo, idrol, estado, 
idfuncion, idunidad, enviocorreo, usuariofinal, flagdocumentocf, flagviewtrazabilidad, jefe) 
values(3, 'derivacion2', 'admin', 'admin', 'Luis', 'Martinez','vidalcq_2607@hotmail.com', 8, 'A',
5, 2, 'S', 'S', '0', '0','1');
