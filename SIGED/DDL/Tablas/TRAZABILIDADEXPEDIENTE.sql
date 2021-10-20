USE [siged]
GO

/****** Object:  Table [dbo].[trazabilidadexpediente]    Script Date: 19/10/2021 22:32:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[trazabilidadexpediente](
	[idtrazabilidadexpediente] [int] IDENTITY(1,1) NOT NULL,
	[estado] [char](1) NULL,
	[fechacreacion] [datetime] NOT NULL,
	[fechacreacionmonth] [int] NULL,
	[fechacreacionyear] [int] NULL,
	[fechalimiteatencion] [datetime] NULL,
	[fecharecibido] [datetime] NULL,
	[fecharecibidomonth] [int] NULL,
	[fecharecibidoyear] [int] NULL,
	[nroregistro] [int] NOT NULL,
	[observacion] [text] NULL,
	[accion] [int] NOT NULL,
	[destinatario] [int] NOT NULL,
	[etapa] [int] NOT NULL,
	[expediente] [int] NOT NULL,
	[idproceso] [int] NOT NULL,
	[remitente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtrazabilidadexpediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[trazabilidadexpediente]  WITH CHECK ADD  CONSTRAINT [FKE7BB6D403CBC0577] FOREIGN KEY([destinatario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[trazabilidadexpediente] CHECK CONSTRAINT [FKE7BB6D403CBC0577]
GO

ALTER TABLE [dbo].[trazabilidadexpediente]  WITH CHECK ADD  CONSTRAINT [FKE7BB6D405B2BAC56] FOREIGN KEY([accion])
REFERENCES [dbo].[accion] ([idaccion])
GO

ALTER TABLE [dbo].[trazabilidadexpediente] CHECK CONSTRAINT [FKE7BB6D405B2BAC56]
GO

ALTER TABLE [dbo].[trazabilidadexpediente]  WITH CHECK ADD  CONSTRAINT [FKE7BB6D408FD4207E] FOREIGN KEY([etapa])
REFERENCES [dbo].[etapa] ([idetapa])
GO

ALTER TABLE [dbo].[trazabilidadexpediente] CHECK CONSTRAINT [FKE7BB6D408FD4207E]
GO

ALTER TABLE [dbo].[trazabilidadexpediente]  WITH CHECK ADD  CONSTRAINT [FKE7BB6D40D0D3D145] FOREIGN KEY([remitente])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[trazabilidadexpediente] CHECK CONSTRAINT [FKE7BB6D40D0D3D145]
GO

ALTER TABLE [dbo].[trazabilidadexpediente]  WITH CHECK ADD  CONSTRAINT [FKE7BB6D40D5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[trazabilidadexpediente] CHECK CONSTRAINT [FKE7BB6D40D5C9B7D3]
GO

ALTER TABLE [dbo].[trazabilidadexpediente]  WITH CHECK ADD  CONSTRAINT [FKE7BB6D40FFABA616] FOREIGN KEY([expediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[trazabilidadexpediente] CHECK CONSTRAINT [FKE7BB6D40FFABA616]
GO


