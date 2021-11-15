--SET IDENTITY_INSERT GRUPOPROCESO ON;
--select * from GRUPOPROCESO;

Insert into GRUPOPROCESO
   (IDGRUPOPROCESO, NOMBRE, CODIGO, DESCRIPCION, FECHACREACION, 
    ESTADO)
 Values
   (1, 'Documentos Externos', 'DE', 'Procesos sin Flujo', GETDATE(), 
    'A');
Insert into GRUPOPROCESO
   (IDGRUPOPROCESO, NOMBRE, CODIGO, DESCRIPCION, FECHACREACION, 
    ESTADO)
 Values
   (57, 'Comunicaciones Internas', 'CI', 'Comunicaciones Internas', GETDATE(), 
    'A');
Insert into GRUPOPROCESO
   (IDGRUPOPROCESO, NOMBRE, CODIGO, DESCRIPCION, FECHACREACION, 
    ESTADO)
 Values
   (58, 'TUPA', 'TUPA', 'Grupo para los procesos TUPA', GETDATE(), 
    'A');
