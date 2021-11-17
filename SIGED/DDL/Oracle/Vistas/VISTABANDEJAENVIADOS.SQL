DROP VIEW SITRDOSGD.VISTABANDEJAENVIADOS;

/* Formatted on 27/10/2021 06:53:54 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.VISTABANDEJAENVIADOS
(
   ID,
   IDPROPIETARIO,
   IDDESTINATARIO,
   ASUNTO,
   IDTIPODOCUMENTO,
   IDCLIENTE,
   DOCUMENTO,
   FECHARECEPCION,
   DESTINATARIO,
   EXPEDIENTE,
   ASUNTOEXPEDIENTE,
   TIPOENVIO,
   PRIORIDAD,
   FECHALIMITE,
   ACCION,
   UNIDADPROPIETARIO,
   CARGOPROPIETARIO,
   ESTADO,
   NROTRAMITE,
   LLAVE,
   AUTOR,
   EXTERNO,
   DESTIPINSTITUCION
)
   BEQUEATH DEFINER
AS
   SELECT de.iddocumentoenviado AS id,
          de.idusuario AS idpropietario,
          td.destinatario AS iddestinatario,
          dd.asunto AS Asunto,
          dd.tipodocumento AS idtipodocumento,
          dd.id_cliente AS idcliente,
          (SELECT    (SELECT t.nombre
                        FROM tipodocumento t
                       WHERE t.idtipodocumento = d.tipodocumento)
                  || ' - '
                  || d.nrodocumento
             FROM documento d
            WHERE d.iddocumento = td.documento)
             AS documento,
          de.fechacreacion AS fecharecepcion,
          (SELECT u.apellidos || ', ' || u.nombres
             FROM usuario u
            WHERE u.idusuario = td.destinatario)
             AS destinatario,
          (SELECT e.nroexpediente
             FROM expediente e
            WHERE e.idexpediente = (SELECT d.expediente
                                      FROM documento d
                                     WHERE d.iddocumento = td.documento))
             AS expediente,
          (SELECT e.asunto
             FROM expediente e
            WHERE e.idexpediente = (SELECT d.expediente
                                      FROM documento d
                                     WHERE d.iddocumento = td.documento))
             AS asuntoexpediente,
          'T' AS tipoenvio,
          (SELECT d.prioridad
             FROM documento d
            WHERE d.iddocumento = td.documento)
             AS prioridad,
          td.fechalimiteatencion AS fechalimite,
          (SELECT ac.descripcion
             FROM accion ac
            WHERE ac.idaccion = td.accion)
             AS accion,
          de.unidadpropietario,
          de.cargopropietario,
          (SELECT CASE d.estado
                     WHEN 'A' THEN 'Registrado'
                     WHEN 'C' THEN 'Archivado'
                     WHEN 'N' THEN 'Anulado'
                     WHEN 'I' THEN 'Inactivo'
                     WHEN 'T' THEN 'Atendido'
                     WHEN 'P' THEN 'Pendiente'
                     ELSE '-'
                  END
             FROM documento d
            WHERE d.iddocumento = td.documento)
             estado,
          dd.id_codigo nrotramite,
          (SELECT    idarchivo
                  || '|'
                  || RUTAALFRESCO
                  || '|'
                  || objectid
                  || '|'
                  || (SELECT COUNT (1)
                        FROM archivo r
                       WHERE     r.documento = td.documento
                             AND r.estado = 'A'
                             AND R.PRINCIPAL IN ('C', 'M', 'Z'))
                  || '|'
                  || (SELECT (SELECT COUNT (1)
                                FROM (SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'P' TIPO
                                        FROM IOTDTC_DESPACHO
                                       WHERE VNUMREGSTD = dd.id_codigo
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'M' TIPO
                                        FROM IOTDTC_DESPACHO_MPV
                                       WHERE VNUMREGSTD = dd.id_codigo
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'F' TIPO
                                        FROM IOTDTC_DESPACHO_FI
                                       WHERE VNUMREGSTD = dd.id_codigo) A,
                                     GRUPOENVIODOCUMENTO G
                               WHERE     G.IDGRUPOENVIODOCUMENTO =
                                            (SELECT MAX (
                                                       IDGRUPOENVIODOCUMENTO)
                                               FROM GRUPOENVIODOCUMENTO R,
                                                    PARAMETRO P
                                              WHERE     P.TIPO =
                                                           'FECHA_PUB_UNIFICACION_DESPACHO'
                                                    AND R.NROTRAMITE =
                                                           dd.id_codigo
                                                    AND TO_CHAR (
                                                           R.FECHACREACION,
                                                           'YYYYMMDDHHMI') >=
                                                           P.VALOR)
                                     AND G.ESTADO NOT IN ('X')
                                     AND G.IDGRUPOENVIODOCUMENTO =
                                            A.IDGRUPOENVIODOCUMENTO /*AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_MPV
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_FI
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')*/
                                                                   )
                        FROM DUAL)
                  || '|'
                  || (SELECT (SELECT COUNT (1)
                                FROM (SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'P' TIPO
                                        FROM IOTDTC_DESPACHO
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'M' TIPO
                                        FROM IOTDTC_DESPACHO_MPV
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'F' TIPO
                                        FROM IOTDTC_DESPACHO_FI
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')) A,
                                     GRUPOENVIODOCUMENTO G
                               WHERE     G.IDGRUPOENVIODOCUMENTO =
                                            (SELECT MAX (
                                                       IDGRUPOENVIODOCUMENTO)
                                               FROM GRUPOENVIODOCUMENTO R,
                                                    PARAMETRO P
                                              WHERE     P.TIPO =
                                                           'FECHA_PUB_UNIFICACION_DESPACHO'
                                                    AND R.NROTRAMITE =
                                                           dd.id_codigo
                                                    AND TO_CHAR (
                                                           R.FECHACREACION,
                                                           'YYYYMMDDHHMI') >=
                                                           P.VALOR)
                                     AND G.ESTADO NOT IN ('X')
                                     AND G.IDGRUPOENVIODOCUMENTO =
                                            A.IDGRUPOENVIODOCUMENTO /*AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_MPV
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_FI
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S') */
                                                                   )
                        FROM DUAL)
                  || '|'
                  || dd.iddocumento
             FROM archivo a
            WHERE     a.documento = td.documento
                  AND a.estado = 'A'
                  AND A.PRINCIPAL = 'S'
                  AND ROWNUM < 2                           --(SELECT COUNT (1)
                                --   FROM archivo z
                                --  WHERE     z.documento = td.documento
                                --       AND z.estado = 'A'
                                --       AND z.principal = 'S') < 2
          )
             LLAVE,
          dd.autor AUTOR,
          DECODE (DD.ID_EXTERNO,
                  1, '1',
                  DECODE (DDD.EXTERNOQR, '1', '2', '0'))
             EXTERNO,
          NVL (ti.des_tipoinstitucion, ' ') DESTIPINSTITUCION
     FROM documentoenviado de
          JOIN trazabilidaddocumento td
             ON td.idtrazabilidaddocumento = de.idtrazabilidaddocumento
          JOIN DOCUMENTO DD ON DD.IDDOCUMENTO = Td.DOCUMENTO
          JOIN tipodocumento DDD ON DDD.idtipodocumento = DD.tipodocumento
          LEFT JOIN cliente cl ON cl.idcliente = dd.id_cliente
          LEFT JOIN TIPOINSTITUCION ti
             ON ti.cod_tipoinstitucion = cl.codtipoinstitucion
    WHERE de.tipoenvio = 'T' AND de.estado = 'A'
   UNION ALL
   SELECT de.iddocumentoenviado AS id,
          de.idusuario AS idpropietario,
          ta.destinatario AS iddestinatario,
          dd.asunto AS Asunto,
          dd.tipodocumento AS idtipodocumento,
          dd.id_cliente AS idcliente,
          (SELECT    (SELECT t.nombre
                        FROM tipodocumento t
                       WHERE t.idtipodocumento = d.tipodocumento)
                  || ' - '
                  || d.nrodocumento
             FROM documento d
            WHERE d.iddocumento = ta.documento)
             AS documento,
          de.fechacreacion AS fecharecepcion,
          (SELECT u.apellidos || ', ' || u.nombres
             FROM usuario u
            WHERE u.idusuario = ta.destinatario)
             AS destinatario,
          (SELECT e.nroexpediente
             FROM expediente e
            WHERE e.idexpediente = (SELECT d.expediente
                                      FROM documento d
                                     WHERE d.iddocumento = ta.documento))
             AS expediente,
          (SELECT e.asunto
             FROM expediente e
            WHERE e.idexpediente = (SELECT d.expediente
                                      FROM documento d
                                     WHERE d.iddocumento = ta.documento))
             AS asuntoexpediente,
          'M' AS tipoenvio,
          (SELECT d.prioridad
             FROM documento d
            WHERE d.iddocumento = ta.documento)
             AS prioridad,
          ta.fechalimiteatencion AS fechalimite,
          (SELECT ac.descripcion
             FROM accion ac
            WHERE ac.idaccion = ta.accion)
             AS accion,
          de.unidadpropietario,
          de.cargopropietario,
          (SELECT CASE d.estado
                     WHEN 'A' THEN 'Registrado'
                     WHEN 'C' THEN 'Archivado'
                     WHEN 'N' THEN 'Anulado'
                     WHEN 'I' THEN 'Inactivo'
                     WHEN 'T' THEN 'Atendido'
                     WHEN 'P' THEN 'Pendiente'
                     ELSE '-'
                  END
             FROM documento d
            WHERE d.iddocumento = ta.documento)
             estado,
          dd.id_codigo nrotramite,
          (SELECT    idarchivo
                  || '|'
                  || RUTAALFRESCO
                  || '|'
                  || objectid
                  || '|'
                  || (SELECT COUNT (*)
                        FROM archivo r
                       WHERE     r.documento =
                                    (SELECT DECODE (x.documentoreferencia,
                                                    NULL, x.iddocumento,
                                                    x.documentoreferencia)
                                       FROM documento x
                                      WHERE x.iddocumento = ta.documento)
                             AND r.estado = 'A'
                             AND R.PRINCIPAL IN ('C', 'M', 'Z'))
                  || '|'
                  || (SELECT (SELECT COUNT (1)
                                FROM (SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'P' TIPO
                                        FROM IOTDTC_DESPACHO
                                       WHERE VNUMREGSTD = dd.id_codigo
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'M' TIPO
                                        FROM IOTDTC_DESPACHO_MPV
                                       WHERE VNUMREGSTD = dd.id_codigo
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'F' TIPO
                                        FROM IOTDTC_DESPACHO_FI
                                       WHERE VNUMREGSTD = dd.id_codigo) A,
                                     GRUPOENVIODOCUMENTO G
                               WHERE     G.IDGRUPOENVIODOCUMENTO =
                                            (SELECT MAX (
                                                       IDGRUPOENVIODOCUMENTO)
                                               FROM GRUPOENVIODOCUMENTO R,
                                                    PARAMETRO P
                                              WHERE     P.TIPO =
                                                           'FECHA_PUB_UNIFICACION_DESPACHO'
                                                    AND R.NROTRAMITE =
                                                           dd.id_codigo
                                                    AND TO_CHAR (
                                                           R.FECHACREACION,
                                                           'YYYYMMDDHHMI') >=
                                                           P.VALOR)
                                     AND G.ESTADO NOT IN ('X')
                                     AND G.IDGRUPOENVIODOCUMENTO =
                                            A.IDGRUPOENVIODOCUMENTO /*AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_MPV
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_FI
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')*/
                                                                   )
                        FROM DUAL)
                  || '|'
                  || (SELECT (SELECT COUNT (1)
                                FROM (SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'P' TIPO
                                        FROM IOTDTC_DESPACHO
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'M' TIPO
                                        FROM IOTDTC_DESPACHO_MPV
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'F' TIPO
                                        FROM IOTDTC_DESPACHO_FI
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')) A,
                                     GRUPOENVIODOCUMENTO G
                               WHERE     G.IDGRUPOENVIODOCUMENTO =
                                            (SELECT MAX (
                                                       IDGRUPOENVIODOCUMENTO)
                                               FROM GRUPOENVIODOCUMENTO R,
                                                    PARAMETRO P
                                              WHERE     P.TIPO =
                                                           'FECHA_PUB_UNIFICACION_DESPACHO'
                                                    AND R.NROTRAMITE =
                                                           dd.id_codigo
                                                    AND TO_CHAR (
                                                           R.FECHACREACION,
                                                           'YYYYMMDDHHMI') >=
                                                           P.VALOR)
                                     AND G.ESTADO NOT IN ('X')
                                     AND G.IDGRUPOENVIODOCUMENTO =
                                            A.IDGRUPOENVIODOCUMENTO /*AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_MPV
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_FI
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')*/
                                                                   )
                        FROM DUAL)
                  || '|'
                  || dd.iddocumento
             FROM archivo a
            WHERE     a.documento =
                         (SELECT DECODE (x.documentoreferencia,
                                         NULL, x.iddocumento,
                                         x.documentoreferencia)
                            FROM documento x
                           WHERE x.iddocumento = ta.documento)
                  AND a.estado = 'A'
                  AND A.PRINCIPAL = 'S'
                  AND ROWNUM < 2                           --(SELECT COUNT (1)
                                                           --   FROM archivo z
          --  WHERE     z.documento =
          --             (SELECT DECODE (x.documentoreferencia,
          --                            NULL, x.iddocumento,
          --                           x.documentoreferencia)
          --             FROM documento x
          --            WHERE x.iddocumento = ta.documento)
          --   AND z.estado = 'A'
          --       AND z.principal = 'S') < 2
          )
             LLAVE,
          (SELECT Y.autor
             FROM DOCUMENTO Y
            WHERE Y.IDDOCUMENTO = ta.documento)
             AUTOR,
          DECODE (DD.ID_EXTERNO,
                  1, '1',
                  DECODE (DDD.EXTERNOQR, '1', '2', '0'))
             EXTERNO,
          NVL (ti.des_tipoinstitucion, ' ') DESTIPINSTITUCION
     FROM documentoenviado de
          JOIN trazabilidadapoyo ta
             ON ta.idtrazabilidadapoyo = de.idtrazabilidaddocumento
          JOIN DOCUMENTO DD ON DD.IDDOCUMENTO = TA.DOCUMENTO
          JOIN tipodocumento DDD ON DDD.idtipodocumento = DD.tipodocumento
          LEFT JOIN cliente cl ON cl.idcliente = dd.id_cliente
          LEFT JOIN TIPOINSTITUCION ti
             ON ti.cod_tipoinstitucion = cl.codtipoinstitucion
    WHERE de.tipoenvio = 'M' AND de.estado = 'A'
   UNION ALL
   SELECT de.iddocumentoenviado AS id,
          de.idusuario AS idpropietario,
          nt.idusuario AS iddestinatario,
          dd.asunto AS Asunto,
          dd.tipodocumento AS idtipodocumento,
          dd.id_cliente AS idcliente,
          (SELECT    (SELECT t.nombre
                        FROM tipodocumento t
                       WHERE t.idtipodocumento = d.tipodocumento)
                  || ' - '
                  || d.nrodocumento
             FROM documento d
            WHERE d.iddocumento = nt.iddocumento)
             AS documento,
          de.fechacreacion AS fecharecepcion,
          (SELECT u.apellidos || ', ' || u.nombres
             FROM usuario u
            WHERE u.idusuario = nt.idusuario)
             AS destinatario,
          (SELECT e.nroexpediente
             FROM expediente e
            WHERE e.idexpediente = (SELECT d.expediente
                                      FROM documento d
                                     WHERE d.iddocumento = nt.iddocumento))
             AS expediente,
          (SELECT e.asunto
             FROM expediente e
            WHERE e.idexpediente = (SELECT d.expediente
                                      FROM documento d
                                     WHERE d.iddocumento = nt.iddocumento))
             AS asuntoexpediente,
          'N' AS tipoenvio,
          (SELECT d.prioridad
             FROM documento d
            WHERE d.iddocumento = nt.iddocumento)
             AS prioridad,
          (SELECT d.fechalimiteatencion
             FROM documento d
            WHERE d.iddocumento = nt.iddocumento)
             AS fechalimite,
          'Copiar' AS accion,
          de.unidadpropietario,
          de.cargopropietario,
          (SELECT CASE d.estado
                     WHEN 'A' THEN 'Registrado'
                     WHEN 'C' THEN 'Archivado'
                     WHEN 'N' THEN 'Anulado'
                     WHEN 'I' THEN 'Inactivo'
                     WHEN 'T' THEN 'Atendido'
                     WHEN 'P' THEN 'Pendiente'
                     ELSE '-'
                  END
             FROM documento d
            WHERE d.iddocumento = nt.iddocumento)
             estado,
          dd.id_codigo nrotramite,
          (SELECT    idarchivo
                  || '|'
                  || RUTAALFRESCO
                  || '|'
                  || objectid
                  || '|'
                  || (SELECT COUNT (*)
                        FROM archivo r
                       WHERE     r.documento =
                                    (SELECT DECODE (x.documentoreferencia,
                                                    NULL, x.iddocumento,
                                                    x.documentoreferencia)
                                       FROM documento x
                                      WHERE x.iddocumento = nt.iddocumento)
                             AND r.estado = 'A'
                             AND R.PRINCIPAL IN ('C', 'M', 'Z'))
                  || '|'
                  || (SELECT (SELECT COUNT (1)
                                FROM (SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'P' TIPO
                                        FROM IOTDTC_DESPACHO
                                       WHERE VNUMREGSTD = dd.id_codigo
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'M' TIPO
                                        FROM IOTDTC_DESPACHO_MPV
                                       WHERE VNUMREGSTD = dd.id_codigo
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'F' TIPO
                                        FROM IOTDTC_DESPACHO_FI
                                       WHERE VNUMREGSTD = dd.id_codigo) A,
                                     GRUPOENVIODOCUMENTO G
                               WHERE     G.IDGRUPOENVIODOCUMENTO =
                                            (SELECT MAX (
                                                       IDGRUPOENVIODOCUMENTO)
                                               FROM GRUPOENVIODOCUMENTO R,
                                                    PARAMETRO P
                                              WHERE     P.TIPO =
                                                           'FECHA_PUB_UNIFICACION_DESPACHO'
                                                    AND R.NROTRAMITE =
                                                           dd.id_codigo
                                                    AND TO_CHAR (
                                                           R.FECHACREACION,
                                                           'YYYYMMDDHHMI') >=
                                                           P.VALOR)
                                     AND G.ESTADO NOT IN ('X')
                                     AND G.IDGRUPOENVIODOCUMENTO =
                                            A.IDGRUPOENVIODOCUMENTO /*AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_MPV
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_FI
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')*/
                                                                   )
                        FROM DUAL)
                  || '|'
                  || (SELECT (SELECT COUNT (1)
                                FROM (SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'P' TIPO
                                        FROM IOTDTC_DESPACHO
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'M' TIPO
                                        FROM IOTDTC_DESPACHO_MPV
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')
                                      UNION
                                      SELECT SIDEMIEXT,
                                             IDGRUPOENVIODOCUMENTO,
                                             'F' TIPO
                                        FROM IOTDTC_DESPACHO_FI
                                       WHERE     VNUMREGSTD = dd.id_codigo
                                             AND CFLGEST IN ('R', 'O')) A,
                                     GRUPOENVIODOCUMENTO G
                               WHERE     G.IDGRUPOENVIODOCUMENTO =
                                            (SELECT MAX (
                                                       IDGRUPOENVIODOCUMENTO)
                                               FROM GRUPOENVIODOCUMENTO R,
                                                    PARAMETRO P
                                              WHERE     P.TIPO =
                                                           'FECHA_PUB_UNIFICACION_DESPACHO'
                                                    AND R.NROTRAMITE =
                                                           dd.id_codigo
                                                    AND TO_CHAR (
                                                           R.FECHACREACION,
                                                           'YYYYMMDDHHMI') >=
                                                           P.VALOR)
                                     AND G.ESTADO NOT IN ('X')
                                     AND G.IDGRUPOENVIODOCUMENTO =
                                            A.IDGRUPOENVIODOCUMENTO /*AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_MPV
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM IOTDTC_DESPACHO_FI
                                                                                 WHERE     IDGRUPOENVIODOCUMENTO =
                                                                                              G.IDGRUPOENVIODOCUMENTO
                                                                                       AND VFLGDEV = 'S')*/
                                                                   )
                        FROM DUAL)
                  || '|'
                  || dd.iddocumento
             FROM archivo a
            WHERE     a.documento =
                         (SELECT DECODE (x.documentoreferencia,
                                         NULL, x.iddocumento,
                                         x.documentoreferencia)
                            FROM documento x
                           WHERE x.iddocumento = nt.iddocumento)
                  AND a.estado = 'A'
                  AND A.PRINCIPAL = 'S'
                  AND ROWNUM < 2                          -- (SELECT COUNT (1)
                                                          --    FROM archivo z
          --   WHERE     z.documento =
          --                (SELECT DECODE (x.documentoreferencia,
          --                               NULL, x.iddocumento,
          --                               x.documentoreferencia)
          --                  FROM documento x
          --                 WHERE x.iddocumento = nt.iddocumento)
          --        AND z.estado = 'A'
          --        AND z.principal = 'S') < 2
          )
             LLAVE,
          (SELECT Y.autor
             FROM DOCUMENTO Y
            WHERE Y.IDDOCUMENTO = nt.iddocumento)
             AUTOR,
          DECODE (DD.ID_EXTERNO,
                  1, '1',
                  DECODE (DDD.EXTERNOQR, '1', '2', '0'))
             EXTERNO,
          NVL (ti.des_tipoinstitucion, ' ') DESTIPINSTITUCION
     FROM documentoenviado de
          JOIN notificacion nt
             ON de.idtrazabilidaddocumento = nt.idnotificacion
          JOIN DOCUMENTO DD ON DD.IDDOCUMENTO = NT.IDDOCUMENTO
          JOIN tipodocumento DDD ON DDD.idtipodocumento = DD.tipodocumento
          LEFT JOIN cliente cl ON cl.idcliente = dd.id_cliente
          LEFT JOIN TIPOINSTITUCION ti
             ON ti.cod_tipoinstitucion = cl.codtipoinstitucion
    WHERE de.tipoenvio = 'N' AND de.estado = 'A';


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.VISTABANDEJAENVIADOS FOR SITRDOSGD.VISTABANDEJAENVIADOS;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.VISTABANDEJAENVIADOS FOR SITRDOSGD.VISTABANDEJAENVIADOS;


GRANT SELECT ON SITRDOSGD.VISTABANDEJAENVIADOS TO CONS_SITRDOSGD;
