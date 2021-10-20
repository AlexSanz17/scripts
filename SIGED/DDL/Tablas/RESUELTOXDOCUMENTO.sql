USE [siged]
GO

/****** Object:  Table [dbo].[resueltoxdocumento]    Script Date: 19/10/2021 19:32:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[resueltoxdocumento](
	[iddocumento] [int] NOT NULL,
	[idresuelto] [int] NOT NULL,
	[TIPOMULTA] [varchar](255) NULL,
	[valor] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC,
	[idresuelto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[resueltoxdocumento]  WITH CHECK ADD  CONSTRAINT [FK43E397333331D211] FOREIGN KEY([idresuelto])
REFERENCES [dbo].[resuelto] ([idresuelto])
GO

ALTER TABLE [dbo].[resueltoxdocumento] CHECK CONSTRAINT [FK43E397333331D211]
GO

ALTER TABLE [dbo].[resueltoxdocumento]  WITH CHECK ADD  CONSTRAINT [FK43E397337D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[resueltoxdocumento] CHECK CONSTRAINT [FK43E397337D375525]
GO


