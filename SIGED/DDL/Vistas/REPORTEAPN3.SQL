DROP VIEW SITRDOSGD.REPORTEAPN3;

/* Formatted on 27/10/2021 06:47:13 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.REPORTEAPN3
(
   IDDOCUMENTO,
   FECHALIMITE,
   IDEXPEDIENTE,
   DOCUMENTO,
   PRIORIDAD,
   FECHACREACION,
   FECHATRANSFERENCIA,
   FECHACREACIONEXTERNA,
   IDAREAORIGEN,
   IDAREAEXTERNA,
   IDAREADESTINO,
   AREAORIGEN,
   AREAEXTERNA,
   AREADESTINO,
   ESTADO
)
   BEQUEATH DEFINER
AS
   SELECT d.iddocumento,
          d.fechalimiteatencion AS fechalimite,
          d.idexpediente AS idexpediente,
          d.documento,
          d.prioridad,
          d.fechacreacion,
          d.fechatransferencia,
          d.fechacreacionexterna,
          idareaorigen,
          idareaexterna,
          idareadestino,
          (SELECT descripcion
             FROM unidad
            WHERE idunidad = idareaorigen)
             AS areaorigen,
          (SELECT descripcion
             FROM unidad
            WHERE idunidad = idareaexterna)
             AS areaexterna,
          (SELECT descripcion
             FROM unidad
            WHERE idunidad = idareadestino)
             AS areadestino,
          DECODE (d.estado,
                  'T', 'Atendido',
                  'C', 'Archivado',
                  'A', 'Activo',
                  'I', 'Inactivo')
             AS estado
     FROM (SELECT d.iddocumento,
                  d.idexpediente AS idexpediente,
                  d.propietario AS propietario,
                  d.orden,
                  d.prioridad,
                  d.documento,
                  d.fechacreacion,
                  d.fechatransferencia,
                  d.fechacreacionexterna,
                  d.estado,
                  (SELECT s.idunidad
                     FROM trazabilidaddocumento t, usuario s
                    WHERE     d.iddocumento = t.documento
                          AND d.fechatransferencia = t.fechacreacion
                          AND s.idusuario =
                                 DECODE (d.fechatransferencia,
                                         NULL, d.propietario,
                                         t.destinatario)
                          AND ROWNUM < 2)
                     AS idareadestino,
                  (SELECT s.idunidad
                     FROM trazabilidaddocumento t, usuario s
                    WHERE     d.iddocumento = t.documento
                          AND d.fechacreacion = t.fechacreacion
                          AND s.idusuario =
                                 DECODE (d.fechacreacion,
                                         NULL, d.propietario,
                                         t.destinatario))
                     AS idareaorigen,
                  (SELECT s.idunidad
                     FROM trazabilidaddocumento t, usuario s
                    WHERE     d.iddocumento = t.documento
                          AND d.fechacreacionexterna = t.fechacreacion
                          AND s.idusuario =
                                 DECODE (d.fechacreacionexterna,
                                         NULL, d.propietario,
                                         t.destinatario))
                     AS idareaexterna,
                  (SELECT t.fechalimiteatencion
                     FROM trazabilidaddocumento t
                    WHERE     d.iddocumento = t.documento
                          AND d.fechacreacionexterna = t.fechacreacion)
                     AS fechalimiteatencion
             FROM (SELECT d.iddocumento,
                          d.idexpediente AS idexpediente,
                          d.propietario AS propietario,
                          d.prioridad,
                          d.documento,
                          d.fechacreacion,
                          d.fechatransferencia,
                          d.orden,
                          d.estado,
                          (SELECT MIN (t.fechacreacion)
                             FROM trazabilidaddocumento t
                            WHERE     t.documento = d.iddocumento
                                  AND t.fechacreacion <> d.fechacreacion)
                             AS fechacreacionexterna
                     FROM (  SELECT d.iddocumento,
                                    d.expediente AS idexpediente,
                                    d.fechacreacion AS orden,
                                    d.propietario AS propietario,
                                    d.prioridad,
                                    d.estado,
                                    TO_CHAR (
                                          (SELECT t.nombre
                                             FROM tipodocumento t
                                            WHERE t.idtipodocumento =
                                                     d.tipodocumento)
                                       || ' '
                                       || d.nrodocumento)
                                       AS documento,
                                    (SELECT MIN (t.fechacreacion)
                                       FROM trazabilidaddocumento t
                                      WHERE t.documento = d.iddocumento)
                                       AS fechacreacion,
                                    (SELECT MAX (t.fechacreacion)
                                       FROM trazabilidaddocumento t
                                      WHERE t.documento = d.iddocumento)
                                       AS fechatransferencia
                               FROM documento d
                              WHERE     d.documentoreferencia IS NULL
                                    AND d.estado != 'N'
                           ORDER BY orden ASC) d) d) d;


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.REPORTEAPN3 FOR SITRDOSGD.REPORTEAPN3;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.REPORTEAPN3 FOR SITRDOSGD.REPORTEAPN3;


GRANT SELECT ON SITRDOSGD.REPORTEAPN3 TO CONS_SITRDOSGD;
