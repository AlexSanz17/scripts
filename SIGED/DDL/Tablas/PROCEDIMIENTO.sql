USE [siged]
GO

/****** Object:  Table [dbo].[procedimiento]    Script Date: 19/10/2021 19:18:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[procedimiento](
	[idprocedimiento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idprocedimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


