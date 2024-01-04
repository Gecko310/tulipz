USE [doan]
GO

/****** Object:  Table [dbo].[CuaHang]    Script Date: 12/30/2023 3:03:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CuaHang](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenCuaHang] [nvarchar](250) NULL,
	[SDT] [nvarchar](50) NULL,
	[MaQuanLy] [bigint] NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[UrlImage] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CuaHang] ADD  CONSTRAINT [DF_CuaHang_Status]  DEFAULT ((1)) FOR [Status]
GO

ALTER TABLE [dbo].[CuaHang] ADD  CONSTRAINT [DF_CuaHang_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[CuaHang] ADD  CONSTRAINT [DF_CuaHang_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO


