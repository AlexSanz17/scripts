DROP VIEW SITRDOSGD.REPORTEAPN1;

/* Formatted on 27/10/2021 06:44:37 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.REPORTEAPN1
(
   IDR1,
   IDDOCUMENTO,
   NRODOCUMENTO,
   PROCESO,
   ASUNTODOCUMENTO,
   FECHACREACION,
   FECHADOCUMENTO,
   IDTIPODOCUMENTO,
   TIPODOCUMENTO,
   IDAREAORIGEN,
   AREAORIGEN,
   IDEXPEDIENTE,
   NROEXPEDIENTE,
   CLIENTE,
   IDPRIORIDAD,
   PRIORIDAD,
   DESTINATARIO,
   IDAREADESTINO,
   AREADESTINO
)
   BEQUEATH DEFINER
AS
   SELECT "IDR1",
          "IDDOCUMENTO",
          "NRODOCUMENTO",
          "PROCESO",
          "ASUNTODOCUMENTO",
          "FECHACREACION",
          "FECHADOCUMENTO",
          "IDTIPODOCUMENTO",
          "TIPODOCUMENTO",
          "IDAREAORIGEN",
          "AREAORIGEN",
          "IDEXPEDIENTE",
          "NROEXPEDIENTE",
          "CLIENTE",
          "IDPRIORIDAD",
          "PRIORIDAD",
          "DESTINATARIO",
          "IDAREADESTINO",
          "AREADESTINO"                                --, "IDAREAPROPIETARIO"
     FROM (SELECT dcex.idr1,
                  dcex.iddocumento AS iddocumento,
                  (SELECT nrodocumento
                     FROM documento
                    WHERE dcex.iddocumento = documento.iddocumento)
                     AS nrodocumento,
                  (SELECT asunto
                     FROM documento
                    WHERE dcex.iddocumento = documento.iddocumento)
                     AS asuntodocumento,
                  dcex.fechacreacion AS fechacreacion,
                  (SELECT fechadocumento
                     FROM documento
                    WHERE dcex.iddocumento = documento.iddocumento)
                     AS fechadocumento,
                  dcex.tipodocumento AS idtipodocumento,
                  (SELECT nombre
                     FROM tipodocumento
                    WHERE dcex.tipodocumento = tipodocumento.idtipodocumento)
                     AS tipodocumento,
                  (SELECT idunidad
                     FROM unidad
                    WHERE unidad.idunidad =
                             (SELECT idunidad
                                FROM usuario
                               WHERE usuario.idusuario =
                                        (SELECT tt.remitente
                                           FROM trazabilidaddocumento tt
                                          WHERE     tt.documento =
                                                       dcex.iddocumento
                                                AND tt.nroregistro = 1
                                                AND ROWNUM <= 1)))
                     AS idareaorigen,
                  (SELECT nombre
                     FROM unidad
                    WHERE unidad.idunidad =
                             (SELECT idunidad
                                FROM usuario
                               WHERE usuario.idusuario =
                                        (SELECT tt.remitente
                                           FROM trazabilidaddocumento tt
                                          WHERE     tt.documento =
                                                       dcex.iddocumento
                                                AND tt.nroregistro = 1
                                                AND ROWNUM <= 1)))
                     AS areaorigen,
                  dcex.expediente AS idexpediente,
                  (SELECT nroexpediente
                     FROM expediente
                    WHERE dcex.expediente = expediente.idexpediente)
                     AS nroexpediente,
                  /*  (SELECT TO_CHAR (   cl.razonsocial
                                     || ' '
                                     || cl.nombres
                                     || ' '
                                     || cl.apellidopaterno
                                     || ' '
                                     || cl.apellidomaterno
                                    ) AS cliente
                       FROM cliente cl
                      WHERE cl.idcliente =
                               (SELECT cliente
                                  FROM expediente
                                 WHERE expediente.idexpediente =
                                                     dcex.expediente)) */
                  fnc_cliente_doc (dcex.expediente) AS cliente,
                  (SELECT pr.nombre
                     FROM proceso pr
                    WHERE pr.idproceso =
                             (SELECT expediente.proceso
                                FROM expediente
                               WHERE expediente.idexpediente =
                                        dcex.expediente))
                     AS proceso,
                  (SELECT valor
                     FROM parametro
                    WHERE     parametro.tipo = 'prioridad'
                          AND parametro.valor =
                                 (SELECT prioridad
                                    FROM documento
                                   WHERE documento.iddocumento =
                                            dcex.iddocumento))
                     AS idprioridad,
                  (SELECT descripcion
                     FROM parametro
                    WHERE     parametro.tipo = 'prioridad'
                          AND parametro.valor =
                                 (SELECT prioridad
                                    FROM documento
                                   WHERE documento.iddocumento =
                                            dcex.iddocumento))
                     AS prioridad,
                  (SELECT TO_CHAR (us.nombres || ' ' || us.apellidos)
                             AS destinatario
                     FROM usuario us
                    WHERE us.idusuario = dcex.destinatario)
                     AS destinatario,
                  (SELECT us.idunidad
                     FROM usuario us
                    WHERE us.idusuario =
                             (SELECT tr.destinatario
                                FROM trazabilidaddocumento tr
                               WHERE tr.idtrazabilidaddocumento =
                                        (SELECT MIN (
                                                   tr1.idtrazabilidaddocumento)
                                           FROM trazabilidaddocumento tr1
                                          WHERE     tr1.documento =
                                                       dcex.iddocumento
                                                AND tr1.remitente !=
                                                       tr1.destinatario)))
                     AS idareadestino,
                  (SELECT nombre
                     FROM unidad
                    WHERE unidad.idunidad =
                             (SELECT idunidad
                                FROM usuario
                               WHERE usuario.idusuario =
                                        (SELECT tr.destinatario
                                           FROM trazabilidaddocumento tr
                                          WHERE tr.idtrazabilidaddocumento =
                                                   (SELECT MIN (
                                                              tr1.idtrazabilidaddocumento)
                                                      FROM trazabilidaddocumento tr1
                                                     WHERE     tr1.documento =
                                                                  dcex.iddocumento
                                                           AND tr1.remitente !=
                                                                  tr1.destinatario))))
                     AS areadestino
             --,
             /*(SELECT us.idunidad
               FROM usuario us
              WHERE us.idusuario =
                       (SELECT xx.PROPIETARIO
                          FROM documento xx
                         WHERE xx.iddocumento = dcex.iddocumento))
                                                       AS idareapropietario   */
             FROM (SELECT ROWNUM AS idr1,
                          dcrp.iddocumento,
                          dcrp.remitente,
                          dcrp.expediente,
                          dcrp.fechacreacion,
                          dcrp.tipodocumento,
                          dcrp.destinatario
                     FROM (  SELECT trde.documento AS iddocumento,
                                    trde.remitente,
                                    dc.expediente,
                                    MIN (trde.fechacreacion) AS fechacreacion,
                                    dc.tipodocumento,
                                    trde.destinatario
                               FROM documento dc
                                    INNER JOIN
                                    (SELECT tr.fechacreacion,
                                            tr.documento,
                                            tr.destinatario,
                                            tr.remitente
                                       FROM trazabilidaddocumento tr
                                      WHERE     tr.destinatario != tr.remitente
                                            AND tr.nroregistro =
                                                   (SELECT MIN (
                                                              tr2.nroregistro)
                                                      FROM trazabilidaddocumento tr2
                                                     WHERE     tr.documento =
                                                                  tr2.documento
                                                           AND tr2.remitente !=
                                                                  tr2.destinatario))
                                    trde
                                       ON dc.iddocumento = trde.documento
                              WHERE trde.documento IS NOT NULL
                           GROUP BY trde.documento,
                                    dc.expediente,
                                    dc.tipodocumento,
                                    trde.remitente,
                                    trde.destinatario) dcrp) dcex);


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.REPORTEAPN1 FOR SITRDOSGD.REPORTEAPN1;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.REPORTEAPN1 FOR SITRDOSGD.REPORTEAPN1;


GRANT SELECT ON SITRDOSGD.REPORTEAPN1 TO CONS_SITRDOSGD;
