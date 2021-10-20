USE [siged]
GO

/****** Object:  Table [dbo].[notificacion]    Script Date: 19/10/2021 19:09:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[notificacion](
	[idnotificacion] [int] IDENTITY(1,1) NOT NULL,
	[asunto] [varchar](255) NOT NULL,
	[cargoPropietario] [int] NULL,
	[contenido] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[fechaeliminadocumento] [datetime] NULL,
	[fechanotificacion] [datetime] NOT NULL,
	[leido] [char](1) NULL,
	[nombrepceliminadocumento] [varchar](255) NULL,
	[tiponotificacion] [int] NOT NULL,
	[unidadPropietario] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[iddocumento] [int] NULL,
	[idusuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idnotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[notificacion]  WITH CHECK ADD  CONSTRAINT [FK2372CE9C7D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[notificacion] CHECK CONSTRAINT [FK2372CE9C7D375525]
GO

ALTER TABLE [dbo].[notificacion]  WITH CHECK ADD  CONSTRAINT [FK2372CE9CEAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[notificacion] CHECK CONSTRAINT [FK2372CE9CEAD96159]
GO


