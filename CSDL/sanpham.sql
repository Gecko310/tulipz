USE [doan]
GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 12/30/2023 3:06:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhanLoai] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Status]  DEFAULT ((1)) FOR [Status]
GO

ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO


