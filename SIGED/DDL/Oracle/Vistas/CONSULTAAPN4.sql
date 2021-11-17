DROP VIEW SITRDOSGD.CONSULTAAPN4;

/* Formatted on 27/10/2021 06:17:17 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.CONSULTAAPN4
(
   IDEXPEDIENTE,
   NROEXPEDIENTE,
   ASUNTOEXPEDIENTE,
   ESTADOEXPEDIENTE,
   IDDOCUMENTO,
   NRODOCUMENTO,
   ASUNTODOCUMENTO,
   IDTIPODOCUMENTO,
   TIPODOCUMENTO,
   FECHACREACION,
   IDPROCESO,
   PROCESO,
   IDCLIENTE,
   CLIENTE,
   IDPRIORIDAD,
   PRIORIDAD,
   IDAREAORIGEN,
   AREAORIGEN,
   IDAREADESTINO,
   AREADESTINO,
   REMITENTE,
   DESTINATARIO,
   DOCUMENTOREFERENCIA
)
   BEQUEATH DEFINER
AS
   SELECT "IDEXPEDIENTE",
          "NROEXPEDIENTE",
          "ASUNTOEXPEDIENTE",
          "ESTADOEXPEDIENTE",
          "IDDOCUMENTO",
          "NRODOCUMENTO",
          "ASUNTODOCUMENTO",
          "IDTIPODOCUMENTO",
          "TIPODOCUMENTO",
          "FECHACREACION",
          "IDPROCESO",
          "PROCESO",
          "IDCLIENTE",
          "CLIENTE",
          "IDPRIORIDAD",
          "PRIORIDAD",
          "IDAREAORIGEN",
          "AREAORIGEN",
          "IDAREADESTINO",
          "AREADESTINO",
          "REMITENTE",
          "DESTINATARIO",
          "DOCUMENTOREFERENCIA"
     FROM (SELECT dctrz.EXPEDIENTE AS IDEXPEDIENTE,
                  (SELECT NROEXPEDIENTE
                     FROM EXPEDIENTE
                    WHERE dctrz.EXPEDIENTE = EXPEDIENTE.IDEXPEDIENTE)
                     AS NROEXPEDIENTE,
                  (SELECT ASUNTO
                     FROM EXPEDIENTE
                    WHERE dctrz.EXPEDIENTE = EXPEDIENTE.IDEXPEDIENTE)
                     AS ASUNTOEXPEDIENTE,
                  (SELECT ESTADO
                     FROM EXPEDIENTE
                    WHERE dctrz.EXPEDIENTE = EXPEDIENTE.IDEXPEDIENTE)
                     AS ESTADOEXPEDIENTE,
                  dctrz.IDDOCUMENTO AS IDDOCUMENTO,
                  (SELECT NRODOCUMENTO
                     FROM DOCUMENTO
                    WHERE dctrz.IDDOCUMENTO = DOCUMENTO.IDDOCUMENTO)
                     AS NRODOCUMENTO,
                  (SELECT ASUNTO
                     FROM DOCUMENTO
                    WHERE dctrz.IDDOCUMENTO = DOCUMENTO.IDDOCUMENTO)
                     AS ASUNTODOCUMENTO,
                  (SELECT IDTIPODOCUMENTO
                     FROM TIPODOCUMENTO
                    WHERE dctrz.TIPODOCUMENTO = TIPODOCUMENTO.IDTIPODOCUMENTO)
                     AS IDTIPODOCUMENTO,
                  (SELECT NOMBRE
                     FROM TIPODOCUMENTO
                    WHERE dctrz.TIPODOCUMENTO = TIPODOCUMENTO.IDTIPODOCUMENTO)
                     AS TIPODOCUMENTO,
                  dctrz.FECHACREACION AS FECHACREACION,
                  (SELECT IDPROCESO
                     FROM PROCESO
                    WHERE PROCESO.IDPROCESO =
                             (SELECT PROCESO
                                FROM EXPEDIENTE
                               WHERE dctrz.EXPEDIENTE =
                                        EXPEDIENTE.IDEXPEDIENTE))
                     AS IDPROCESO,
                  (SELECT NOMBRE
                     FROM PROCESO
                    WHERE PROCESO.IDPROCESO =
                             (SELECT PROCESO
                                FROM EXPEDIENTE
                               WHERE dctrz.EXPEDIENTE =
                                        EXPEDIENTE.IDEXPEDIENTE))
                     AS PROCESO,
                  (SELECT IDCLIENTE
                     FROM CLIENTE
                    WHERE CLIENTE.IDCLIENTE =
                             (SELECT CLIENTE
                                FROM EXPEDIENTE
                               WHERE EXPEDIENTE.IDEXPEDIENTE =
                                        dctrz.EXPEDIENTE))
                     AS IDCLIENTE,
                  (SELECT TO_CHAR (
                                cl.RAZONSOCIAL
                             || ' '
                             || cl.NOMBRES
                             || ' '
                             || cl.APELLIDOPATERNO
                             || ' '
                             || cl.APELLIDOMATERNO)
                             AS CLIENTE
                     FROM CLIENTE cl
                    WHERE cl.IDCLIENTE =
                             (SELECT CLIENTE
                                FROM EXPEDIENTE
                               WHERE EXPEDIENTE.IDEXPEDIENTE =
                                        dctrz.EXPEDIENTE))
                     AS CLIENTE,
                  (SELECT IDPARAMETRO
                     FROM PARAMETRO
                    WHERE     PARAMETRO.TIPO = 'prioridad'
                          AND PARAMETRO.VALOR =
                                 (SELECT PRIORIDAD
                                    FROM DOCUMENTO
                                   WHERE DOCUMENTO.IDDOCUMENTO =
                                            dctrz.IDDOCUMENTO))
                     AS IDPRIORIDAD,
                  (SELECT DESCRIPCION
                     FROM PARAMETRO
                    WHERE     PARAMETRO.TIPO = 'prioridad'
                          AND PARAMETRO.VALOR =
                                 (SELECT PRIORIDAD
                                    FROM DOCUMENTO
                                   WHERE DOCUMENTO.IDDOCUMENTO =
                                            dctrz.IDDOCUMENTO))
                     AS PRIORIDAD,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = dctrz.REMITENTE))
                     AS IDAREAORIGEN,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = dctrz.REMITENTE))
                     AS AREAORIGEN,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = dctrz.DESTINATARIO))
                     AS IDAREADESTINO,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = dctrz.DESTINATARIO))
                     AS AREADESTINO,
                  dctrz.REMITENTE AS REMITENTE,
                  (SELECT TO_CHAR (us.NOMBRES || ' ' || us.APELLIDOS)
                             AS DESTINATARIO
                     FROM USUARIO us
                    WHERE us.IDUSUARIO = dctrz.DESTINATARIO)
                     AS DESTINATARIO,
                  dctrz.DOCUMENTOREFERENCIA AS DOCUMENTOREFERENCIA
             FROM (SELECT trz.REMITENTE,
                          trz.DESTINATARIO,
                          dc.EXPEDIENTE,
                          dc.IDDOCUMENTO,
                          trz.FECHACREACION,
                          dc.TIPODOCUMENTO,
                          dc.DOCUMENTOREFERENCIA
                     FROM TRAZABILIDADAPOYO trz
                          INNER JOIN DOCUMENTO dc
                             ON dc.IDDOCUMENTO = trz.DOCUMENTO
                    WHERE dc.DOCUMENTOREFERENCIA IS NOT NULL) dctrz);


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.CONSULTAAPN4 FOR SITRDOSGD.CONSULTAAPN4;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.CONSULTAAPN4 FOR SITRDOSGD.CONSULTAAPN4;


GRANT SELECT ON SITRDOSGD.CONSULTAAPN4 TO CONS_SITRDOSGD;
