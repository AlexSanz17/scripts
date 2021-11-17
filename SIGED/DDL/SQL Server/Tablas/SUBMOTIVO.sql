USE [siged]
GO

/****** Object:  Table [dbo].[submotivo]    Script Date: 19/10/2021 19:40:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[submotivo](
	[idsubmotivo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[motivo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idsubmotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[submotivo]  WITH CHECK ADD  CONSTRAINT [FK151CCED08581A5A8] FOREIGN KEY([motivo])
REFERENCES [dbo].[motivo] ([idmotivo])
GO

ALTER TABLE [dbo].[submotivo] CHECK CONSTRAINT [FK151CCED08581A5A8]
GO


