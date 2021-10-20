USE [siged]
GO

/****** Object:  Table [dbo].[recurso]    Script Date: 19/10/2021 19:22:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[recurso](
	[idrecurso] [int] IDENTITY(1,1) NOT NULL,
	[actionurl] [varchar](255) NULL,
	[codigo] [varchar](255) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[estado] [char](1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[idmodulo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idrecurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[recurso]  WITH CHECK ADD  CONSTRAINT [FK4089DA49CABDFE4F] FOREIGN KEY([idmodulo])
REFERENCES [dbo].[modulo] ([idmodulo])
GO

ALTER TABLE [dbo].[recurso] CHECK CONSTRAINT [FK4089DA49CABDFE4F]
GO


