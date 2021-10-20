USE [siged]
GO

/****** Object:  Table [dbo].[legajo]    Script Date: 19/10/2021 19:03:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[legajo](
	[idLegajo] [int] IDENTITY(1,1) NOT NULL,
	[asunto] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[idMetodo] [varchar](255) NULL,
	[idProcedimiento] [varchar](255) NULL,
	[nota1] [varchar](255) NULL,
	[nota2] [varchar](255) NULL,
	[nota3] [varchar](255) NULL,
	[nota4] [varchar](255) NULL,
	[nroLegajo] [varchar](255) NULL,
	[observacion] [varchar](255) NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
	[idTipo] [int] NOT NULL,
	[idUnidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idLegajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[legajo]  WITH CHECK ADD  CONSTRAINT [FKBE0AF4985DAAF843] FOREIGN KEY([idTipo])
REFERENCES [dbo].[tipolegajo] ([idTipo])
GO

ALTER TABLE [dbo].[legajo] CHECK CONSTRAINT [FKBE0AF4985DAAF843]
GO

ALTER TABLE [dbo].[legajo]  WITH CHECK ADD  CONSTRAINT [FKBE0AF498E5F36291] FOREIGN KEY([idUnidad])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[legajo] CHECK CONSTRAINT [FKBE0AF498E5F36291]
GO


