DROP VIEW SITRDOSGD.CONSULTAAPN3;

/* Formatted on 27/10/2021 06:16:00 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.CONSULTAAPN3
(
   IDC3,
   IDTRAZABILIDADDOCUMENTO,
   IDTRAZABILIDADAPOYO,
   IDTRAZABILIDADCOPIA,
   FECHACREACIONTD,
   FECHALIMITEATENCIONTD,
   ACCIONTD,
   REMITENTETD,
   IDAREAORIGENTD,
   AREAORIGENTD,
   IDAREADESTINOTD,
   AREADESTINOTD,
   FECHACREACIONTA,
   FECHALIMITEATENCIONTA,
   ACCIONTA,
   REMITENTETA,
   IDAREAORIGENTA,
   AREAORIGENTA,
   IDAREADESTINOTA,
   AREADESTINOTA,
   FECHACREACIONTC,
   ACCIONTC,
   REMITENTETC,
   IDAREAORIGENTC,
   AREAORIGENTC,
   IDAREADESTINOTC,
   AREADESTINOTC,
   IDDOCUMENTO,
   IDEXPEDIENTE,
   NROEXPEDIENTE,
   NRODOCUMENTO,
   IDTIPODOCUMENTO,
   TIPODOCUMENTO,
   ASUNTOEXPEDIENTE,
   ASUNTODOCUMENTO,
   ESTADODOCUMENTO,
   IDPROCESO,
   PROCESO,
   CLIENTE,
   IDPRIORIDAD,
   PRIORIDAD
)
   BEQUEATH DEFINER
AS
   SELECT "IDC3",
          "IDTRAZABILIDADDOCUMENTO",
          "IDTRAZABILIDADAPOYO",
          "IDTRAZABILIDADCOPIA",
          "FECHACREACIONTD",
          "FECHALIMITEATENCIONTD",
          "ACCIONTD",
          "REMITENTETD",
          "IDAREAORIGENTD",
          "AREAORIGENTD",
          "IDAREADESTINOTD",
          "AREADESTINOTD",
          "FECHACREACIONTA",
          "FECHALIMITEATENCIONTA",
          "ACCIONTA",
          "REMITENTETA",
          "IDAREAORIGENTA",
          "AREAORIGENTA",
          "IDAREADESTINOTA",
          "AREADESTINOTA",
          "FECHACREACIONTC",
          "ACCIONTC",
          "REMITENTETC",
          "IDAREAORIGENTC",
          "AREAORIGENTC",
          "IDAREADESTINOTC",
          "AREADESTINOTC",
          "IDDOCUMENTO",
          "IDEXPEDIENTE",
          "NROEXPEDIENTE",
          "NRODOCUMENTO",
          "IDTIPODOCUMENTO",
          "TIPODOCUMENTO",
          "ASUNTOEXPEDIENTE",
          "ASUNTODOCUMENTO",
          "ESTADODOCUMENTO",
          "IDPROCESO",
          "PROCESO",
          "CLIENTE",
          "IDPRIORIDAD",
          "PRIORIDAD"
     FROM (SELECT visrec.IDC3 AS IDC3,
                  visrec.IDTRAZABILIDADDOCUMENTO AS IDTRAZABILIDADDOCUMENTO,
                  visrec.IDTRAZABILIDADAPOYO AS IDTRAZABILIDADAPOYO,
                  visrec.IDTRAZABILIDADCOPIA AS IDTRAZABILIDADCOPIA,
                  visrec.FECHACREACIONTD AS FECHACREACIONTD,
                  visrec.FECHALIMITEATENCIONTD AS FECHALIMITEATENCIONTD,
                  (SELECT DESCRIPCION
                     FROM ACCION
                    WHERE visrec.ACCIONTD = ACCION.IDACCION)
                     AS ACCIONTD,
                  (SELECT TO_CHAR (
                             USUARIO.APELLIDOS || ', ' || USUARIO.NOMBRES)
                             AS REMITETD
                     FROM USUARIO
                    WHERE USUARIO.IDUSUARIO = visrec.REMITENTETD)
                     AS REMITENTETD,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = visrec.REMITENTETD))
                     AS IDAREAORIGENTD,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = visrec.REMITENTETD))
                     AS AREAORIGENTD,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO =
                                        visrec.DESTINATARIOTD))
                     AS IDAREADESTINOTD,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO =
                                        visrec.DESTINATARIOTD))
                     AS AREADESTINOTD,
                  visrec.FECHACREACIONTA AS FECHACREACIONTA,
                  visrec.FECHALIMITEATENCIONTA AS FECHALIMITEATENCIONTA,
                  (SELECT DESCRIPCION
                     FROM ACCION
                    WHERE visrec.ACCIONTA = ACCION.IDACCION)
                     AS ACCIONTA,
                  (SELECT TO_CHAR (
                             USUARIO.APELLIDOS || ', ' || USUARIO.NOMBRES)
                             AS REMITETA
                     FROM USUARIO
                    WHERE USUARIO.IDUSUARIO = visrec.REMITENTETA)
                     AS REMITENTETA,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = visrec.REMITENTETA))
                     AS IDAREAORIGENTA,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = visrec.REMITENTETA))
                     AS AREAORIGENTA,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO =
                                        visrec.DESTINATARIOTA))
                     AS IDAREADESTINOTA,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO =
                                        visrec.DESTINATARIOTA))
                     AS AREADESTINOTA,
                  visrec.FECHACREACIONTC AS FECHACREACIONTC,
                  (SELECT DESCRIPCION
                     FROM ACCION
                    WHERE visrec.ACCIONTC = ACCION.IDACCION)
                     AS ACCIONTC,
                  (SELECT TO_CHAR (
                             USUARIO.APELLIDOS || ', ' || USUARIO.NOMBRES)
                             AS REMITETC
                     FROM USUARIO
                    WHERE USUARIO.IDUSUARIO = visrec.REMITENTETC)
                     AS REMITENTETC,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = visrec.REMITENTETC))
                     AS IDAREAORIGENTC,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO = visrec.REMITENTETC))
                     AS AREAORIGENTC,
                  (SELECT IDUNIDAD
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO =
                                        visrec.DESTINATARIOTC))
                     AS IDAREADESTINOTC,
                  (SELECT NOMBRE
                     FROM UNIDAD
                    WHERE UNIDAD.IDUNIDAD =
                             (SELECT IDUNIDAD
                                FROM USUARIO
                               WHERE USUARIO.IDUSUARIO =
                                        visrec.DESTINATARIOTC))
                     AS AREADESTINOTC,
                  visrec.DOCUMENTO AS IDDOCUMENTO,
                  visrec.EXPEDIENTE AS IDEXPEDIENTE,
                  (SELECT NROEXPEDIENTE
                     FROM EXPEDIENTE
                    WHERE visrec.EXPEDIENTE = EXPEDIENTE.IDEXPEDIENTE)
                     AS NROEXPEDIENTE,
                  visrec.NRODOCUMENTO AS NRODOCUMENTO,
                  visrec.TIPODOCUMENTO AS IDTIPODOCUMENTO,
                  (SELECT NOMBRE
                     FROM TIPODOCUMENTO
                    WHERE visrec.TIPODOCUMENTO =
                             TIPODOCUMENTO.IDTIPODOCUMENTO)
                     AS TIPODOCUMENTO,
                  (SELECT ASUNTO
                     FROM EXPEDIENTE
                    WHERE visrec.EXPEDIENTE = EXPEDIENTE.IDEXPEDIENTE)
                     AS ASUNTOEXPEDIENTE,
                  visrec.ASUNTODOCUMENTO AS ASUNTODOCUMENTO,
                  visrec.ESTADODOCUMENTO AS ESTADODOCUMENTO,
                  (SELECT IDPROCESO
                     FROM PROCESO
                    WHERE PROCESO.IDPROCESO =
                             (SELECT PROCESO
                                FROM EXPEDIENTE
                               WHERE visrec.EXPEDIENTE =
                                        EXPEDIENTE.IDEXPEDIENTE))
                     AS IDPROCESO,
                  (SELECT NOMBRE
                     FROM PROCESO
                    WHERE PROCESO.IDPROCESO =
                             (SELECT PROCESO
                                FROM EXPEDIENTE
                               WHERE visrec.EXPEDIENTE =
                                        EXPEDIENTE.IDEXPEDIENTE))
                     AS PROCESO,
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
                                        visrec.EXPEDIENTE))
                     AS CLIENTE,
                  (SELECT PRIORIDAD
                     FROM DOCUMENTO
                    WHERE DOCUMENTO.IDDOCUMENTO = visrec.DOCUMENTO)
                     AS IDPRIORIDAD,
                  (SELECT DESCRIPCION
                     FROM PARAMETRO
                    WHERE     PARAMETRO.TIPO = 'prioridad'
                          AND PARAMETRO.VALOR =
                                 (SELECT PRIORIDAD
                                    FROM DOCUMENTO
                                   WHERE DOCUMENTO.IDDOCUMENTO =
                                            visrec.DOCUMENTO))
                     AS PRIORIDAD
             FROM (SELECT ROWNUM AS IDC3,
                          dc.TIPODOCUMENTO,
                          dc.EXPEDIENTE,
                          dc.IDDOCUMENTO AS DOCUMENTO,
                          dc.NRODOCUMENTO,
                          dc.ASUNTO AS ASUNTODOCUMENTO,
                          dc.ESTADO AS ESTADODOCUMENTO,
                          dotd.IDTRAZABILIDADDOCUMENTO,
                          dotd.REMITENTE AS REMITENTETD,
                          dotd.DESTINATARIO AS DESTINATARIOTD,
                          dota.IDTRAZABILIDADAPOYO,
                          dota.REMITENTE AS REMITENTETA,
                          dota.DESTINATARIO AS DESTINATARIOTA,
                          dotc.IDTRAZABILIDADCOPIA,
                          dotc.REMITENTE AS REMITENTETC,
                          dotc.DESTINATARIO AS DESTINATARIOTC,
                          dotd.FECHACREACION AS FECHACREACIONTD,
                          dota.FECHACREACION AS FECHACREACIONTA,
                          dotc.FECHACREACION AS FECHACREACIONTC,
                          dotd.FECHALIMITEATENCION AS FECHALIMITEATENCIONTD,
                          dota.FECHALIMITEATENCION AS FECHALIMITEATENCIONTA,
                          dotd.ACCION AS ACCIONTD,
                          dota.ACCION AS ACCIONTA,
                          dotc.ACCION AS ACCIONTC
                     FROM DOCUMENTO dc
                          LEFT JOIN
                          (SELECT td.IDTRAZABILIDADDOCUMENTO,
                                  td.DESTINATARIO,
                                  td.REMITENTE,
                                  td.FECHACREACION,
                                  td.DOCUMENTO,
                                  td.FECHALIMITEATENCION,
                                  td.ACCION
                             FROM TRAZABILIDADDOCUMENTO td
                            WHERE td.DESTINATARIO != td.REMITENTE -- verifica que se ha recepcionado un documento , se obvia que liste docuemento creados en un area
                                                                 ) dotd
                             ON dc.IDDOCUMENTO = dotd.DOCUMENTO
                          LEFT JOIN (SELECT ta.IDTRAZABILIDADAPOYO,
                                            ta.DESTINATARIO,
                                            ta.REMITENTE,
                                            ta.FECHACREACION,
                                            ta.DOCUMENTO,
                                            ta.FECHALIMITEATENCION,
                                            ta.ACCION
                                       FROM TRAZABILIDADAPOYO ta) dota
                             ON dc.IDDOCUMENTO = dota.DOCUMENTO
                          LEFT JOIN (SELECT tc.IDTRAZABILIDADCOPIA,
                                            tc.DESTINATARIO,
                                            tc.REMITENTE,
                                            tc.FECHACREACION,
                                            tc.DOCUMENTO,
                                            tc.ACCION --no tiene fechalimiteatencion
                                       FROM TRAZABILIDADCOPIA tc) dotc
                             ON     dc.IDDOCUMENTO = dotc.DOCUMENTO -- WHERE dotd.DOCUMENTO is NOT NULL
                                AND dc.ESTADO = 'A') visrec);


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.CONSULTAAPN3 FOR SITRDOSGD.CONSULTAAPN3;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.CONSULTAAPN3 FOR SITRDOSGD.CONSULTAAPN3;


GRANT SELECT ON SITRDOSGD.CONSULTAAPN3 TO CONS_SITRDOSGD;
