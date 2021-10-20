USE [siged]
GO

/****** Object:  Table [dbo].[gridxgridcolumna]    Script Date: 19/10/2021 18:57:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[gridxgridcolumna](
	[id] [int] NOT NULL,
	[idgrid] [int] NULL,
	[idgridcolumna] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[gridxgridcolumna]  WITH CHECK ADD  CONSTRAINT [FK7D2C48935A3AC4AF] FOREIGN KEY([idgrid])
REFERENCES [dbo].[grid] ([idGrid])
GO

ALTER TABLE [dbo].[gridxgridcolumna] CHECK CONSTRAINT [FK7D2C48935A3AC4AF]
GO

ALTER TABLE [dbo].[gridxgridcolumna]  WITH CHECK ADD  CONSTRAINT [FK7D2C4893CE3E2FE7] FOREIGN KEY([idgridcolumna])
REFERENCES [dbo].[gridcolumna] ([idgridcolumna])
GO

ALTER TABLE [dbo].[gridxgridcolumna] CHECK CONSTRAINT [FK7D2C4893CE3E2FE7]
GO


