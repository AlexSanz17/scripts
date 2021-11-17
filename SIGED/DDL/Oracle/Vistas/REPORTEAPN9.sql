DROP VIEW SITRDOSGD.REPORTEAPN9;

/* Formatted on 27/10/2021 06:48:59 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.REPORTEAPN9
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
   AREADESTINO,
   IDAREAPROPIETARIO
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
          "AREADESTINO",
          "IDAREAPROPIETARIO"
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
                  fechacreacion,
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
                  /* (SELECT pr.nombre
                      FROM proceso pr
                     WHERE pr.idproceso =
                              (SELECT expediente.proceso
                                 FROM expediente
                                WHERE expediente.idexpediente =
                                                    dcex.expediente)) */
                  ' ' AS proceso,
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
                     AS areadestino,
                  (SELECT us.idunidad
                     FROM usuario us
                    WHERE us.idusuario =
                             (SELECT xx.autor
                                FROM documento xx
                               WHERE xx.iddocumento = dcex.iddocumento))
                     AS idareapropietario
             FROM (SELECT ROWNUM AS idr1,
                          d.iddocumento,
                          d.nrodocumento,
                          d.autor,
                          DECODE (t.nroregistro, 1, '', t.destinatario)
                             destinatario,
                          t.remitente,
                          d.fechacreacion,
                          d.tipodocumento,
                          d.expediente
                     FROM documento d,
                          unidad u,
                          usuario uu,
                          trazabilidaddocumento t
                    WHERE     d.tipodocumento IN (1,
                                                  86,
                                                  2,
                                                  3)
                          AND d.estado NOT IN ('I')
                          AND d.documentoreferencia IS NULL
                          AND d.enumerado = 'S'
                          AND d.autor = uu.idusuario
                          AND uu.idunidad = u.idunidad
                          AND u.idunidad IN (SELECT valor
                                               FROM parametro
                                              WHERE tipo = 'MTC_AREA')
                          AND d.iddocumento = t.documento
                          AND t.nroregistro =
                                 DECODE (
                                    (SELECT COUNT (1)
                                       FROM trazabilidaddocumento t2
                                      WHERE t2.documento = d.iddocumento),
                                    1, 1,
                                    (SELECT MIN (nroregistro)
                                       FROM trazabilidaddocumento t2
                                      WHERE     t2.documento = d.iddocumento
                                            AND t2.remitente !=
                                                   t2.destinatario
                                            AND ROWNUM < 2))) dcex);


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.REPORTEAPN9 FOR SITRDOSGD.REPORTEAPN9;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.REPORTEAPN9 FOR SITRDOSGD.REPORTEAPN9;


GRANT SELECT ON SITRDOSGD.REPORTEAPN9 TO CONS_SITRDOSGD;
