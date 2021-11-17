--select * from GRUPOPROCESO;
--COMMIT;

Insert into GRUPOPROCESO
   (IDGRUPOPROCESO, NOMBRE, CODIGO, DESCRIPCION, FECHACREACION, 
    ESTADO)
 Values
   (1, 'Documentos Externos', 'DE', 'Procesos sin Flujo', TO_DATE('07/07/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    'A');
Insert into GRUPOPROCESO
   (IDGRUPOPROCESO, NOMBRE, CODIGO, DESCRIPCION, FECHACREACION, 
    ESTADO)
 Values
   (57, 'Comunicaciones Internas', 'CI', 'Comunicaciones Internas', TO_DATE('05/31/2011 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    'A');
Insert into GRUPOPROCESO
   (IDGRUPOPROCESO, NOMBRE, CODIGO, DESCRIPCION, FECHACREACION, 
    ESTADO)
 Values
   (58, 'TUPA', 'TUPA', 'Grupo para los procesos TUPA', TO_DATE('11/18/2011 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    'A');
