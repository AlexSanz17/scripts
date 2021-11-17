USE [siged]
GO

/****** Object:  Table [dbo].[documentoreunion]    Script Date: 19/10/2021 13:19:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoreunion](
	[idDocumentoReunion] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[idDocumento] [int] NULL,
	[nombres] [varchar](255) NULL,
	[tipo] [varchar](255) NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDocumentoReunion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


