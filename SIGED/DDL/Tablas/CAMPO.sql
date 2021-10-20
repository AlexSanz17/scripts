USE [siged]
GO

/****** Object:  Table [dbo].[campo]    Script Date: 18/10/2021 23:43:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[campo](
	[idcampo] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
	[estado] [char](1) NULL,
	[tipo] [varchar](255) NOT NULL,
	[valordefecto] [varchar](255) NULL,
	[plantilla] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcampo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[campo]  WITH CHECK ADD  CONSTRAINT [FK5A0D60E8B2943FE] FOREIGN KEY([plantilla])
REFERENCES [dbo].[plantilla] ([idplantilla])
GO

ALTER TABLE [dbo].[campo] CHECK CONSTRAINT [FK5A0D60E8B2943FE]
GO


