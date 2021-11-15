DROP VIEW SITRDOSGD.VISTABANDEJAPENDIENTES;

/* Formatted on 27/10/2021 06:56:33 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.VISTABANDEJAPENDIENTES
(
   ID,
   IDDOCUMENTO,
   TIPODOCUMENTO,
   ASUNTO,
   ASUNTOEXPEDIENTE,
   DOCUMENTO,
   FECHALIMITE,
   ESTADO,
   EXPEDIENTE,
   CLIENTE,
   FECHAACCION,
   USUARIO,
   UNIDADPROPIETARIO,
   CARGOPROPIETARIO,
   FECHARECEPCION,
   FECHACREACION,
   NROTRAMITE,
   CODESTADO,
   FECHAMODIFICACION,
   ORIGEN
)
   BEQUEATH DEFINER
AS
   SELECT dp.iddocumentopendiente AS ID,
          d.iddocumento,
          d.tipodocumento AS tipodocumento,
          d.asunto AS asunto,
          ex.asunto AS asuntoexpediente,
          TO_CHAR (td.nombre || ' - ' || d.nrodocumento) AS documento,
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
          ex.nroexpediente AS expediente,
          DECODE (
             CL.CODTIPOINSTITUCION,
             3,    cl.nombres
                || ' '
                || cl.apellidopaterno
                || ' '
                || cl.apellidomaterno,
             cl.razonsocial)
             AS cliente,
          --pro.idproceso AS idproceso,
          d.fechaaccion AS fechaaccion,
          dp.idusuario AS usuario,
          dp.unidadpropietario,
          dp.cargopropietario,
          d.fechacreacion,
          dp.fechacreacion,
          D.ID_CODIGO AS nrotramite,
          DP.ESTADO CODESTADO,
          DP.FECHAMODIFICACION,
          D.ORIGEN                                                         --,
     --PRO.DESCRIPCION AS desproceso
     FROM documentopendiente dp
          LEFT JOIN documento d ON d.iddocumento = dp.iddocumento
          LEFT JOIN tipodocumento td ON td.idtipodocumento = d.tipodocumento
          LEFT JOIN expediente ex ON d.expediente = ex.idexpediente
          --LEFT JOIN proceso pro ON ex.proceso = pro.idproceso
          LEFT JOIN cliente cl ON cl.idcliente = d.id_cliente
    WHERE /*d.principal          = 'S'
          AND
          d.estado                 = 'A'
          AND*/
          D.ESTADO NOT IN ('I', 'N')                 -- AND DP.ESTADO IN ('A')
                                    AND ex.estado <> 'T';


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.VISTABANDEJAPENDIENTES FOR SITRDOSGD.VISTABANDEJAPENDIENTES;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.VISTABANDEJAPENDIENTES FOR SITRDOSGD.VISTABANDEJAPENDIENTES;


GRANT SELECT ON SITRDOSGD.VISTABANDEJAPENDIENTES TO CONS_SITRDOSGD;
