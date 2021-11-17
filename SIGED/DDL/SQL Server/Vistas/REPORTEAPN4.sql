DROP VIEW SITRDOSGD.REPORTEAPN4;

/* Formatted on 27/10/2021 06:48:07 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.REPORTEAPN4
(
   ID,
   IDDOCUMENTO,
   IDTIPODOCUMENTO,
   TIPODOCUMENTO,
   NRODOCUMENTO,
   CLIENTE,
   FECHADOCUMENTO,
   ASUNTO,
   AREA,
   USUARIO,
   FECHATRANSFERIDO,
   NROEXPEDIENTE,
   CODAREA,
   ANNDOCUMENTO
)
   BEQUEATH DEFINER
AS
     SELECT ROWNUM AS ID,
            d.iddocumento,
            d.tipodocumento idtipodocumento,
            p.nombre tipodocumento,
            d.nrodocumento,
            NVL (e.clientenombres, e.clienterazonsocial) cliente,
            TO_CHAR (d.fechadocumento, 'dd/MM/yyyy') fechadocumento,
            d.asunto asunto,
            (SELECT x.nombre
               FROM unidad x
              WHERE i.unidadgrupo = x.idunidad)
               area,
            TRIM (u.nombres || ' ' || u.apellidos) usuario,
            TO_CHAR (d.fechaaccion, 'dd/MM/yyyy') fechatransferido,
            e.nroexpediente nroexpediente,
            (SELECT i.unidadgrupo
               FROM unidad x
              WHERE i.unidadgrupo = x.idunidad)
               codarea,                                  --i.idunidad codarea,
            TO_CHAR (d.fechadocumento, 'yyyy') anndocumento
       FROM documento d,
            tipodocumento p,
            expediente e,
            usuario u,
            proceso s,
            unidad i
      WHERE     d.autor = 3920
            AND d.tipodocumento = p.idtipodocumento
            AND d.expediente = e.idexpediente
            AND d.propietario = u.idusuario
            AND d.estado = 'A'
            AND e.proceso = s.idproceso
            AND u.idunidad = i.idunidad
            AND s.idgrupoproceso NOT IN (57)
   ORDER BY area ASC, d.fechadocumento DESC;


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.REPORTEAPN4 FOR SITRDOSGD.REPORTEAPN4;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.REPORTEAPN4 FOR SITRDOSGD.REPORTEAPN4;


GRANT SELECT ON SITRDOSGD.REPORTEAPN4 TO CONS_SITRDOSGD;
