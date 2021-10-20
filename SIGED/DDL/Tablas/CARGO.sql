USE [siged]
GO

/****** Object:  Table [dbo].[cargo]    Script Date: 18/10/2021 23:44:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cargo](
	[idmensajeria] [int] NOT NULL,
	[costoenvio] [varchar](10) NULL,
	[estado] [varchar](50) NULL,
	[fechacargo] [datetime] NULL,
	[fechadevcargo] [datetime] NULL,
	[fechadevdoc] [datetime] NULL,
	[fechaentrega] [datetime] NULL,
	[grupo] [varchar](13) NULL,
	[obs1] [varchar](100) NULL,
	[obs2] [varchar](100) NULL,
	[observaciones] [varchar](255) NULL,
	[primeravisita] [datetime] NULL,
	[recibido] [varchar](100) NULL,
	[segundavisita] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idmensajeria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cargo]  WITH CHECK ADD  CONSTRAINT [FK5A0E7BCB2D5E379] FOREIGN KEY([idmensajeria])
REFERENCES [dbo].[mensajeria] ([idmensajeria])
GO

ALTER TABLE [dbo].[cargo] CHECK CONSTRAINT [FK5A0E7BCB2D5E379]
GO


