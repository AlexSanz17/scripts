USE [siged]
GO

/****** Object:  Table [dbo].[estado]    Script Date: 19/10/2021 18:45:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[estado](
	[idestado] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[tipo] [varchar](255) NULL,
	[idproceso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[estado]  WITH CHECK ADD  CONSTRAINT [FKB2E43966D5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[estado] CHECK CONSTRAINT [FKB2E43966D5C9B7D3]
GO


