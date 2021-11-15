CREATE OR REPLACE VIEW SITRDOSGD2.VISTABANDEJALEGAJOS AS
SELECT L.IDLEGAJO AS ID,
          L.NROLEGAJO,
          L.ASUNTO,
          L.IDTIPO,
          T.DESCRIPCION,
          L.FECHACREACION,
          L.USUARIOCREACION,
          DECODE (L.ESTADO,
                  'A', 'En Proceso',
                  'C', 'Cerrado',
                  'I', 'Anulado',
                  '')
             ESTADO,
          L.IDUNIDAD,
          (SELECT X.NOMBRE
             FROM UNIDAD X
            WHERE X.IDUNIDAD = L.IDUNIDAD)
             AS DESUNIDAD,
          IDPROCEDIMIENTO,
          IDMETODO,
          L.ESTADO IDESTADO,
          L.IDCLIENTE,
          L.IDVINCULADO,
          L.NRO,
          L.PERIODO,
          L.CLASE
     FROM LEGAJO L, TIPOLEGAJO T
    WHERE L.IDTIPO = T.IDTIPO AND L.ESTADO NOT IN ('I');
