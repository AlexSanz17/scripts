USE [siged]
GO

/****** Object:  Table [dbo].[legajodocumento]    Script Date: 19/10/2021 19:04:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[legajodocumento](
	[idLegajoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[fechaModificacion] [datetime] NULL,
	[idDocumento] [int] NULL,
	[idLegajo] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLegajoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


