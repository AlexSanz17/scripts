USE [siged]
GO

/****** Object:  Table [dbo].[estadocargo]    Script Date: 19/10/2021 18:45:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[estadocargo](
	[idestadocargo] [int] IDENTITY(1,1) NOT NULL,
	[nombreestado] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idestadocargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


