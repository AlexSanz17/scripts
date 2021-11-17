USE [siged]
GO

/****** Object:  Table [dbo].[sede]    Script Date: 19/10/2021 19:35:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sede](
	[idsede] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[direccion] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[ubigeo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idsede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[sede]  WITH CHECK ADD  CONSTRAINT [FK35CE531CDBA275] FOREIGN KEY([ubigeo])
REFERENCES [dbo].[distrito] ([iddistrito])
GO

ALTER TABLE [dbo].[sede] CHECK CONSTRAINT [FK35CE531CDBA275]
GO


