USE [siged]
GO

/****** Object:  Table [dbo].[documentostor]    Script Date: 19/10/2021 13:20:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[documentostor](
	[iddocumento] [int] NOT NULL,
	[atencion] [varchar](255) NULL,
	[complejidad] [varchar](255) NULL,
	[direccionenvio] [varchar](255) NULL,
	[monto] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[documentostor]  WITH CHECK ADD  CONSTRAINT [FK5F62E0B87D375525] FOREIGN KEY([iddocumento])
REFERENCES [dbo].[documento] ([iddocumento])
GO

ALTER TABLE [dbo].[documentostor] CHECK CONSTRAINT [FK5F62E0B87D375525]
GO


