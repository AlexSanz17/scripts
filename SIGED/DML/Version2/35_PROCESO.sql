--SET IDENTITY_INSERT PROCESO ON;
--select * from PROCESO;


Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (3, 1, 1, 1, 'TUPA 03: PROCEDIMIENTO PARA LA INTERPRETACION DE TITULOS EN VIRTUD DE LOS CUALES LAS ENTIDADES PRESTADORAS REALIZAN SUS ACTIVIDADES', 
    'TUPA', 'TUPA 03: PROCEDIMIENTO PARA LA INTERPRETACION DE TITULOS EN VIRTUD DE LOS CUALES LAS ENTIDADES PRESTADORAS REALIZAN SUS ACTIVIDADES', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (2, 1, 1, 1, 'TUPA 02: SOLICITUD DE ACCESO A LA INFORMACION DE EXPEDIENTES EN TRAMITE', 
    'TUPA', 'TUPA 02: SOLICITUD DE ACCESO A LA INFORMACI�N DE EXPEDIENTES EN TR�MITE', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (4, 1, 1, 1, 'TUPA 04: PROCEDIMIENTO DE FIJACI�N Y REVISION TARIFARIA', 
    'TUPA', 'TUPA 04: PROCEDIMIENTO DE FIJACI�N Y REVISION TARIFARIA', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (5, 1, 1, 1, 'TUPA 05: PROCEDIMIENTO DE FIJACI�N TARIFARIA DE SERVICIOS NUEVOS', 
    'TUPA', 'TUPA 05: PROCEDIMIENTO DE FIJACI�N TARIFARIA DE SERVICIOS NUEVOS', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (100, 1, 1, 1, 'Comunicaciones Internas', 
    'CI', 'Comunicaciones Internas', 7, 'S',  GETDATE(), 
    'A', 57, 'N', 'N', 1, 
    '0.8', '0.9', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (6, 1, 1, 1, 'TUPA 06: PROCEDIMIENTO DE DESREGULARIZACION TARIFARIA', 
    'TUPA', 'TUPA 06: PROCEDIMIENTO DE DESREGULARIZACION TARIFARIA', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (7, 1, 1, 1, 'TUPA 07: PROCEDIMIENTO DE EMISOSN DE MANDATOS DE ACCESO', 
    'TUPA', 'TUPA 07: PROCEDIMIENTO DE EMISOSN DE MANDATOS DE ACCESO', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');

Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (8, 1, 1, 1, 'TUPA 08: PROCEDIMIENTO DE CUASTIONAMIENTO DE INTERPRETACION Y APLICACION DE DISPOSICIONES NORMATIVAS O REGULATORIAS', 
    'TUPA', 'TUPA 08: PROCEDIMIENTO DE CUASTIONAMIENTO DE INTERPRETACION Y APLICACION DE DISPOSICIONES NORMATIVAS O REGULATORIAS', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (9, 1, 1, 1, 'TUPA 09: PROCEDIMIENTO DE IMPUGNACI�N DE RESOLUCIONES QUE IMPONEN SANCIONES', 
    'TUPA', 'TUPA 09: PROCEDIMIENTO DE IMPUGNACI�N DE RESOLUCIONES QUE IMPONEN SANCIONES', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (10, 1, 1, 1, 'TUPA 10: PROCEDIMIENTO DE IMPUGNACION DE ACTOS EN PROCEMIENTOS DE CONTRATACIONES Y ADQUISICIONES', 
    'TUPA', 'TUPA 10: PROCEDIMIENTO DE IMPUGNACION DE ACTOS EN PROCEMIENTOS DE CONTRATACIONES Y ADQUISICIONES', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (11, 1, 1, 1, 'TUPA 11: SOLICITUD DE ACCESO A LA INFORMACION PUBLICA', 
    'TUPA', 'TUPA 11: SOLICITUD DE ACCESO A LA INFORMACION PUBLICA', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (12, 1, 1, 1, 'TUPA 12: PROCEDIMIENTO DE QUEJA CONTRA LOS DEFECTOS DE TRAMITACION', 
    'TUPA', 'TUPA 12: PROCEDIMIENTO DE QUEJA CONTRA LOS DEFECTOS DE TRAMITACION', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (13, 1, 1, 1, 'TUPA 13: PROCEDMIENTO DE SOLUCI�N DE CONTROVERSIAS EN LA EJECUCI�N DEL CONTRATO DE ACCESO Y DE SOLUCI�N DE CONTROVERSIAS ENTRE ENTIDADES PRESTADORAS', 
    'TUPA', 'TUPA 13: PROCEDMIENTO DE SOLUCI�N DE CONTROVERSIAS EN LA EJECUCI�N DEL CONTRATO DE ACCESO Y DE SOLUCI�N DE CONTROVERSIAS ENTRE ENTIDADES PRESTADORAS', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (14, 1, 1, 1, 'TUPA 14: PROCEDIMIENTO DE IMPUGNACI�N DE LA DECISI�N DE LAS ENTIDADES PRESTADORAS QUE RESUELVEN RECLAMOS DE USUARIOS', 
    'TUPA', 'TUPA 14: PROCEDIMIENTO DE IMPUGNACI�N DE LA DECISI�N DE LAS ENTIDADES PRESTADORAS QUE RESUELVEN RECLAMOS DE USUARIOS', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (15, 1, 1, 1, 'TUPA 15: PROCEDIMIENTO DE IMPUGNACI�N DE LA DENEGATORIA DE SOLICITUD DE MODIFICACI�N DE LA INFRAESTRUCTURA, DENEGATORIA DE LA SOLICITUD DE ACCESO, DETERMINACI�N DEL MECANISMO DE ASIGNACI�N DE LA FACIL', 
    'TUPA', 'TUPA 15: PROCEDIMIENTO DE IMPUGNACI�N DE LA DENEGATORIA DE SOLICITUD DE MODIFICACI�N DE LA INFRAESTRUCTURA, DENEGATORIA DE LA SOLICITUD DE ACCESO, DETERMINACI�N DEL MECANISMO DE ASIGNACI�N DE LA FACIL', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (101, 1, 1, 1, 'Documentos Externos', 
    'DE', 'Documentos Externos', 7, 'S',  GETDATE(), 
    'A', 1, 'N', 'N', 0, 
    '0.7', '0.9', 'S', 'V');
Insert into PROCESO
   (IDPROCESO, RESPONSABLE, TIPOPROCESO, IDTIPOACCESO, NOMBRE, 
    CODIGO, DESCRIPCION, TIEMPOATENCION, PERMITEMETADATA, FECHACREACION, 
    ESTADO, IDGRUPOPROCESO, TIPONUMERACION, PERMITESUMILLA, CONFIG_NOTIF_MAIL, 
    PORCENTAJEALERTA1, PORCENTAJEALERTA2, PRODUCCION, VIGENCIA)
 Values
   (1, 1, 1, 1, 'TUPA 01: PROCEDIMIENTO PARA LA CALIFICACION DE LA INFORMACION CONFIDENCIAL', 
    'TUPA', 'TUPA 01: PROCEDIMIENTO PARA LA CALIFICACION DE LA INFORMACION CONFIDENCIAL', 10, 'S', GETDATE(), 
    'A', 58, 'N', 'N', 0, 
    '0.6', '0.8', 'S', 'V');
