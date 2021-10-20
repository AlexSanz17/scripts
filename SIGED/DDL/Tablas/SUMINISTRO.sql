USE [siged]
GO

/****** Object:  Table [dbo].[suministro]    Script Date: 19/10/2021 19:43:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[suministro](
	[idsuministro] [int] IDENTITY(1,1) NOT NULL,
	[nrosuministro] [varchar](255) NULL,
	[documentostor] [int] NULL,
	[expedientestor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idsuministro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[suministro]  WITH CHECK ADD  CONSTRAINT [FK2F45B597A44A6808] FOREIGN KEY([documentostor])
REFERENCES [dbo].[documentostor] ([iddocumento])
GO

ALTER TABLE [dbo].[suministro] CHECK CONSTRAINT [FK2F45B597A44A6808]
GO

ALTER TABLE [dbo].[suministro]  WITH CHECK ADD  CONSTRAINT [FK2F45B597E1C4F29A] FOREIGN KEY([expedientestor])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[suministro] CHECK CONSTRAINT [FK2F45B597E1C4F29A]
GO


