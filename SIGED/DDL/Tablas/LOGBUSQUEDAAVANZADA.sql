USE [siged]
GO

/****** Object:  Table [dbo].[LogBusquedaAvanzada]    Script Date: 19/10/2021 19:06:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LogBusquedaAvanzada](
	[idlogbusqueda] [int] IDENTITY(1,1) NOT NULL,
	[consulta] [varchar](255) NULL,
	[fechaoperacion] [datetime] NULL,
	[idusuario] [int] NULL,
	[nombrepc] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[idlogbusqueda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


