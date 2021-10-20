USE [siged]
GO

/****** Object:  Table [dbo].[carpetabusqueda]    Script Date: 18/10/2021 23:47:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[carpetabusqueda](
	[idcarpetabusqueda] [int] IDENTITY(1,1) NOT NULL,
	[areadestino] [varchar](255) NULL,
	[areaorigen] [varchar](255) NULL,
	[asuntodocumento] [varchar](255) NULL,
	[asuntoexpediente] [varchar](255) NULL,
	[cliente] [varchar](255) NULL,
	[consecionario] [varchar](255) NULL,
	[direccioncliente] [varchar](255) NULL,
	[documentoidentidad] [varchar](255) NULL,
	[estadoexpediente] [varchar](255) NULL,
	[fechadocumentofinal] [datetime] NULL,
	[fechadocumentoinicio] [datetime] NULL,
	[fechaexpedientefinal] [datetime] NULL,
	[fechaexpedienteinicio] [datetime] NULL,
	[nombrecarpeta] [varchar](255) NULL,
	[nrodocumento] [varchar](255) NULL,
	[nroexpediente] [varchar](255) NULL,
	[nromesapartes] [varchar](255) NULL,
	[pendiente] [varchar](255) NULL,
	[proceso] [varchar](255) NULL,
	[propietario] [varchar](255) NULL,
	[remitente] [varchar](255) NULL,
	[tipodocumento] [varchar](255) NULL,
	[idusuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcarpetabusqueda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[carpetabusqueda]  WITH CHECK ADD  CONSTRAINT [FK427D3B74EAD96159] FOREIGN KEY([idusuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO

ALTER TABLE [dbo].[carpetabusqueda] CHECK CONSTRAINT [FK427D3B74EAD96159]
GO


