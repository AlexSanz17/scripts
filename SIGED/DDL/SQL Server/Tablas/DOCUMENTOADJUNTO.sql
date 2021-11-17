USE [siged]
GO

/****** Object:  Table [dbo].[documentoadjunto]    Script Date: 19/10/2021 13:11:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoadjunto](
	[idDocumentoAdjunto] [int] IDENTITY(1,1) NOT NULL,
	[codTipoAdj] [varchar](255) NULL,
	[copOrig] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[idDocumento] [int] NULL,
	[nroAdj] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDocumentoAdjunto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


