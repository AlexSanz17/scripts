--SET IDENTITY_INSERT TIPOACCESO ON;
--select * from TIPOACCESO;

Insert into TIPOACCESO
   (IDTIPOACCESO, NOMBRE, CODIGO, DESCRIPCION, ESTADO)
 Values
   (1, 'Expediente sin Restriccion', 'ProcAcc1', 'Todos pueden ver todo el expediente', 'A');
Insert into TIPOACCESO
   (IDTIPOACCESO, NOMBRE, CODIGO, DESCRIPCION, ESTADO)
 Values
   (2, 'Expediente Confidencial a nivel de proceso', 'ProcAcc2', 'Solo los participantes de un proceso podran tener acceso al mismo', 'A');
Insert into TIPOACCESO
   (IDTIPOACCESO, NOMBRE, CODIGO, DESCRIPCION, ESTADO)
 Values
   (3, 'Expediente Confidencial a nivel de expediente', 'ProcAcc3', 'Solo el usuario que tiene el expediente en su poder podra visualizarlo', 'A');
Insert into TIPOACCESO
   (IDTIPOACCESO, NOMBRE, CODIGO, DESCRIPCION, ESTADO)
 Values
   (4, 'Expediente Confidencial ', 'ProcAcc4', 'Todos pueden ver todo el expediente', 'A');
