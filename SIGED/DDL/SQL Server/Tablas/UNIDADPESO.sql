USE [siged]
GO

/****** Object:  Table [dbo].[unidadpeso]    Script Date: 19/10/2021 22:35:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[unidadpeso](
	[idunidadpeso] [varchar](255) NOT NULL,
	[nombrepeso] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idunidadpeso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


