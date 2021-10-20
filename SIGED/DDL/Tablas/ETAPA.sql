USE [siged]
GO

/****** Object:  Table [dbo].[etapa]    Script Date: 19/10/2021 18:46:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[etapa](
	[idetapa] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NULL,
	[descripcion] [varchar](255) NULL,
	[duracion] [int] NULL,
	[estado] [char](1) NOT NULL,
	[orden] [int] NULL,
	[idproceso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idetapa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[etapa]  WITH CHECK ADD  CONSTRAINT [FK5C57B03D5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[etapa] CHECK CONSTRAINT [FK5C57B03D5C9B7D3]
GO


