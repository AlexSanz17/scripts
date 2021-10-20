USE [siged]
GO

/****** Object:  Table [dbo].[archivotemporal]    Script Date: 18/10/2021 23:41:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[archivotemporal](
	[idarchivotemporal] [int] IDENTITY(1,1) NOT NULL,
	[ruta] [varchar](255) NOT NULL,
	[idarchivopendiente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idarchivotemporal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[archivotemporal]  WITH CHECK ADD  CONSTRAINT [FKA44DBBEEE6F45D5B] FOREIGN KEY([idarchivopendiente])
REFERENCES [dbo].[archivopendiente] ([idarchivopendiente])
GO

ALTER TABLE [dbo].[archivotemporal] CHECK CONSTRAINT [FKA44DBBEEE6F45D5B]
GO


