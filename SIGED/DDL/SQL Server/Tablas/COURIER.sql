USE [siged]
GO

/****** Object:  Table [dbo].[courier]    Script Date: 18/10/2021 23:55:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[courier](
	[idcourier] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NULL,
	[nombrecourrier] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcourier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


