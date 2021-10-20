USE [siged]
GO

/****** Object:  Table [dbo].[logoperacion]    Script Date: 19/10/2021 19:07:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[logoperacion](
	[idlogoperacion] [int] IDENTITY(1,1) NOT NULL,
	[fechaoperacion] [datetime] NULL,
	[iddocumento] [int] NULL,
	[idusuario] [int] NULL,
	[nombrefile] [varchar](255) NULL,
	[nombrepc] [varchar](255) NULL,
	[opcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idlogoperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


