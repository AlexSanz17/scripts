USE [siged]
GO

/****** Object:  Table [dbo].[distrito]    Script Date: 19/10/2021 00:00:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[distrito](
	[iddistrito] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[provincia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[distrito]  WITH CHECK ADD  CONSTRAINT [FK113935984D01A5D2] FOREIGN KEY([provincia])
REFERENCES [dbo].[provincia] ([idprovincia])
GO

ALTER TABLE [dbo].[distrito] CHECK CONSTRAINT [FK113935984D01A5D2]
GO


