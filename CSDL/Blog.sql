USE [doan]
GO

/****** Object:  Table [dbo].[Blog]    Script Date: 12/30/2023 3:00:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Blog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TieuDe] [ntext] NULL,
	[MoTa] [ntext] NULL,
	[NoiDung] [ntext] NULL,
	[MaND] [bigint] NULL,
	[UrlImage] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Blog] ADD  CONSTRAINT [DF_Blog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[Blog] ADD  CONSTRAINT [DF_Blog_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO

ALTER TABLE [dbo].[Blog] ADD  CONSTRAINT [DF_Blog_Status]  DEFAULT ((1)) FOR [Status]
GO


