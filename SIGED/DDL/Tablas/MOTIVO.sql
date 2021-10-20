USE [siged]
GO

/****** Object:  Table [dbo].[motivo]    Script Date: 19/10/2021 19:09:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[motivo](
	[idmotivo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[proceso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idmotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[motivo]  WITH CHECK ADD  CONSTRAINT [FKC052C09071C2A94E] FOREIGN KEY([proceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[motivo] CHECK CONSTRAINT [FKC052C09071C2A94E]
GO


