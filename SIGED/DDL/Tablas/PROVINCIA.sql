USE [siged]
GO

/****** Object:  Table [dbo].[provincia]    Script Date: 19/10/2021 19:21:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[provincia](
	[idprovincia] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[departamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idprovincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[provincia]  WITH CHECK ADD  CONSTRAINT [FKDF613BADD27AF690] FOREIGN KEY([departamento])
REFERENCES [dbo].[departamento] ([iddepartamento])
GO

ALTER TABLE [dbo].[provincia] CHECK CONSTRAINT [FKDF613BADD27AF690]
GO


