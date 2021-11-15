DROP VIEW SITRDOSGD.REPORTEAPN2;

/* Formatted on 27/10/2021 06:46:12 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.REPORTEAPN2
(
   IDDOCUMENTO,
   NRODOCUMENTO,
   IDPROCESO,
   PROCESO,
   IDGRUPOPROCESO,
   ASUNTO,
   FECHACREACION,
   IDTIPODOCUMENTO,
   TIPODOCUMENTO,
   IDAREAREGISTRO,
   AREAREGISTRO,
   NROEXPEDIENTE,
   CLIENTE,
   PRIORIDAD,
   IDAREADESTINO,
   DESTINATARIO
)
   BEQUEATH DEFINER
AS
   SELECT d.iddocumento,
          d.nrodocumento,
          e.proceso AS idproceso,
          (SELECT p.nombre
             FROM proceso p
            WHERE p.idproceso = e.proceso)
             AS proceso,
          (SELECT p.idgrupoproceso
             FROM proceso p
            WHERE p.idproceso = e.proceso)
             AS idgrupoproceso,
          d.asunto,
          e.fechacreacion,
          d.tipodocumento AS idtipodocumento,
          (SELECT t.nombre
             FROM tipodocumento t
            WHERE t.idtipodocumento = d.tipodocumento)
             AS tipodocumento,
          (SELECT u.idunidad
             FROM usuario u
            WHERE u.idusuario =
                     (SELECT t.remitente
                        FROM trazabilidaddocumento t
                       WHERE     t.nroregistro = 1
                             AND t.documento = d.iddocumento
                             AND ROWNUM <= 1))
             AS idarearegistro,
          (SELECT u.nombre
             FROM unidad u
            WHERE u.idunidad =
                     (SELECT u.idunidad
                        FROM usuario u
                       WHERE u.idusuario =
                                (SELECT t.remitente
                                   FROM trazabilidaddocumento t
                                  WHERE     t.nroregistro = 1
                                        AND t.documento = d.iddocumento
                                        AND ROWNUM <= 1)))
             AS arearegistro,
          e.nroexpediente,
          (SELECT TO_CHAR (
                        cl.RAZONSOCIAL
                     || ' '
                     || cl.NOMBRES
                     || ' '
                     || cl.APELLIDOPATERNO
                     || ' '
                     || cl.APELLIDOMATERNO)
             FROM cliente cl
            WHERE cl.idcliente = e.cliente)
             AS cliente,
          (SELECT p.descripcion
             FROM parametro p
            WHERE p.tipo = 'prioridad' AND p.valor = d.prioridad)
             AS prioridad,
          (SELECT us.idunidad
             FROM usuario us
            WHERE us.idusuario =
                     (SELECT tr.destinatario
                        FROM trazabilidaddocumento tr
                       WHERE tr.idtrazabilidaddocumento =
                                (SELECT MIN (tr1.idtrazabilidaddocumento)
                                   FROM trazabilidaddocumento tr1
                                  WHERE     tr1.documento = d.iddocumento
                                        AND tr1.remitente != tr1.destinatario)))
             AS idareadestino,
          (SELECT TO_CHAR (us.nombres || ' ' || us.apellidos)
             FROM usuario us
            WHERE us.idusuario =
                     (SELECT tr.destinatario
                        FROM trazabilidaddocumento tr
                       WHERE tr.idtrazabilidaddocumento =
                                (SELECT MIN (tr1.idtrazabilidaddocumento)
                                   FROM trazabilidaddocumento tr1
                                  WHERE     tr1.documento = d.iddocumento
                                        AND tr1.remitente != tr1.destinatario)))
             AS destinatario
     FROM documento d JOIN expediente e ON d.expediente = e.idexpediente
    WHERE     d.fechacreacion = (SELECT MIN (d1.fechacreacion)
                                   FROM documento d1
                                  WHERE d1.expediente = d.expediente)
          AND d.documentoreferencia IS NULL;


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.REPORTEAPN2 FOR SITRDOSGD.REPORTEAPN2;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.REPORTEAPN2 FOR SITRDOSGD.REPORTEAPN2;


GRANT SELECT ON SITRDOSGD.REPORTEAPN2 TO CONS_SITRDOSGD;
