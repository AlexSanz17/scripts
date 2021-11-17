USE [siged]
GO

/****** Object:  Table [dbo].[vistabandejaenviados]    Script Date: 19/10/2021 22:44:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vistabandejaenviados](
	[id] [int] NOT NULL,
	[accion] [varchar](255) NULL,
	[asunto] [varchar](255) NULL,
	[asuntoexpediente] [varchar](255) NULL,
	[cargoPropietario] [int] NULL,
	[destinatario] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechalimite] [datetime] NULL,
	[fecharecepcion] [datetime] NULL,
	[iddestinatario] [int] NULL,
	[idpropietario] [int] NULL,
	[idtipodocumento] [int] NULL,
	[llave] [varchar](255) NULL,
	[documento] [varchar](255) NULL,
	[expediente] [varchar](255) NULL,
	[nroTramite] [int] NULL,
	[prioridad] [varchar](255) NULL,
	[tipoenvio] [varchar](255) NULL,
	[unidadPropietario] [int] NULL,
	[idcliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[vistabandejaenviados]  WITH CHECK ADD  CONSTRAINT [FK83A14D3D614686F1] FOREIGN KEY([idcliente])
REFERENCES [dbo].[cliente] ([idcliente])
GO

ALTER TABLE [dbo].[vistabandejaenviados] CHECK CONSTRAINT [FK83A14D3D614686F1]
GO


