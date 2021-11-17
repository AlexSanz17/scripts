USE [siged]
GO

/****** Object:  Table [dbo].[usuario]    Script Date: 19/10/2021 22:36:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[apellidos] [varchar](255) NOT NULL,
	[bandejaAgrupada] [char](1) NULL,
	[clave] [varchar](255) NOT NULL,
	[CLAVE_SIGED] [varchar](255) NOT NULL,
	[correo] [varchar](255) NULL,
	[enviocorreo] [char](1) NOT NULL,
	[estado] [varchar](255) NOT NULL,
	[flagdocumentocf] [varchar](255) NOT NULL,
	[flagviewtrazabilidad] [varchar](255) NOT NULL,
	[grupoFedatario] [int] NULL,
	[idRol] [int] NULL,
	[idfuncion] [int] NOT NULL,
	[nombres] [varchar](255) NOT NULL,
	[nroDocumento] [varchar](255) NULL,
	[siglasFedatario] [varchar](255) NULL,
	[tema] [varchar](255) NULL,
	[tipoDocumento] [varchar](255) NULL,
	[usuario] [varchar](255) NOT NULL,
	[usuariofinal] [char](1) NOT NULL,
	[jefe] [int] NULL,
	[idunidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FKF814F32E44F9F51B] FOREIGN KEY([idRol])
REFERENCES [dbo].[rol] ([idrol])
GO

ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FKF814F32E44F9F51B]
GO

ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FKF814F32E8EEF16E0] FOREIGN KEY([jefe])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FKF814F32E8EEF16E0]
GO

ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FKF814F32EE5F36291] FOREIGN KEY([idunidad])
REFERENCES [dbo].[unidad] ([idunidad])
GO

ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FKF814F32EE5F36291]
GO


