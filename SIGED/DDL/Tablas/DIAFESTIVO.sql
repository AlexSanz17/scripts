USE [siged]
GO

/****** Object:  Table [dbo].[diafestivo]    Script Date: 18/10/2021 23:59:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[diafestivo](
	[iddiafestivo] [int] IDENTITY(1,1) NOT NULL,
	[anio] [varchar](255) NULL,
	[dia] [varchar](255) NULL,
	[fechanolaborable] [datetime] NOT NULL,
	[mes] [varchar](255) NULL,
	[motivo] [varchar](255) NULL,
	[idregion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddiafestivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[diafestivo]  WITH CHECK ADD  CONSTRAINT [FK5FB3AD862C107E5B] FOREIGN KEY([idregion])
REFERENCES [dbo].[departamento] ([iddepartamento])
GO

ALTER TABLE [dbo].[diafestivo] CHECK CONSTRAINT [FK5FB3AD862C107E5B]
GO


