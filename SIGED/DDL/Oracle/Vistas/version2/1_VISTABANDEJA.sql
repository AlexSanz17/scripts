
CREATE VIEW dbo.VISTABANDEJA

AS

   SELECT 'ID',
          'TIPODOCUMENTO',
          'DESPACHADO',
          'TIPOALERTA',
          'ASUNTO',
          'CHRESTADO',
          'ASUNTOEXPEDIENTE',
          'PRIORIDAD',
          'DOCUMENTO',
          'CONCESIONARIO',
          'URLARCHIVO',
          'FECHALIMITE',
          'ESTADO',
          'ETAPA',
          'EXPEDIENTE',
          'CLIENTE',
          'IDCLIENTE',
          'ACTIVIDAD',
          'NUMEROMESAPARTES',
          'PORCENTAJE_A',
          'PORCENTAJE_R',
          'IDPROCESO',
          'FECHAACCION',
          'PROPIETARIO',
          'LEIDO',
          'ARCHIVOS',
          'DOCUMENTOREFERENCIA',
          'IDREMITENTE',
          'IDACCION',
          'IDAUTOR',
          'NUMEROTRAZABILIDAD',
          'UNIDADPROPIETARIO',
          'CARGOPROPIETARIO',
          'UNIDADREMITENTE',
          'FLAGMULTIPLE',
          'FLAGATENDIDO',
          'NROTRAMITE',
          'ORIGEN',
          'FIRMADO',
		  'VIRTUAL',
          'EXTERNO',
          'UNIDADAUTOR',
          (SELECT X.NOMBRE FROM UNIDAD X WHERE IDUNIDAD = UNIDADREMITENTE) DESUNIDADREMITENTE,
          (SELECT X.NOMBRE FROM UNIDAD X WHERE IDUNIDAD = UNIDADAUTOR) DESUNIDADAUTOR,
          (SELECT X.INICIALES FROM UNIDAD X WHERE IDUNIDAD = UNIDADAUTOR) INICIALES,
          (SELECT X.INICIALES FROM UNIDAD X WHERE IDUNIDAD = UNIDADREMITENTE) INICIALESREMITENTE,
          LLAVE,
          FECHACREACIONTRAZA,
          FECHALIMITETRAZA,
          PRIORIDADTRAZA,
          PROVEIDOTRAZA,
          DESPROVEIDOTRAZA,
          '1' PENDIENTE,
           'DESPACHO',
          (SELECT COUNT (1)
             FROM IOTDTC_RECEPCION R
            WHERE R.CFLGEST = 'O' AND R.IDDOCUMENTO = ID)
             ESTADORECEPCIONVIRTUAL,
          NROVIRTUAL,
          NROMESAVIRTUAL,
          (SELECT COUNT (1) c1
             FROM Archivo c
            WHERE     c.documento =
                         (SELECT 
							CASE WHEN W.DOCUMENTOREFERENCIA IS NULL THEN W.IDDOCUMENTO ELSE W.DOCUMENTOREFERENCIA END
                            FROM DOCUMENTO W
                           WHERE W.IDDOCUMENTO = ID)
                  AND c.estado = 'A'
                  AND UPPER (
                         SUBSTR (c.rutaAlfresco, LENGTH (c.rutaAlfresco) - 2, 3)) = 'PDF')
             NROTOTALARCHIVOS,
          (SELECT COUNT (1) c2
             FROM FirmaArchivo a, Archivo aa
            WHERE     aa.documento =
                         (SELECT 
						    CASE WHEN W.DOCUMENTOREFERENCIA IS NULL THEN W.IDDOCUMENTO ELSE W.DOCUMENTOREFERENCIA END
                            FROM DOCUMENTO W
                           WHERE W.IDDOCUMENTO = ID)
                  AND aa.estado = 'A'
                  AND aa.idArchivo = a.idArchivo
                  AND a.estado = 'F'
                  AND a.idUsuario = propietario
                  AND a.unidadPropietario = unidadPropietario
                  AND a.cargoPropietario = cargoPropietario)
             NROTOTALARCHIVOSFIRMADOS,
          DESTIPINSTITUCION
     FROM (

				SELECT 
				  d.iddocumento AS ID,
                  d.tipodocumento AS tipodocumento,
                  d.despachado AS despachado,
                  ASCII ('images/bolitaVerde.gif') AS tipoalerta,
                  d.asunto AS asunto,
                  d.estado AS chrestado,
                  ex.asunto AS asuntoexpediente,
                  d.prioridad AS prioridad,
                  CONCAT (td.nombre , ' - ' , d.nrodocumento) AS documento,
                  (SELECT CONC.razonsocial
                     FROM CLIENTE CONC
                    WHERE CONC.idcliente = d.idconcesionario
                          AND CONC.IDCLIENTE NOT IN (999998)) AS concesionario,
                  ' ' AS urlarchivo,
                  d.fechalimiteatencion AS fechalimite,
                  (CASE d.estado
                      WHEN 'A' THEN 'Registrado'
                      WHEN 'C' THEN 'Archivado'
                      WHEN 'N' THEN 'Anulado'
                      WHEN 'I' THEN 'Inactivo'
                      WHEN 'T' THEN 'Atendido'
                      WHEN 'P' THEN 'Pendiente'
                      ELSE '-'
                   END) AS estado,
                  '' AS etapa,
                  ex.nroexpediente AS expediente,
				  CASE WHEN cl.CODTIPOINSTITUCION = 3 
				  THEN CONCAT(cl.nombres,' ',cl.apellidopaterno,' ',cl.apellidomaterno) 
				  ELSE cl.razonsocial END AS cliente,
                  D.ID_CLIENTE as idcliente,
                  ex.actividad AS actividad,
                  d.nromesapartes AS numeromesapartes,
                  pro.porcentajealerta1 AS porcentaje_a,
                  pro.porcentajealerta2 AS porcentaje_r,
                  pro.idproceso AS idproceso,
                  d.fechaaccion AS fechaaccion,
                  d.propietario AS propietario,
                  d.leido AS leido,
                  (SELECT COUNT (ar.idarchivo)
                     FROM archivo ar
                    WHERE ar.documento =
                            (SELECT f.documentoreferencia
                            FROM documento f
                            WHERE f.iddocumento = d.iddocumento)
                          AND ar.estado = 'A') AS archivos,
                  d.documentoreferencia,
                  (SELECT TA.REMITENTE
                     FROM TRAZABILIDADAPOYO ta
                    WHERE     ta.documento = d.iddocumento
                          AND Ta.ACCION NOT IN (31, 9, 25)
                          AND ta.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidadapoyo tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     AS idremitente,
                  (SELECT t.accion
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     AS idaccion,
                  d.autor AS idautor,
                  (SELECT COUNT (tt.idtrazabilidaddocumento)
                     FROM trazabilidaddocumento tt
                    WHERE tt.documento = d.iddocumento)
                     AS numerotrazabilidad,
                  d.unidadpropietario,
                  d.cargopropietario,
                  (SELECT ta.unidadremitente
                     FROM trazabilidadapoyo ta
                    WHERE     ta.documento = d.iddocumento
                          AND Ta.ACCION NOT IN (31, 9, 25)
                          AND ta.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidadapoyo tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     unidadremitente,
                  d.flagmultiple,
                  d.flagatendido,
                  d.id_codigo AS nrotramite,
                  d.ORIGEN,
                  d.FIRMADO,
                  1 VIRTUAL,
					CASE WHEN D.ID_EXTERNO = 1 THEN '1' ELSE 
					 (CASE WHEN TD.EXTERNOQR = '1' THEN '2' ELSE '0' END) END
                     externo,
                  D.UNIDADAUTOR,
                  (SELECT    
				  CONCAT (idarchivo,'|',RUTAALFRESCO,'|',objectid,
				  CASE WHEN d.FIRMADO = 'S' THEN CONCAT('|',d.iddocumento) ELSE '' END)
                     FROM archivo a
                    WHERE     a.documento = d.DOCUMENTOREFERENCIA
                          AND a.estado = 'A'
                          AND A.PRINCIPAL = 'S'
                          AND (SELECT COUNT (*)
                                 FROM archivo z
                                WHERE     z.documento = d.DOCUMENTOREFERENCIA
                                      AND z.estado = 'A'
                                      AND z.principal = 'S') < 2)
                     AS LLAVE,
                  NULL FECHACREACIONTRAZA,
                  (SELECT ta.fechalimiteatencion
                     FROM trazabilidadapoyo ta
                    WHERE     ta.documento = d.iddocumento
                          AND Ta.ACCION NOT IN (31, 9, 25)
                          AND ta.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidadapoyo tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     FECHALIMITETRAZA,
                  (SELECT ta.prioridad
                     FROM trazabilidadapoyo ta
                    WHERE     ta.documento = d.iddocumento
                          AND Ta.ACCION NOT IN (31, 9, 25)
                          AND ta.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidadapoyo tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     PRIORIDADTRAZA,
                  (SELECT ta.IDPROVEIDO
                     FROM trazabilidadapoyo ta
                    WHERE     ta.documento = d.iddocumento
                          AND Ta.ACCION NOT IN (31, 9, 25)
                          AND ta.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidadapoyo tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     PROVEIDOTRAZA,
                  (SELECT 
					CASE WHEN x.nombre IS NULL THEN '' ELSE x.nombre END
                     FROM trazabilidadapoyo ta, proveido x
                    WHERE     ta.documento = d.iddocumento
                          AND Ta.ACCION NOT IN (31, 9, 25)
                          AND ta.fechacreacion =
                                 (SELECT MAX (tt.fechacreacion)
                                    FROM trazabilidadapoyo tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25))
                          AND ta.idproveido = x.idproveido)
                     DESPROVEIDOTRAZA,
                  d.NROVIRTUAL,
                  d.NROMESAVIRTUAL,
                  ISNULL( ti.des_tipoinstitucion, ' ') DESTIPINSTITUCION
             FROM documento d
                  LEFT JOIN tipodocumento td ON td.idtipodocumento = d.tipodocumento
                  LEFT JOIN expediente ex ON d.expediente = ex.idexpediente
                  LEFT JOIN proceso pro ON ex.proceso = pro.idproceso
                  LEFT JOIN cliente cl ON cl.idcliente = d.id_cliente 
                  LEFT JOIN TIPOINSTITUCION ti ON ti.cod_tipoinstitucion = cl.codtipoinstitucion
            WHERE ex.estado <> 'T' AND d.documentoreferencia IS NOT NULL ) P;
			
GO