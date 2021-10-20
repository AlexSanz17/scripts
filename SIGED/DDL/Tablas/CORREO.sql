USE [siged]
GO

/****** Object:  Table [dbo].[correo]    Script Date: 18/10/2021 23:54:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[correo](
	[idCorreo] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[msgText] [varchar](255) NULL,
	[para] [varchar](255) NULL,
	[tema] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCorreo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


