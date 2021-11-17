USE [siged]
GO

/****** Object:  Table [dbo].[actividad]    Script Date: 18/10/2021 23:32:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[actividad](
	[idactividad] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[duracion] [int] NULL,
	[estado] [char](1) NOT NULL,
	[fechacreacion] [datetime] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[idproceso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idactividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[actividad]  WITH CHECK ADD  CONSTRAINT [FKC32303DD5C9B7D3] FOREIGN KEY([idproceso])
REFERENCES [dbo].[proceso] ([idproceso])
GO

ALTER TABLE [dbo].[actividad] CHECK CONSTRAINT [FKC32303DD5C9B7D3]
GO


