USE [siged]
GO

/****** Object:  Table [dbo].[valorcampo]    Script Date: 19/10/2021 22:41:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[valorcampo](
	[idvalorcampo] [int] IDENTITY(1,1) NOT NULL,
	[valor] [varchar](255) NULL,
	[archivopendiente] [int] NOT NULL,
	[campo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idvalorcampo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[valorcampo]  WITH CHECK ADD  CONSTRAINT [FK52C41FCA8F8AD694] FOREIGN KEY([campo])
REFERENCES [dbo].[campo] ([idcampo])
GO

ALTER TABLE [dbo].[valorcampo] CHECK CONSTRAINT [FK52C41FCA8F8AD694]
GO

ALTER TABLE [dbo].[valorcampo]  WITH CHECK ADD  CONSTRAINT [FK52C41FCAC4C3E640] FOREIGN KEY([archivopendiente])
REFERENCES [dbo].[archivopendiente] ([idarchivopendiente])
GO

ALTER TABLE [dbo].[valorcampo] CHECK CONSTRAINT [FK52C41FCAC4C3E640]
GO


