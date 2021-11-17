--SET IDENTITY_INSERT PERFIL ON;
--select * from PERFIL;

--delete from gridcolumnaxperfil;
--delete from gridcolumnaxusuario;
--delete from gridxgridcolumna;
--delete from grid;
--delete from USUARIOXROL;
--delete from USUARIO;
--delete from ROL;
--delete from PERFIL;

--commit;

Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (1, 'Administrador', 'Administrador', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (4, 'Usuario Jefe', 'Usuario Jefe', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (2, 'Usuario Final', 'Usuario Final', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (3, 'Usuario Tramite Documentario', 'Usuario Tramite Documentario', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (5, 'Usuario Locador', 'Usuario Locador', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (6, 'Usuario Mensajeria', 'Usuario Mensajeria', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (7, 'Usuario Virtual', 'Usuario Virtual', 'A');
Insert into PERFIL
   (IDPERFIL, NOMBRE, DESCRIPCION, ESTADO)
 Values
   (8, 'Usuario Particular', 'Usuario Particular', 'A');
