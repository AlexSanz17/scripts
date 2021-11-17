--select * from RECURSO;
--DELETE FROM RECURSO;
--COMMIT;


Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (62, 7, 'Registrar Fecha Notificacion - SALFE', 'registrar_RecFechaNotif_al', 'doSancionador_Notificar_Registrar_Fecha_Notif.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (63, 7, 'Adjuntar Oficio', 'adjuntar_doc_oficio', 'goAdjOficio.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (64, 7, 'Adjuntar Proy-Resolucion', 'adjuntar_doc_PrRes', 'goAdjPrRes.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (65, 7, 'Adjuntar Infome Legal Des', 'adjuntar_doc_InfLegal', 'goAdjInfLegal.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (66, 7, 'Adjuntar Infome Tecnico Des', 'adjuntar_doc_InTec', 'goAdjInfTecDes.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (67, 8, 'Usuario STOR - Boton Aprobar Expediente', 'completeTaskStorAprobar', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (68, 8, 'Usuario STOR - Boton Rechazar Expediente', 'completeTaskStorRechazar', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (69, 8, 'Usuario STOR - Boton Anular Expediente', 'anularExpediente', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (70, 5, 'Usuario Final - Menu Mis Procesos', 'UsuFinMnuMisPro', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (71, 6, 'Usuario Mensajeria Enviar', 'UsuEnviarMsg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (72, 5, 'Usuario Final Grid Mensajeria', 'UsuFinMnuDocMsg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (73, 8, 'Usuario STOR - Boton Datos Expediente', 'editarExpediente', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (74, 8, 'Usuario STOR - Boton Solicitar Cambio de Sala', 'cambioSala', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (75, 8, 'Usuario STOR - Boton ConfirmaAprobar', 'confAprobarStor', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (76, 8, 'Usuario STOR - Boton Reformulacion Tecnica Legal', 'refTecrefLeg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (77, 1, 'Mantenimiento - Menu Jerarquia', 'MantMnuJer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (78, 5, 'Usuario Final - Boton Derivacion Masiva', 'UsuFinBtnDerMas', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (79, 1, 'Mantenimiento - Menu Expedientes', 'MantMnuExp', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (80, 1, 'Mantenimiento - Grid Expedientes', 'MantGrdExp', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (81, 5, 'Usuario Final - Menu Asignar Reemplazo', 'UsuFinMnuAsiRem', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (82, 5, 'Usuario Final - Menu Notificaciones', 'UsuFinMnuNotif', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (83, 1, 'Mantenimiento - Menu Auditoria', 'MantMnuAud', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (84, 1, 'Mantenimiento - Grid Rol', 'MantGrdRol', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (85, 1, 'Mantenimiento - Menu Rol', 'MantMnuRol', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (86, 1, 'Mantenimiento - Grid Unidad', 'MantGrdUni', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (87, 1, 'Mantenimiento - Menu Unidad', 'MantMnuUni', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (88, 5, 'Usuario Final - Menu Mis Expedientes', 'UsuFinMnuMisExp', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (89, 5, 'Usuario Final - Boton Documento Virtual', 'UsuFinBtnDocVir', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (90, 9, 'Revision IT AL - GG - Aprobar', 'aprobar_rit_al_gg', 'doSancionador_Revision_IT_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (91, 9, 'Revision IT AL - GG - Rechazar', 'rechazar_rit_al_gg', 'doSancionador_Revision_IT_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (92, 9, 'Generaracion Oficio AL - GG - Registrar', 'registrar_it_al_gg', 'doSancionador_Generar_Oficio_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (93, 9, 'Revision Oficio ASL - GG - Aprobar', 'aprobar_rit_asl_gg', 'doSancionador_Revision_Oficio_ASL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (94, 9, 'Revision Oficio ASL - GG - Rechazar', 'rechazar_rit_asl_gg', 'doSancionador_Revision_Oficio_ASL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (95, 9, 'Revision Oficio SGFE - GG - Aprobar', 'aprobar_rit_sfge_gg', 'goRegRoSGFE_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (161, 1, 'Mantenimiento - Grid Clientes', 'MantGrdCli', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (162, 1, 'Mantenimiento - Menu Clientes', 'MantMnuCli', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (96, 9, 'Revision Oficio SGFE - GG - Rechazar', 'rechazar_rit_sfge_gg', 'doSancionador_Revision_Oficio_SFGE_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (97, 9, 'Recepcionar Doc Descargo SALFE - GG - Registrar', 'registrar_ddesc_salfe_gg', 'doDocDescargoSALFE_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (98, 9, 'Generacion IT Desc JU - GG - Registrar ', 'registrar_generacion_ju_gg', 'doSancionador_Generacion_DocDesc_JU_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (99, 9, 'Revision IT Desc AL - GG - Aprobar', 'aprobar_ritd_al_gg', 'doSancionador_Revision_ITDESC_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (100, 9, 'Revision IT Desc AL - GG - Rechazar', 'rechazar_ritd_al_gg', 'doSancionador_Revision_ITDESC_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (101, 9, 'Generacion IL PR AL - GG - Registrar', 'registrar_g_inf_leg_al_gg', 'doSancionador_Generacion_IL_PR_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (102, 9, 'Rev ITDes ASL - GG - Aprobar', 'aprobar_rev_r_asl_gg', 'doSancionador_Rev_ITDes_ASL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (103, 9, 'Rev ITDes ASL - GG - Rechazar', 'rechazar_rev_r_asl_gg', 'doSancionador_Rev_ITDes_ASL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (104, 9, 'Rev IL PR SGFE - GG - Aprobar', 'aprobar_rev_r_sfge_gg', 'doSancionador_Rev_IL_PR_SGFE_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (105, 9, 'Rev IL PR SGFE - GG - Rechazar', 'rechazar_rev_r_sfge_gg', 'doSancionador_Rev_IL_PR_SGFE_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (106, 9, 'Registrar Recepcion Exp Pr SALFE - GG - Registrar', 'registrar_recep_ex_pr_salfe_gg', 'doSancionador_Recepcion_Exp_Pr_SALFE_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (107, 9, 'Notificar Resolucion AL - GG - Registrar', 'registrar_notifi_al_gg', 'doSancionador_Notificar_Resolucion_AL_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (108, 9, 'Registrar Fecha Recepcion Fisica AL - GG', 'fecha_rit_al_gg', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (109, 9, 'Registrar Fecha Recepcion Fisica ASL - GG', 'fecha_rit_asl_gg', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (110, 9, 'Registrar Fecha Recepcion Fisica SGFE - GG', 'fecha_rit_sfge_gg', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (111, 9, 'Registrar Fecha Recepcion Cargo SALFE - GG', 'fecha_rit_sa_gg', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (112, 9, 'Registrar Fecha Recepcion Fisica Des SALFE_GG', 'fecha_rit_salfe_gg', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (113, 9, 'Registrar Recepcion Exp SALFE - GG - Registrar', 'registrar_recep_ex_salfe_gg', 'goRegRecepcionExp_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (114, 9, 'Registrar Fecha Notificacion - SALFE - Registrar - GG', 'registrar_RecFechaNotif_al_gg', 'doSancionador_Notificar_Registrar_Fecha_Notif_GG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (115, 10, 'Revision RR AL - SRGFE - Aprobar', 'aprobar_rit_al_srgfe', 'doSancionador_Revision_RecursoReconsideracion_AL_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (116, 10, 'Revision RR AL - SRGFE - Rechazar', 'rechazar_rit_al_srgfe', 'doSancionador_Revision_RecursoReconsideracion_AL_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (117, 10, 'Generacion ITR - SRGFE - Registrar', 'registrar_generacion_ju_srgfe', 'doSancionador_Generacion_ITR_JU_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (118, 10, 'Revision ITR - AL - SRGFE- Aprobar', 'aprobar_ritr_al_srgfe', 'doSancionador_Revision_ITR_AL_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (119, 10, 'Revision ITR - AL - SRGFE- Rechazar', 'rechazar_ritr_al_srgfe', 'doSancionador_Revision_ITR_AL_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (120, 10, 'Generacion IL PR AL - SRGFE - Registrar', 'registrar_g_inf_leg_al_srgfe', 'doSancionador_Generacion_IL_PR_AL_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (195, 1, 'Mantenimiento - Grid Reemplazo', 'MantGrdRee', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (199, 5, 'Usuario Final - Lista Procesos', 'UsuFinLstProcess', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (222, 4, 'QAS - Menu Digitalizados', 'QASMnuDigitalizados', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (198, 1, 'Reportes - SAS ', 'rep_sas', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (196, 1, 'Mantenimiento - Menu Reemplazo', 'MantMnuRee', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (197, 5, 'Usuario Final - Menu Mantenimiento de Reemplazos', 'UsuFinMnuMantRee', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (202, 6, 'Mensajeria - Grid Mensajeria Recibidos', 'MensGridRec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (203, 6, 'Mensajeria - Grid Mensajeria Cerrados', 'MensGridCer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (204, 6, 'Mensajeria - Menu Documentos Recibidos', 'MensMnuDocRec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (205, 6, 'Mensajeria - Menu Documentos Cerrados', 'MensMnuDocCer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (206, 16, 'Usuario Final - Reportes Mensajeria', 'UsuFinRepMen', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (207, 1, 'Compartidos', 'MnuCompartido', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (172, 5, 'Usuario Final - Grid Informativos', 'UsuFinMnuInfo', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (173, 16, 'Usuario Final - Reportes Proceso', 'UsuFinRepPro', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (174, 2, 'Expedientes Historicos - Registro', 'ExpHisReg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (175, 4, 'Expedientes Historicos - Lectura', 'ExpHisRead', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (176, 1, 'Mantenimiento - Grid Parametro', 'MantGrdPar', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (177, 1, 'Mantenimiento - Menu Parametro', 'MantMnuPar', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (178, 16, 'UsuarioFinal - MenuReportes', 'UsuFinReportes', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (179, 16, 'Usuario Final - Lista Pendientes', 'UsuFinPendientes', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (180, 16, 'Usuario Final - Lista de Ingresados', 'UsuFinIngresados', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (184, 1, 'Mantenimiento - Grid Departamento', 'MantGrdDep', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (185, 1, 'Mantenimiento - Menu Departamento', 'MantMnuDep', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (186, 1, 'Mantenimiento - Grid Provincia', 'MantGrdProv', 'A');

--
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (187, 1, 'Mantenimiento - Menu Provincia', 'MantMnuProv', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (188, 1, 'Mantenimiento - Grid Distrito', 'MantGrdDis', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (189, 1, 'Mantenimiento - Menu Distrito', 'MantMnuDis', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (190, 16, 'Usuario Final - Lista Concluidos', 'UsuFinConcluidos', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (228, 5, 'Usuario Final - Boton Nuevo Documento Tramite ', 'UsuFinBtnNueDocTra', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (229, 5, 'Usuario Final - Menu Documentos Pendientes', 'UsuFinMnuDocPen', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (191, 16, 'Usuario Final - Lista Pendientes AYQ', 'UsuFinRepAYQ', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (201, 1, 'Mesa de Partes - Imprimir Cargo', 'MPImpCargo', 'A');

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (121, 10, 'Rev PR y RR ASL - SRGFE - Aprobar', 'aprobar_rev_prrr_asl_srgfe', 'doSancionador_Rev_IL_PRR_ASL_RGFE.action', 
    'A');

--

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (122, 10, 'Rev PR y RR ASL - SRGFE - Rechazar', 'rechazar_rev_prrr_asl_srgfe', 'doSancionador_Rev_IL_PRR_ASL_RGFE.action', 
    'A');

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (164, 1, 'Mantenimiento - Grid Plantillas', 'MantGrdPlt', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (165, 1, 'Mantenimiento - Menu Plantillas', 'MantMnuPlt', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (168, 1, 'Mantenimiento - Grid Grupo de Procesos', 'MantGrdGPr', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (169, 1, 'Mantenimiento - Menu Grupo de Procesos', 'MantMnuGPr', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (170, 1, 'Mantenimiento - Grid Numeracion', 'MantGrdNum', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (171, 1, 'Mantenimiento - Menu Numeracion', 'MantMnuNum', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (123, 10, 'Rev PR y RR SGFE - SRGFE - Aprobar', 'aprobar_rev_prrr_sgfe_srgfe', 'doSancionador_Rev_IL_PRR_SGFE_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (124, 10, 'Rev PR y RR SGFE - SRGFE - Rechazar', 'rechazar_rev_prrr_sgfe_srgfe', 'doSancionador_Rev_IL_PRR_SGFE_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (125, 10, 'Registrar Datos Resolucion - SA - SRGFE - Registrar', 'registrar_datos_reconsideracion_sa_srgfe', 'goRegDatosRR_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (126, 10, 'Registrar Notificacion Res - AL - SRGFE - Registrar', 'registrar_notififechRes_al_srgfe', 'doSancionador_Notificar_Resolucion_AL_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (127, 10, 'Registro de Rec Fecha Notif. - SA - SRGFE - Registrar', 'registrar_recFechaNoti_sa_srgfe', 'doSancionador_Registrar_Fecha_Notif_SALFE_RGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (128, 10, 'Registrar Fecha Recepcion Fisica AL - SRGFE', 'fecha_rit_al_sgfe', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (129, 11, 'Revision RR AL - SRGG - Aprobar', 'aprobar_rit_al_srgg', 'doSancionador_Revision_RecursoReconsideracion_AL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (130, 11, 'Revision RR AL - SRGG - Rechazar', 'rechazar_rit_al_srgg', 'doSancionador_Revision_RecursoReconsideracion_AL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (131, 11, 'Generacion ITR - JU - SRGG - Registrar', 'registrar_generacion_ju_srgg', 'doSancionador_Generacion_ITR_JU_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (132, 11, 'Revision ITR - AL - SRGG- Aprobar', 'aprobar_ritr_al_srgg', 'doSancionador_Revision_ITR_AL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (133, 11, 'Revision ITR - AL - SRGG- Rechazar', 'rechazar_ritr_al_srgg', 'doSancionador_Revision_ITR_AL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (134, 11, 'Generacion IL PR AL - SRGG - Registrar', 'registrar_g_inf_leg_al_srgg', 'doSancionador_Generacion_IL_PR_AL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (135, 11, 'Rev PR y RR ASL - SRGG - Aprobar', 'aprobar_rev_prrr_asl_srgg', 'doSancionador_Rev_IL_PRR_ASL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (136, 11, 'Rev PR y RR ASL - SRGG - Rechazar', 'rechazar_rev_prrr_asl_srgg', 'doSancionador_Rev_IL_PRR_ASL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (137, 11, 'Rev PR y RR SGFE - SRGG - Aprobar', 'aprobar_rev_prrr_sgfe_srgg', 'doSancionador_Rev_IL_PRR_SGFE_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (138, 11, 'Rev PR y RR SGFE - SRGG - Rechazar', 'rechazar_rev_prrr_sgfe_srgg', 'doSancionador_Rev_IL_PRR_SGFE_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (139, 11, 'Recepcion Expediente Proy Res - SA - SRGG - Registrar', 'registrar_rec_exp_proy_sa_srgg', 'doSancionador_Recepcion_Expediente_Proyecto_Resolucion_SRGG.action', 
    'A');

--

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (140, 11, 'Recepcion Expediente GG - SA - SRGG - Registrar', 'registrar_rec_expgg_sa_srgg', 'goRegDatosRR_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (141, 11, 'Registrar Notificacion Res - AL - SRGG - Registrar', 'registrar_notififechRes_al_srgg', 'doSancionador_Notificar_Resolucion_AL_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (142, 11, 'Registro de Rec Fecha Notif. - SA - SRGG - Registrar', 'registrar_recFechaNoti_sa_srgg', 'doSancionador_Registrar_Fecha_Notif_SALFE_RGG.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (143, 11, 'Registrar Fecha Recepcion Fisica AL - SRGG', 'fecha_rit_al_sgg', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (144, 12, 'Revision RA AL - SAPEL - Aprobar', 'aprobar_rit_al_sapel', 'doSancionador_Revision_RecursoReconsideracion_AL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (145, 12, 'Revision RA AL - SAPEL - Rechazar', 'rechazar_rit_al_sapel', 'doSancionador_Revision_RecursoReconsideracion_AL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (146, 12, 'Generacion ITR - JU - SAPEL - Registrar', 'registrar_generacion_ju_sapel', 'doSancionador_Generacion_ITR_JU_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (147, 12, 'Revision ITR - AL - SAPEL- Aprobar', 'aprobar_ritr_al_sapel', 'doSancionador_Revision_ITDESC_AL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (148, 12, 'Revision ITR - AL - SAPEL- Rechazar', 'rechazar_ritr_al_sapel', 'doSancionador_Revision_ITDESC_AL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (149, 12, 'Generacion IL PR AL - SAPEL - Registrar', 'registrar_g_inf_leg_al_sapel', 'doSancionador_Generacion_IL_PR_AL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (150, 12, 'Rev PR y RR ASL - SAPEL - Aprobar', 'aprobar_rev_prrr_asl_sapel', 'doSancionador_Rev_IL_PRR_ASL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (151, 12, 'Rev PR y RR ASL - SAPEL - Rechazar', 'rechazar_rev_prrr_asl_sapel', 'doSancionador_Rev_IL_PRR_ASL_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (152, 12, 'Rev PR y RR SGFE - SAPEL - Aprobar', 'aprobar_rev_prrr_sgfe_sapel', 'doSancionador_Rev_IL_PRR_SGFE_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (153, 12, 'Rev PR y RR SGFE - SAPEL - Rechazar', 'rechazar_rev_prrr_sgfe_sapel', 'doSancionador_Rev_IL_PRR_SGFE_SAPEL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (154, 12, 'Recepcion Expediente Tastem - SA - SAPEL - Registrar', 'registrar_rec_exp_tastem_sa_sapel', 'goRegDatosApel.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (155, 12, 'Registrar Fecha Recepcion Fisica AL - SAPEL', 'fecha_rit_al_sapel', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (156, 8, 'Usuario STOR - Boton Requerimientos', 'requerimientos', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (157, 1, 'Mantenimiento - Grid Sedes', 'MantGrdSed', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (158, 1, 'Mantenimiento - Menu Sedes', 'MantMnuSed', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (159, 1, 'Mantenimiento - Grid Tipo de Documentos', 'MantGrdTdo', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (160, 1, 'Mantenimiento - Menu Tipo de Documentos', 'MantMnuTdo', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (1, 1, 'Mantenimiento - Grid Usuarios', 'MantGrdUsu', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (2, 1, 'Mantenimiento - Grid Procesos', 'MantGrdPro', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (3, 1, 'Mantenimiento - Grid Modulos', 'MantGrdMod', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (4, 1, 'Mantenimiento - Grid Recursos', 'MantGrdRec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (5, 1, 'Mantenimiento - Grid Perfiles', 'MantGrdPer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (6, 1, 'Mantenimiento - Menu Usuarios', 'MantMnuUsu', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (7, 1, 'Mantenimiento - Menu Procesos', 'MantMnuPro', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (8, 1, 'Mantenimiento - Menu Modulos', 'MantMnuMod', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (9, 1, 'Mantenimiento - Menu Recursos', 'MantMnuRec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (10, 1, 'Mantenimiento - Menu Perfiles', 'MantMnuPer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (11, 1, 'Mantenimiento - Menu Feriados', 'MantMnuFer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (12, 2, 'Mesa de Partes - Grid', 'MPGrd', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (13, 2, 'Mesa de Partes - Menu Documentos Registrados', 'MPMnuDocReg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (14, 2, 'Mesa de Partes - Boton Nuevo Documento Principal', 'MPBtnNueDocPri', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (15, 3, 'Digitalizador - Grid', 'DigGrd', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (16, 3, 'Digitalizador - Menu Documentos Ingresados', 'DigMnuDocIng', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (17, 4, 'Control de Calidad - Grid', 'QASGrd', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (18, 4, 'Control de Calidad - Menu Documentos Digitalizados', 'QASMnuDocDig', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (19, 5, 'Usuario Final - Grid', 'UsuFinGrd', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (20, 5, 'Usuario Final - Menu Documentos Recibidos', 'UsuFinMnuDocRec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (21, 5, 'Usuario Final - Menu Documentos x Enviar', 'UsuFinMnuDocXEnv', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (22, 5, 'Usuario Final - Menu Documentos Enviados', 'UsuFinMnuDocEnv', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (23, 5, 'Usuario Final - Menu Carpetas de Busqueda', 'UsuFinMnuCarBus', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (24, 5, 'Usuario Final - Boton Nuevo Expediente', 'UsuFinBtnNueExp', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (25, 5, 'Usuario Final - Boton Listas', 'UsuFinBtnLis', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (26, 5, 'Usuario Final - Boton Seguimiento', 'UsuFinBtnSeg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (27, 5, 'Usuario Final - Boton Nuevo Documento Principal', 'UsuFinBtnNueDocPri', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (28, 5, 'Usuario Final - Boton Buscar', 'UsuFinBtnBus', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (29, 5, 'Usuario Final - Boton Derivar', 'UsuFinBtnDer', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (30, 5, 'Usuario Final - Boton Rechazar', 'UsuFinBtnRec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (31, 5, 'Usuario Final - Boton Trazabilidad Expediente', 'UsuFinBtnTraExp', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (32, 5, 'Usuario Final - Boton Archivar', 'UsuFinBtnArc', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (33, 5, 'Usuario Final - Boton Nuevo Documento Secundario', 'UsuFinBtnNueDocSec', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (34, 5, 'Usuario Final - Boton Upload', 'UsuFinBtnUpl', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (35, 6, 'Mensajeria - Grid', 'msggrid', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (36, 1, 'Nuevo Doc Sas', 'nvodocsas', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (37, 1, 'Menu Mantenimiento de Procedimientos Inc', 'menumanpi', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (38, 7, 'Revision IT AL - GFE - Aprobar', 'aprobar_rit_al', 'doSancionador_Revision_IT_AL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (39, 7, 'Revision IT AL - GFE - Rechazar', 'rechazar_rit_al', 'doSancionador_Revision_IT_AL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (40, 7, 'Generaracion Oficio AL - GFE - Registrar', 'registrar_it_al', 'doSancionador_Generar_Oficio_AL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (41, 7, 'Revision Oficio ASL - GFE - Aprobar', 'aprobar_rit_asl', 'doSancionador_Revision_Oficio_ASL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (42, 7, 'Revision Oficio ASL - GFE - Rechazar', 'rechazar_rit_asl', 'doSancionador_Revision_Oficio_ASL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (43, 7, 'Revision Oficio SGE - GFE - Aprobar', 'aprobar_rit_sfge', 'goRegRoSGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (44, 7, 'Revision Oficio SGE - GFE - Rechazar', 'rechazar_rit_sfge', 'doSancionador_Revision_Oficio_SFGE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (45, 7, 'Recepcionar Doc Descargo SALFE - GFE - Registrar', 'registrar_ddesc_salfe', 'doDocDescargoSALFE.action', 
    'A');

--

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (192, 1, 'Mantenimiento - Grid Lista', 'MantGrdLis', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (193, 1, 'Mantenimiento - Menu Lista', 'MantMnuLis', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (194, 5, 'Usuario Final - Menu Lista', 'UsuFinMnuLista', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (200, 1, 'Mantenimiento - Reporte', 'MantMnuRep', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (46, 7, 'Generacion IT Desc JU - Registrar ', 'registrar_generacion_ju', 'doSancionador_Generacion_DocDesc_JU.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (47, 7, 'Revision IT Desc AL - GFE - Aprobar', 'aprobar_ritd_al', 'doSancionador_Revision_ITDESC_AL.action', 
    'A');

--

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (48, 7, 'Revision IT Desc AL - GFE - Rechazar', 'rechazar_ritd_al', 'doSancionador_Revision_ITDESC_AL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (49, 7, 'Generacion IL PR AL - GFE - Registrar', 'registrar_g_inf_leg_al', 'doSancionador_Generacion_IL_PR_AL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (50, 7, 'Rev ITDes ASL - GFE - Aprobar', 'aprobar_rev_r_asl', 'doSancionador_Rev_ITDes_ASL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (51, 7, 'Rev ITDes ASL - GFE - Rechazar', 'rechazar_rev_r_asl', 'doSancionador_Rev_ITDes_ASL.action', 
    'A');

--

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (52, 7, 'Rev IL PR SGFE - GFE - Aprobar', 'aprobar_rev_r_sfge', 'doSancionador_Rev_IL_PR_SGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (53, 7, 'Rev IL PR SGFE - GFE - Rechazar', 'rechazar_rev_r_sfge', 'doSancionador_Rev_IL_PR_SGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (54, 7, 'Registrar Monto Sancion - GFE - Registrar', 'registrar_ms_salfe', 'goRegMontoSancion.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (55, 7, 'Notificar Resolucion AL - GFE - Registrar', 'registrar_notifi_al', 'doSancionador_Notificar_Resolucion_AL.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (56, 7, 'Registrar Fecha Recepcion Fisica AL', 'fecha_rit_al', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (57, 7, 'Registrar Fecha Recepcion Fisica ASL', 'fecha_rit_asl', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (58, 7, 'Registrar Fecha Recepcion Fisica SGFE', 'fecha_rit_sfge', 'goRegFecha.action', 
    'A');

--

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (59, 7, 'Datos', 'datos_dcc_desc_rosgfe', 'goRegRoSGFE.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (60, 6, 'USuario Grid Sancionador', 'UsuSasGrd', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ACTIONURL, 
    ESTADO)
 Values
   (61, 7, 'Registrar Fecha Recepcion Fisica Des SALFE', 'fecha_rit_salfe', 'goRegFecha.action', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (208, 5, 'Botòn Modificar Expediente', 'modExpediente', 'Botòn Modificar Expediente', 
    'A');

Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (210, 5, 'Consulta documentos recibidos', 'UsuFinConsulta3', 'Consulta documentos Recibidos', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (211, 5, 'Consulta Documentos Remitidos Pendientes de Respuesta', 'UsuFinConsulta4', 'Consulta Documentos Remitidos Pendientes de Respuesta', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (212, 5, 'Botón Adjuntar Archivo', 'BtnAdjuntarArchivo', 'Botón Adjuntar Archivo', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (213, 5, 'Menu Importantes', 'menSeguimiento', 'Menu Importantes', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (214, 5, 'Botón Imprimir Proveido', 'BtnImprimirProveido', 'Botón Imprimir Proveido', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (215, 5, 'Botón eliminar archivo', 'BtnEliminarArchivo', 'Botón eliminar archivo', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (216, 5, 'Consulta Mis Expedientes', 'UsuFinMisExpedientes', 'Consulta Mis Expedientes', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (217, 5, 'Modulo Archivo Central', 'menArchCentral', 'Modulo Archivo Central', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (218, 5, 'Usuario Final - Visor Gerencial', 'UsuFinVisorGerencial', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (223, 5, 'Alerta', 'BtnAlerta', 'Alerta', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (224, 5, 'Usuario Final - Boton Visor', 'UsuFinBtnVis', 'Visor', 
    'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (225, 1, 'Mantenimiento - Consulta Log Documentos', 'MantMnuLogDoc', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (227, 5, 'Usuario Final - Boton Fedatario', 'UsuFinBtnFedatario', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (226, 1, 'Mantenimiento - Grid Log Documentos', 'MantGrdLogDoc', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (230, 5, 'Usuario Final - Menu Documentos Anulados', 'UsuFinMnuDocAnu', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (231, 5, 'Usuario Final - Menu Documentos Firmados', 'UsuFinMnuFirma', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (234, 5, 'Usuario Final - Menu Mis Documentos Recepcion Virtual', 'UsuFinMnuMisRecVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (232, 5, 'Usuario Final - Menu Documentos Recepcion Virtual', 'UsuFinMnuRecVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (233, 5, 'Usuario Final - Menu Documentos Despacho Virtual', 'UsuFinMnuDesVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (238, 5, 'Usuario Final - Menu Observados Recepcion', 'UsuFinMnuRecObs', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (240, 5, 'Usuario Final - Menu Documentos Firmados Virtuales', 'UsuFinMnuFirRecVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (241, 5, 'Usuario Final - Menu Documentos Firmados Mesa Parte Virtual', 'UsuFinMnuFirMesParVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (242, 5, 'Usuario Final - Menu Documentos Despacho Mesa Parte Virtual', 'UsuFinMnuDesMesParVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (235, 5, 'Usuario Final - Menu Mis Legajos', 'UsuFinMnuMisLeg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (236, 5, 'Usuario Final - Menu Legajo Compartido', 'UsuFinMnuComLeg', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (239, 5, 'Usuario Final - Menu Documentos Mesa Parte Virtual', 'UsuFinMnuMesParVirtual', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (243, 5, 'Usuario Final - Menu Documentos Despacho Unificado', 'UsuFinMnuDesUnificado', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (244, 5, 'Usuario Final - Menu Documentos Despacho Fisico - Correo', 'UsuFinMnuDesFisicoCorreo', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (245, 5, 'Usuario Final - Menu Documentos Despacho Oservados', 'UsuFinMnuDesUnfObs', 'A');
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, ESTADO)
 Values
   (246, 5, 'Usuario Final - Menu Documentos Despacho Unificado Por Cerrar', 'UsuFinMnuDesUnfPorCerrar', 'A');

/*
Insert into RECURSO
   (IDRECURSO, IDMODULO, NOMBRE, CODIGO, DESCRIPCION, 
    ESTADO)
 Values
   (209, 0, 'Botón Hoja de Ruta', 'HojaRuta', 'HojaRuta', 
    'A');
*/