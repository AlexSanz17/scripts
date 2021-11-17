USE [siged]
GO

/****** Object:  Table [dbo].[documentoxexpediente]    Script Date: 19/10/2021 13:22:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentoxexpediente](
	[iddocumento] [int] NOT NULL,
	[idexpediente] [int] NOT NULL,
	[estado] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC,
	[idexpediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[documentoxexpediente]  WITH CHECK ADD  CONSTRAINT [FK2DBA020B50DE4D71] FOREIGN KEY([idexpediente])
REFERENCES [dbo].[expediente] ([idexpediente])
GO

ALTER TABLE [dbo].[documentoxexpediente] CHECK CONSTRAINT [FK2DBA020B50DE4D71]
GO

ALTER TABLE [dbo].[documentoxexpediente]  WITH CHECK ADD  CONSTRAINT [FK2DBA020B7D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[documentoxexpediente] CHECK CONSTRAINT [FK2DBA020B7D375525]
GO


