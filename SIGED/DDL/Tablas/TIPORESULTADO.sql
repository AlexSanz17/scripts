USE [siged]
GO

/****** Object:  Table [dbo].[tiporesultado]    Script Date: 19/10/2021 22:29:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tiporesultado](
	[idtiporesultado] [int] NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[estado] [char](1) NOT NULL,
	[resultado] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtiporesultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


