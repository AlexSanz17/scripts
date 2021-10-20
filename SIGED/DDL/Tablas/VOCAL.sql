USE [siged]
GO

/****** Object:  Table [dbo].[VOCAL]    Script Date: 19/10/2021 22:49:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VOCAL](
	[idvocal] [int] IDENTITY(1,1) NOT NULL,
	[apellidomaterno] [varchar](255) NULL,
	[apellidopaterno] [varchar](255) NULL,
	[nombres] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idvocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


