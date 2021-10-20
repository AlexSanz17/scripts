USE [siged]
GO

/****** Object:  Table [dbo].[archivopendiente]    Script Date: 18/10/2021 23:40:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[archivopendiente](
	[idarchivopendiente] [int] IDENTITY(1,1) NOT NULL,
	[asunto] [varchar](255) NULL,
	[autor] [varchar](255) NULL,
	[cliente] [int] NULL,
	[direccionalternativa] [varchar](255) NULL,
	[enumerardocumento] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[expediente] [int] NULL,
	[fechadocumento] [datetime] NULL,
	[nrodocumento] [varchar](255) NULL,
	[nrofolios] [int] NULL,
	[observacion] [varchar](255) NULL,
	[responsable] [int] NULL,
	[tipodocumento] [int] NULL,
	[tipoidentificacion] [int] NULL,
	[concesionario] [int] NULL,
	[documento] [int] NULL,
	[firmante] [int] NULL,
	[plantilla] [int] NOT NULL,
	[proceso] [int] NULL,
	[usuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idarchivopendiente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[archivopendiente]  WITH CHECK ADD  CONSTRAINT [FKB469D5EC2EC4EFD8] FOREIGN KEY([concesionario])
REFERENCES [dbo].[concesionario] ([idconcesionario])
GO

ALTER TABLE [dbo].[archivopendiente] CHECK CONSTRAINT [FKB469D5EC2EC4EFD8]
GO

ALTER TABLE [dbo].[archivopendiente]  WITH CHECK ADD  CONSTRAINT [FKB469D5EC6D99CA42] FOREIGN KEY([firmante])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[archivopendiente] CHECK CONSTRAINT [FKB469D5EC6D99CA42]
GO

ALTER TABLE [dbo].[archivopendiente]  WITH CHECK ADD  CONSTRAINT [FKB469D5EC71C2A94E] FOREIGN KEY([proceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[archivopendiente] CHECK CONSTRAINT [FKB469D5EC71C2A94E]
GO

ALTER TABLE [dbo].[archivopendiente]  WITH CHECK ADD  CONSTRAINT [FKB469D5EC86D252D4] FOREIGN KEY([usuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[archivopendiente] CHECK CONSTRAINT [FKB469D5EC86D252D4]
GO

ALTER TABLE [dbo].[archivopendiente]  WITH CHECK ADD  CONSTRAINT [FKB469D5EC8B2943FE] FOREIGN KEY([plantilla])
REFERENCES [dbo].[plantilla] ([idplantilla])
GO

ALTER TABLE [dbo].[archivopendiente] CHECK CONSTRAINT [FKB469D5EC8B2943FE]
GO

ALTER TABLE [dbo].[archivopendiente]  WITH CHECK ADD  CONSTRAINT [FKB469D5ECFEB9D3E0] FOREIGN KEY([documento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[archivopendiente] CHECK CONSTRAINT [FKB469D5ECFEB9D3E0]
GO


