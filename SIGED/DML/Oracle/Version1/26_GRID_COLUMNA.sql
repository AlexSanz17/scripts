--select * from GRIDCOLUMNA;

--DELETE FROM GRIDCOLUMNA;
--COMMIT;

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (21, 'tiponotificacion', 'Tipo de Notificacion', 1, '120px', 
    0, 21);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (1, 'id', 'ID', 1, '30px', 
    1, 1);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (2, 'tipoalerta', '<img src="images/bolita.gif" />', 1, '15px', 
    0, 'formatterImg', 2);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (3, 'remitente', 'Remitente', 1, '150px', 
    0, 3);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (4, 'asunto', 'Asunto', 0, '280px', 
    0, 7);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (5, 'fecharecepcion', 'Fecha Recepci�n', 0, '110px', 
    0, 'formatterDate', 8);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (43, 'fechacreacion', 'Fecha de Creaci�n', 0, '110px', 
    0, 'formatterDate', 32);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (8, 'archivos', '<img src="images/sigedIconos/adjuntar.png" />', 1, '18px', 
    0, 'formatterImg', 12);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (9, 'fechalimite', 'Fecha Limite', 0, '200px', 
    0, 'formatterDate', 13);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (14, 'estado', 'Estado', 0, '50px', 
    0, 14);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (15, 'destinatario', 'Destinatario', 0, '150px', 
    0, 15);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (17, 'nrointerno', 'Nro Interno', 0, '150px', 
    0, 18);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (18, 'tipodocumento', 'Tipo Documento', 0, '150px', 
    1, 19);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (39, 'accion', 'Acci�n', 0, '150px', 
    0, 38);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (10, 'expediente', 'Carpeta', 0, '80px', 
    0, 9);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (11, 'proceso', 'Proceso', 0, '150px', 
    0, 14);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (12, 'cliente', 'Cliente', 0, '150px', 
    0, 15);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (13, 'fechaexpediente', 'Fecha del Expediente', 0, '150px', 
    0, 'formatterDate', 13);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (20, 'leido', '<img src=''images/sigedIconos/EmailRead15.gif'' alt=''''/>', 1, '18px', 
    0, 'formatterLeido', 11);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (22, 'tipo', '<img src="images/clic.gif" />', 1, '20px', 
    0, 'formatterTipoNumeracion', 34);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (25, 'propietario', 'Propietario', 0, '150px', 
    0, 25);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (27, 'tipodocumento', 'Tipo', 0, '50px', 
    0, 'formatterTipoDocumento', 27);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (44, 'fechaatender', 'Fecha de Atenci�n', 0, '120px', 
    0, 'formatterDate', 13);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (45, 'fechaenvio', 'Fecha de Envio', 0, '110px', 
    0, 'formatterDate', 13);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (31, 'nrodocumento', 'Numero Documento', 0, '150px', 
    0, 5);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (30, 'tipoEnvio', 'Tipo Envio', 0, '150px', 
    0, 30);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (32, 'iddocumento', 'ID Documento', 1, '50px', 
    1, 1);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (33, 'fechaarchivar', 'Fecha de Archivamiento', 0, '150px', 
    0, 'formatterDate', 13);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (34, 'area', '�rea Remitente', 0, '150px', 
    0, 34);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (35, 'asuntoExpediente', 'Asunto Carpeta', 0, '250px', 
    0, 32);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (40, 'despachado', 'Despachado', 0, '100px', 
    1, 'formatterImg', 39);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (41, 'fechadocumento', 'Fecha de Documento', 0, '150px', 
    0, 'formatterDate', 5);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (42, 'nroTramite', 'Nro Tr�mite', 0, '57px', 
    0, 32);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (48, 'firma', 'Firma', 1, '28px', 
    0, 'formatterImg', 48);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (47, 'origen', 'origen', 0, '150px', 
    1, 13);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (49, 'externo', 'Externo', 1, '28px', 
    1, 48);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (50, 'concesionario', 'Concesionario', 0, '150px', 
    0, 49);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (55, 'iconoArea', '  ', 0, '22px', 
    0, 'formatterAreas', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (57, 'iconoDocumento', '  ', 0, '20px', 
    0, 'formatterDocumentos', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (79, 'nroRegistro', 'Nro Registro', 0, '99px', 
    0, 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (51, 'legajo', 'Expediente', 0, '100px', 
    0, 9);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (52, 'asuntolegajo', 'Asunto', 0, '350px', 
    0, 9);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (53, 'arealegajo', 'Unidad', 0, '250px', 
    0, 9);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (54, 'tipolegajo', 'Tipo', 0, '250px', 
    0, 9);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (80, 'coordinacion', '  ', 0, '23px', 
    0, 'formatterCoordinacion', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (58, 'virtual', 'Virtual', 0, '33px', 
    0, 'formatterVirtual', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (59, 'derivar', 'Deriv�', 0, '32px', 
    0, 'formatterDerivar', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (70, 'proveido', 'Acci�n', 0, '78px', 
    0, 32);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (71, 'iconoAreaRemitente', ' ', 0, '29px', 
    0, 'formatterAreasRemitentes', 32);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (72, 'iconoCanal', '  ', 0, '20px', 
    0, 'formatterCanal', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (73, 'iconoPrincipal', '  ', 0, '20px', 
    0, 'formatterImg', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (74, 'constancia', '  ', 0, '20px', 
    0, 'formatterConstancia', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (75, 'estadoDespacho', '  ', 0, '20px', 
    0, 'formatterEstadoDespacho', 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (77, 'nomMail', 'Correo', 0, '99px', 
    0, 35);
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (78, 'tipInstitucion', 'Tipo', 0, '99px', 
    0, 35);
    
/*    
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (5, 'documento', 'Documento', 0, '150px', 
    0, 4);
    
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (15, 'usuario', 'Usuario', 0, '150px', 
    0, 17);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (25, 'responsable', 'Responsable', 0, '150px', 
    0, 25);  

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (35, 'prioridad', 'Prioridad', 0, '75px', 
    0, 'formatterImg', 35);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (45, 'fechaanulacion', 'Fecha de Anulaci�n', 0, '150px', 
    0, 'formatterDate', 13);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (55, 'areaAutor', '�rea Autor', 0, '150px', 
    0, 34);
    
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (57, 'cuoref', 'CUO REF', 0, '55px', 
    0, 32);
    
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (51, 'intentos', 'Intentos', 0, '42px', 
    0, 'formatterIntentos', 35);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (52, 'nroTramiteVirtual', 'Nro Tr�mite', 0, '88px', 
    0, 32);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (53, 'nroTramiteEntidad', 'Nro Tr�mite Virtual', 0, '88px', 
    0, 32);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (54, 'cuo', 'CUO', 0, '55px', 
    0, 32);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (58, 'iconoFirmaDocumento', ' ', 0, '28px', 
    0, 'formatterFirmaDocumento', 32);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (59, 'iconoPropietarioDocumento', ' ', 0, '28px', 
    0, 'formatterPropietarioDocumento', 32);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (75, 'iconoEnvioDocumento', '  ', 0, '53px', 
    0, 'formatterEnvioDocumento', 35);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, POSITION)
 Values
   (55, 'destipolegajo', 'Tipo', 0, '230px', 
    0, 32);
    
Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (55, 'cerrado', ' ', 0, '22px', 
    0, 'formatterImg', 32);

Insert into GRIDCOLUMNA
   (IDGRIDCOLUMNA, FIELD, NAME, NORESIZE, WIDTH, 
    HIDDEN, FORMATER, POSITION)
 Values
   (50, 'cargo', 'Cargo', 0, '30px', 
    0, 'formatterCargo', 35);
*/