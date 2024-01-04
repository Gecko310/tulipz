USE [doan]
GO

/****** Object:  Table [dbo].[DatHang]    Script Date: 12/30/2023 3:03:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DatHang](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [bigint] NULL,
	[MaKH] [bigint] NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChiNhanHang] [nvarchar](250) NULL,
	[Tinh] [nvarchar](50) NULL,
	[Quan] [nvarchar](50) NULL,
	[Phuong] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](250) NULL,
	[PTTT] [nvarchar](50) NULL,
	[TTDH] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[UrlImage] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_DatHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF_DatHang_Status]  DEFAULT ((1)) FOR [Status]
GO

ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF_DatHang_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [DF_DatHang_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO


