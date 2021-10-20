USE [siged]
GO

/****** Object:  Table [dbo].[submotivoxdocumentostor]    Script Date: 19/10/2021 19:41:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[submotivoxdocumentostor](
	[iddocumento] [int] NOT NULL,
	[idsubmotivo] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[submotivoxdocumentostor]  WITH CHECK ADD  CONSTRAINT [FKC53C061036F64D5D] FOREIGN KEY([idsubmotivo])
REFERENCES [dbo].[submotivo] ([idsubmotivo])
GO

ALTER TABLE [dbo].[submotivoxdocumentostor] CHECK CONSTRAINT [FKC53C061036F64D5D]
GO

ALTER TABLE [dbo].[submotivoxdocumentostor]  WITH CHECK ADD  CONSTRAINT [FKC53C0610FBA25B49] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documentostor] ([iddocumento])
GO

ALTER TABLE [dbo].[submotivoxdocumentostor] CHECK CONSTRAINT [FKC53C0610FBA25B49]
GO


