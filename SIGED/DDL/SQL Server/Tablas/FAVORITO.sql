USE [siged]
GO

/****** Object:  Table [dbo].[favorito]    Script Date: 19/10/2021 18:52:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[favorito](
	[idfavorito] [int] IDENTITY(1,1) NOT NULL,
	[idcontacto] [int] NULL,
	[estado] [char](1) NULL,
	[fechacreacion] [datetime] NULL,
	[idcargocontacto] [int] NULL,
	[idunidadcontacto] [int] NULL,
	[idpropietario] [int] NULL,
	[tipocontacto] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[idfavorito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


