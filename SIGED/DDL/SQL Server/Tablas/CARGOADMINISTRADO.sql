USE [siged]
GO

/****** Object:  Table [dbo].[cargoadministrado]    Script Date: 18/10/2021 23:45:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cargoadministrado](
	[idCargoAdministrado] [int] NOT NULL,
	[desCargo] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCargoAdministrado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


