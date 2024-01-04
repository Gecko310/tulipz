USE [doan]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/30/2023 3:04:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDon](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MaNV] [bigint] NULL,
	[MaKH] [bigint] NULL,
	[MaCH] [bigint] NULL,
	[TongTien] [decimal](18, 0) NULL,
	[IsOnline] [bit] NULL,
	[MaKM] [bigint] NULL,
	[TienKM] [decimal](18, 0) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_Status]  DEFAULT ((1)) FOR [Status]
GO


