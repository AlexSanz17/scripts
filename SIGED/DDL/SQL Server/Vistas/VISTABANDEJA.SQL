DROP VIEW SITRDOSGD.VISTABANDEJA;

/* Formatted on 27/10/2021 06:50:46 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.VISTABANDEJA
(
   ID,
   TIPODOCUMENTO,
   DESPACHADO,
   TIPOALERTA,
   ASUNTO,
   CHRESTADO,
   ASUNTOEXPEDIENTE,
   PRIORIDAD,
   DOCUMENTO,
   CONCESIONARIO,
   URLARCHIVO,
   FECHALIMITE,
   ESTADO,
   ETAPA,
   EXPEDIENTE,
   CLIENTE,
   IDCLIENTE,
   ACTIVIDAD,
   NUMEROMESAPARTES,
   PORCENTAJE_A,
   PORCENTAJE_R,
   IDPROCESO,
   FECHAACCION,
   PROPIETARIO,
   LEIDO,
   ARCHIVOS,
   DOCUMENTOREFERENCIA,
   IDREMITENTE,
   IDACCION,
   IDAUTOR,
   NUMEROTRAZABILIDAD,
   UNIDADPROPIETARIO,
   CARGOPROPIETARIO,
   UNIDADREMITENTE,
   FLAGMULTIPLE,
   FLAGATENDIDO,
   NROTRAMITE,
   ORIGEN,
   FIRMADO,
   VIRTUAL,
   EXTERNO,
   UNIDADAUTOR,
   DESUNIDADREMITENTE,
   DESUNIDADAUTOR,
   INICIALES,
   INICIALESREMITENTE,
   LLAVE,
   FECHACREACIONTRAZA,
   FECHALIMITETRAZA,
   PRIORIDADTRAZA,
   PROVEIDOTRAZA,
   DESPROVEIDOTRAZA,
   PENDIENTE,
   DESPACHO,
   ESTADORECEPCIONVIRTUAL,
   NROVIRTUAL,
   NROMESAVIRTUAL,
   NROTOTALARCHIVOS,
   NROTOTALARCHIVOSFIRMADOS,
   DESTIPINSTITUCION
)
   BEQUEATH DEFINER
AS
   SELECT "ID",
          "TIPODOCUMENTO",
          "DESPACHADO",
          "TIPOALERTA",
          "ASUNTO",
          "CHRESTADO",
          "ASUNTOEXPEDIENTE",
          "PRIORIDAD",
          "DOCUMENTO",
          "CONCESIONARIO",
          "URLARCHIVO",
          "FECHALIMITE",
          "ESTADO",
          "ETAPA",
          "EXPEDIENTE",
          "CLIENTE",
          "IDCLIENTE",
          "ACTIVIDAD",
          "NUMEROMESAPARTES",
          "PORCENTAJE_A",
          "PORCENTAJE_R",
          "IDPROCESO",
          "FECHAACCION",
          "PROPIETARIO",
          "LEIDO",
          "ARCHIVOS",
          "DOCUMENTOREFERENCIA",
          "IDREMITENTE",
          "IDACCION",
          "IDAUTOR",
          "NUMEROTRAZABILIDAD",
          "UNIDADPROPIETARIO",
          "CARGOPROPIETARIO",
          "UNIDADREMITENTE",
          "FLAGMULTIPLE",
          "FLAGATENDIDO",
          "NROTRAMITE",
          "ORIGEN",
          "FIRMADO",
          --"VIRTUAL",
          (SELECT (   'X'
                   || DECODE (
                         EXTERNO,
                         1, (SELECT DECODE (COUNT (1), 0, 'X', 'R')
                               FROM IOTDTC_RECEPCION
                              WHERE     VNUMREGSTD = NROTRAMITE
                                    AND CFLGEST NOT IN ('X')),
                         'X')
                   || 'X'
                   || DECODE (
                         EXTERNO,
                         1, (SELECT DECODE (COUNT (1), 0, 'X', 'RM')
                               FROM IOTDTC_RECEPCION_MPV
                              WHERE     VNUMREGSTD = NROTRAMITE
                                    AND CFLGEST NOT IN ('X', 'P')),
                         'X')
                   || DECODE (
                         EXTERNO,
                         1, (SELECT DECODE (COUNT (1), 0, 'X', 'RMP')
                               FROM IOTDTC_RECEPCION_MPV X
                              WHERE X.IDDOCUMENTO = ID AND X.CFLGEST IN ('P')),
                         'X'))
             FROM DUAL)
             VIRTUAL,
          "EXTERNO",
          "UNIDADAUTOR",
          (SELECT X.NOMBRE
             FROM UNIDAD X
            WHERE IDUNIDAD = UNIDADREMITENTE)
             DESUNIDADREMITENTE,
          (SELECT X.NOMBRE
             FROM UNIDAD X
            WHERE IDUNIDAD = UNIDADAUTOR)
             DESUNIDADAUTOR,
          (SELECT X.INICIALES
             FROM UNIDAD X
            WHERE IDUNIDAD = UNIDADAUTOR)
             INICIALES,
          (SELECT X.INICIALES
             FROM UNIDAD X
            WHERE IDUNIDAD = UNIDADREMITENTE)
             INICIALESREMITENTE,
          LLAVE,
          FECHACREACIONTRAZA,
          FECHALIMITETRAZA,
          PRIORIDADTRAZA,
          PROVEIDOTRAZA,
          DESPROVEIDOTRAZA,
          '1' PENDIENTE,
          (SELECT (  (SELECT COUNT (1) DESPACHO
                        FROM IOTDTC_DESPACHO
                       WHERE vnumregstd = nrotramite AND cflgest NOT IN ('X'))
                   + (SELECT COUNT (1) DESPACHO
                        FROM IOTDTC_DESPACHO_MPV
                       WHERE vnumregstd = nrotramite AND cflgest NOT IN ('X')))
                     DESPACHO
             FROM DUAL)
             DESPCHO,
          (SELECT COUNT (1)
             FROM IOTDTC_RECEPCION R
            WHERE R.CFLGEST = 'O' AND R.IDDOCUMENTO = ID)
             ESTADORECEPCIONVIRTUAL,
          NROVIRTUAL,
          NROMESAVIRTUAL,
          (SELECT COUNT (1) c1
             FROM Archivo c
            WHERE     c.documento =
                         (SELECT DECODE (W.DOCUMENTOREFERENCIA,
                                         NULL, W.IDDOCUMENTO,
                                         W.DOCUMENTOREFERENCIA)
                            FROM DOCUMENTO W
                           WHERE W.IDDOCUMENTO = ID)
                  AND c.estado = 'A'
                  AND UPPER (
                         SUBSTR (c.rutaAlfresco,
                                 LENGTH (c.rutaAlfresco) - 2,
                                 3)) = 'PDF')
             NROTOTALARCHIVOS,
          (SELECT COUNT (1) c2
             FROM FirmaArchivo a, Archivo aa
            WHERE     aa.documento =
                         (SELECT DECODE (W.DOCUMENTOREFERENCIA,
                                         NULL, W.IDDOCUMENTO,
                                         W.DOCUMENTOREFERENCIA)
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
     FROM (SELECT d.iddocumento AS ID,
                  d.tipodocumento AS tipodocumento,
                  d.despachado AS despachado,
                  ASCIISTR ('images/bolitaVerde.gif') AS tipoalerta,
                  d.asunto AS asunto,
                  d.estado AS chrestado,
                  ex.asunto AS asuntoexpediente,
                  d.prioridad AS prioridad,
                  TO_CHAR (td.nombre || ' - ' || d.nrodocumento) AS documento,
                  (SELECT CONC.razonsocial
                     FROM CLIENTE CONC
                    WHERE     CONC.idcliente = d.idconcesionario
                          AND CONC.IDCLIENTE NOT IN (999998))
                     AS concesionario,
                  TO_CHAR (' ') AS urlarchivo,
                  d.fechalimiteatencion AS fechalimite,
                  (CASE d.estado
                      WHEN 'A' THEN 'Registrado'
                      WHEN 'C' THEN 'Archivado'
                      WHEN 'N' THEN 'Anulado'
                      WHEN 'I' THEN 'Inactivo'
                      WHEN 'T' THEN 'Atendido'
                      WHEN 'P' THEN 'Pendiente'
                      ELSE '-'
                   END)
                     AS estado,
                  '' AS etapa,
                  ex.nroexpediente AS expediente,
                  DECODE (
                     cl.CODTIPOINSTITUCION,
                     3,    cl.nombres
                        || ' '
                        || cl.apellidopaterno
                        || ' '
                        || cl.apellidomaterno,
                     cl.razonsocial)
                     AS cliente,
                  D.ID_CLIENTE idcliente,
                  ex.actividad AS actividad,
                  d.nromesapartes AS numeromesapartes,
                  pro.porcentajealerta1 AS porcentaje_a,
                  pro.porcentajealerta2 AS porcentaje_r,
                  pro.idproceso AS idproceso,
                  d.fechaaccion AS fechaaccion,
                  --DECODE (TD.EXTERNO,  '1', 1,  NULL, 0,  '0', 0) AS despacho,
                  d.propietario AS propietario,
                  d.leido AS leido,
                  (SELECT COUNT (ar.idarchivo)
                     FROM archivo ar
                    WHERE ar.documento = d.iddocumento AND ar.estado = 'A')
                     AS archivos,
                  d.documentoreferencia,
                  (SELECT t.remitente
                     FROM trazabilidaddocumento t
                          INNER JOIN usuario re
                             ON     re.idusuario = t.remitente
                                AND T.ACCION NOT IN (31, 9, 25)
                    WHERE     t.documento = d.iddocumento
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     AS idremitente,
                  (SELECT t.accion
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
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
                  (SELECT t.unidadremitente
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     AS unidadremitente,
                  d.flagmultiple,
                  d.flagatendido,
                  d.id_codigo AS nrotramite,
                  d.ORIGEN,
                  d.FIRMADO,
                  /*(SELECT COUNT (1)
                     FROM IOTDTC_RECEPCION
                    WHERE VNUMREGSTD = d.ID_CODIGO)*/
                  1 VIRTUAL,
                  DECODE (D.ID_EXTERNO,
                          1, '1',
                          DECODE (TD.EXTERNOQR, '1', '2', '0'))
                     externo,
                  D.UNIDADAUTOR,
                  (SELECT    idarchivo
                          || '|'
                          || RUTAALFRESCO
                          || '|'
                          || objectid
                          || DECODE (d.FIRMADO,
                                     'S', '|' || d.iddocumento,
                                     '')
                     FROM archivo a
                    WHERE     a.documento = d.iddocumento
                          AND a.estado = 'A'
                          AND A.PRINCIPAL = 'S'
                          AND (SELECT COUNT (*)
                                 FROM archivo z
                                WHERE     z.documento = d.iddocumento
                                      AND z.estado = 'A'
                                      AND z.principal = 'S') < 2)
                     AS LLAVE,
                  /*(SELECT t.fechacreacion
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))*/
                  NULL FECHACREACIONTRAZA,
                  (SELECT t.fechalimiteatencion
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     FECHALIMITETRAZA,
                  (SELECT t.prioridad
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     PRIORIDADTRAZA,
                  (SELECT t.IDPROVEIDO
                     FROM trazabilidaddocumento t
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25)))
                     PROVEIDOTRAZA,
                  (SELECT DECODE (x.nombre, NULL, '', x.nombre)
                     FROM trazabilidaddocumento t, PROVEIDO x
                    WHERE     t.documento = d.iddocumento
                          AND T.ACCION NOT IN (31, 9, 25)
                          AND t.idtrazabilidaddocumento =
                                 (SELECT MAX (tt.idtrazabilidaddocumento)
                                    FROM trazabilidaddocumento tt
                                   WHERE     tt.documento = d.iddocumento
                                         AND tt.accion NOT IN (31, 9, 25))
                          AND t.idproveido = x.idproveido)
                     DESPROVEIDOTRAZA,
                  d.NROVIRTUAL,
                  d.NROMESAVIRTUAL,
                  NVL (ti.des_tipoinstitucion, ' ') DESTIPINSTITUCION
             FROM documento d
                  LEFT JOIN tipodocumento td
                     ON td.idtipodocumento = d.tipodocumento
                  LEFT JOIN expediente ex ON d.expediente = ex.idexpediente
                  LEFT JOIN proceso pro ON ex.proceso = pro.idproceso
                  LEFT JOIN cliente cl ON cl.idcliente = d.id_cliente -- ex.cliente = cl.idcliente
                  LEFT JOIN TIPOINSTITUCION ti
                     ON ti.cod_tipoinstitucion = cl.codtipoinstitucion
            WHERE ex.estado <> 'T' AND d.documentoreferencia IS NULL
           UNION ALL
           SELECT d.iddocumento AS ID,
                  d.tipodocumento AS tipodocumento,
                  d.despachado AS despachado,
                  ASCIISTR ('images/bolitaVerde.gif') AS tipoalerta,
                  d.asunto AS asunto,
                  d.estado AS chrestado,
                  ex.asunto AS asuntoexpediente,
                  d.prioridad AS prioridad,
                  TO_CHAR (td.nombre || ' - ' || d.nrodocumento) AS documento,
                  (SELECT CONC.razonsocial
                     FROM CLIENTE CONC
                    WHERE     CONC.idcliente = d.idconcesionario
                          AND CONC.IDCLIENTE NOT IN (999998))
                     AS concesionario,
                  TO_CHAR (' ') AS urlarchivo,
                  d.fechalimiteatencion AS fechalimite,
                  (CASE d.estado
                      WHEN 'A' THEN 'Registrado'
                      WHEN 'C' THEN 'Archivado'
                      WHEN 'N' THEN 'Anulado'
                      WHEN 'I' THEN 'Inactivo'
                      WHEN 'T' THEN 'Atendido'
                      WHEN 'P' THEN 'Pendiente'
                      ELSE '-'
                   END)
                     AS estado,
                  '' AS etapa,
                  ex.nroexpediente AS expediente,
                  DECODE (
                     cl.CODTIPOINSTITUCION,
                     3,    cl.nombres
                        || ' '
                        || cl.apellidopaterno
                        || ' '
                        || cl.apellidomaterno,
                     cl.razonsocial)
                     AS cliente,
                  D.ID_CLIENTE idcliente,
                  ex.actividad AS actividad,
                  d.nromesapartes AS numeromesapartes,
                  pro.porcentajealerta1 AS porcentaje_a,
                  pro.porcentajealerta2 AS porcentaje_r,
                  pro.idproceso AS idproceso,
                  d.fechaaccion AS fechaaccion,
                  --DECODE (TD.EXTERNO,  '1', 1,  NULL, 0,  '0', 0) AS despacho,
                  d.propietario AS propietario,
                  d.leido AS leido,
                  (SELECT COUNT (ar.idarchivo)
                     FROM archivo ar
                    WHERE     ar.documento =
                                 (SELECT f.documentoreferencia
                                    FROM documento f
                                   WHERE f.iddocumento = d.iddocumento)
                          AND ar.estado = 'A')
                     AS archivos,
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
                  /*(SELECT COUNT (1)
                     FROM IOTDTC_RECEPCION
                    WHERE VNUMREGSTD = d.ID_CODIGO)*/
                  1 VIRTUAL,
                  DECODE (D.ID_EXTERNO,
                          1, '1',
                          DECODE (TD.EXTERNOQR, '1', '2', '0'))
                     externo,
                  D.UNIDADAUTOR,
                  (SELECT    idarchivo
                          || '|'
                          || RUTAALFRESCO
                          || '|'
                          || objectid
                          || DECODE (d.FIRMADO,
                                     'S', '|' || d.iddocumento,
                                     '')
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
                  /* (SELECT ta.fechacreacion
                      FROM trazabilidadapoyo ta
                     WHERE     ta.documento = d.iddocumento
                           AND Ta.ACCION NOT IN (31, 9, 25)
                           AND ta.fechacreacion =
                                  (SELECT MAX (tt.fechacreacion)
                                     FROM trazabilidadapoyo tt
                                    WHERE     tt.documento = d.iddocumento
                                          AND tt.accion NOT IN (31, 9, 25)))*/
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
                  (SELECT DECODE (x.nombre, NULL, '', x.nombre)
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
                  NVL (ti.des_tipoinstitucion, ' ') DESTIPINSTITUCION
             FROM documento d
                  LEFT JOIN tipodocumento td
                     ON td.idtipodocumento = d.tipodocumento
                  LEFT JOIN expediente ex ON d.expediente = ex.idexpediente
                  LEFT JOIN proceso pro ON ex.proceso = pro.idproceso
                  LEFT JOIN cliente cl ON cl.idcliente = d.id_cliente --ex.cliente = cl.idcliente
                  LEFT JOIN TIPOINSTITUCION ti
                     ON ti.cod_tipoinstitucion = cl.codtipoinstitucion
            WHERE ex.estado <> 'T' AND d.documentoreferencia IS NOT NULL) P;


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.VISTABANDEJA FOR SITRDOSGD.VISTABANDEJA;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.VISTABANDEJA FOR SITRDOSGD.VISTABANDEJA;


GRANT SELECT ON SITRDOSGD.VISTABANDEJA TO CONS_SITRDOSGD;
