USE [siged]
GO

/****** Object:  Table [dbo].[archivo]    Script Date: 18/10/2021 23:40:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[archivo](
	[idarchivo] [int] IDENTITY(1,1) NOT NULL,
	[clave] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[estadodigitalizacion] [char](1) NOT NULL,
	[fechacreacion] [datetime] NOT NULL,
	[fechamodificacion] [datetime] NULL,
	[nombre] [varchar](255) NOT NULL,
	[objectId] [varchar](255) NULL,
	[principal] [char](1) NULL,
	[rutaalfresco] [varchar](255) NULL,
	[rutaarchivopdf] [varchar](255) NULL,
	[tamano] [int] NULL,
	[unidadAutor] [int] NULL,
	[usuariocreacion] [int] NULL,
	[usuariomodificacion] [int] NULL,
	[autor] [int] NOT NULL,
	[documento] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idarchivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[archivo]  WITH CHECK ADD  CONSTRAINT [FKD368E0CC1AB31521] FOREIGN KEY([usuariomodificacion])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[archivo] CHECK CONSTRAINT [FKD368E0CC1AB31521]
GO

ALTER TABLE [dbo].[archivo]  WITH CHECK ADD  CONSTRAINT [FKD368E0CC944B3849] FOREIGN KEY([autor])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[archivo] CHECK CONSTRAINT [FKD368E0CC944B3849]
GO

ALTER TABLE [dbo].[archivo]  WITH CHECK ADD  CONSTRAINT [FKD368E0CCFEB9D3E0] FOREIGN KEY([documento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[archivo] CHECK CONSTRAINT [FKD368E0CCFEB9D3E0]
GO


