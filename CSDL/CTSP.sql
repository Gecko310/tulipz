USE [doan]
GO

/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 12/30/2023 3:03:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChiTietSanPham](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](250) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaCu] [decimal](18, 0) NULL,
	[GiaKhuyenMai] [decimal](18, 0) NULL,
	[Status] [bit] NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[UrlImage] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[MoTaSanPham] [ntext] NULL,
	[ChiTietSanPham1] [ntext] NULL,
	[MaPhanLoai] [bigint] NULL,
	[IDKhuyenMai] [bigint] NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ChiTietSanPham] ADD  CONSTRAINT [DF_ChiTietSanPham_Status]  DEFAULT ((1)) FOR [Status]
GO

ALTER TABLE [dbo].[ChiTietSanPham] ADD  CONSTRAINT [DF_ChiTietSanPham_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[ChiTietSanPham] ADD  CONSTRAINT [DF_ChiTietSanPham_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO


