USE [siged]
GO

/****** Object:  Table [dbo].[concesionario]    Script Date: 18/10/2021 23:50:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[concesionario](
	[idconcesionario] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](255) NULL,
	[direccion] [varchar](255) NOT NULL,
	[estado] [char](1) NULL,
	[fechainiciooperacion] [datetime] NULL,
	[nroresolucionescontra] [int] NULL,
	[nroresolucionesfavor] [int] NULL,
	[razonsocial] [varchar](255) NOT NULL,
	[representantelegal] [varchar](255) NULL,
	[ruc] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idconcesionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


