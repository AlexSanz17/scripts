USE [siged]
GO

/****** Object:  Table [dbo].[grid]    Script Date: 19/10/2021 18:54:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[grid](
	[idGrid] [int] NOT NULL,
	[codigo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[nombre] [varchar](255) NULL,
	[rol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idGrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[grid]  WITH CHECK ADD  CONSTRAINT [FK308B463F04DC16] FOREIGN KEY([rol])
REFERENCES [dbo].[rol] ([idrol])
GO

ALTER TABLE [dbo].[grid] CHECK CONSTRAINT [FK308B463F04DC16]
GO


