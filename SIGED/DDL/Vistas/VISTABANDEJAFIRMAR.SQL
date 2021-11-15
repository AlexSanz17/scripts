DROP VIEW SITRDOSGD.VISTABANDEJAFIRMAR;

/* Formatted on 27/10/2021 06:54:51 (QP5 v5.256.13226.35538) */
CREATE OR REPLACE FORCE VIEW SITRDOSGD.VISTABANDEJAFIRMAR
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
   IDUSUARIO,
   UNIDADPROPIETARIO,
   CARGOPROPIETARIO,
   FECHARECEPCION,
   FECHACREACION,
   NROTRAMITE,
   CODESTADO,
   FECHAMODIFICACION
)
   BEQUEATH DEFINER
AS
   SELECT dp.idseguimientofirma AS ID,
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
          dp.idusuario AS idusuario,
          dp.unidadpropietario,
          dp.cargopropietario,
          dp.fechacreacion,
          d.fechacreacion,
          D.ID_CODIGO AS nrotramite,
          DP.ESTADO CODESTADO,
          DP.FECHAMODIFICACION                                             --,
     --PRO.DESCRIPCION AS desproceso
     FROM SEGUIMIENTOXFIRMA dp
          LEFT JOIN documento d ON d.iddocumento = dp.iddocumento
          LEFT JOIN tipodocumento td ON td.idtipodocumento = d.tipodocumento
          LEFT JOIN expediente ex ON d.expediente = ex.idexpediente
          LEFT JOIN cliente cl ON cl.idcliente = d.id_cliente
    WHERE ex.estado <> 'T' AND D.ESTADO NOT IN ('I', 'N');


CREATE OR REPLACE SYNONYM CNXSITRDOSGD.VISTABANDEJAFIRMAR FOR SITRDOSGD.VISTABANDEJAFIRMAR;


CREATE OR REPLACE SYNONYM CONS_SITRDOSGD.VISTABANDEJAFIRMAR FOR SITRDOSGD.VISTABANDEJAFIRMAR;


GRANT SELECT ON SITRDOSGD.VISTABANDEJAFIRMAR TO CONS_SITRDOSGD;
