USE [siged]
GO

/****** Object:  Table [dbo].[envio]    Script Date: 19/10/2021 18:44:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[envio](
	[idmensajeria] [int] NOT NULL,
	[ambitoenvio] [varchar](255) NULL,
	[diasdevcargo] [datetime] NULL,
	[diasdevolucion] [datetime] NULL,
	[diasdistribucion] [datetime] NULL,
	[fechasalida] [datetime] NULL,
	[nombrecourier] [varchar](255) NULL,
	[nombreenvio] [varchar](255) NULL,
	[numerocourier] [varchar](255) NULL,
	[numeroguia] [varchar](255) NULL,
	[pesodcmto] [varchar](10) NULL,
	[unidadpeso] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[idmensajeria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[envio]  WITH CHECK ADD  CONSTRAINT [FK5C30ED3B2D5E379] FOREIGN KEY([idmensajeria])
REFERENCES [dbo].[mensajeria] ([idmensajeria])
GO

ALTER TABLE [dbo].[envio] CHECK CONSTRAINT [FK5C30ED3B2D5E379]
GO


