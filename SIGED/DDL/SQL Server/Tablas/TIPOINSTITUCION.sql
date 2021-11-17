USE [siged]
GO

/****** Object:  Table [dbo].[tipoinstitucion]    Script Date: 19/10/2021 22:25:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tipoinstitucion](
	[cod_tipoinstitucion] [int] NOT NULL,
	[cod_tipopersonajuridica] [varchar](255) NULL,
	[des_tipoinstitucion] [varchar](255) NULL,
	[fla_activo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tipoinstitucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


