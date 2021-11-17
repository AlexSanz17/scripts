USE [siged]
GO

/****** Object:  Table [dbo].[detalleCliente]    Script Date: 18/10/2021 23:58:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[detalleCliente](
	[idDetalleCliente] [int] IDENTITY(1,1) NOT NULL,
	[apellidoMaterno] [varchar](255) NULL,
	[apellidoPaterno] [varchar](255) NULL,
	[estado] [varchar](255) NULL,
	[fechaCreacion] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[idCargoAdministrado] [int] NULL,
	[idCliente] [int] NULL,
	[nombres] [varchar](255) NULL,
	[usuarioCreacion] [int] NULL,
	[usuarioModificacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[detalleCliente]  WITH CHECK ADD  CONSTRAINT [FK69B05C83D85F5AFF] FOREIGN KEY([idCargoAdministrado])
REFERENCES [dbo].[cargoadministrado] ([idCargoAdministrado])
GO

ALTER TABLE [dbo].[detalleCliente] CHECK CONSTRAINT [FK69B05C83D85F5AFF]
GO


