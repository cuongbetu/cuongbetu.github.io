create database [ShopBanHoa]
go
USE [ShopBanHoa]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](150) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[Gender] [bit] NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[AccountCategoryID] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccountCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountCategory](
	[AccountCategoryID] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Article]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Keyword] [nvarchar](255) NULL,
	[ImageList] [nvarchar](255) NULL,
	[ViewTime] [int] NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ArticleCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticleCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleCategory](
	[ArticleCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[ViewTime] [int] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ArticleMainCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArticleMainCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleMainCategory](
	[ArticleMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[ViewTime] [int] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thump] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Gender] [bit] NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[ApproveBy] [nvarchar](50) NULL,
	[ClientCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCategory](
	[ClientCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[Adress] [nvarchar](255) NULL,
	[Mobi] [nvarchar](20) NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[Code] [nvarchar](50) NULL,
	[ContactCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactCategory](
	[ContactCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orderer]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderer](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Total] [float] NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[PaymentMethod] [int] NULL,
	[Comment] [nvarchar](4000) NULL,
	[OrderStatus] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[DeliverStatus] [bit] NULL,
	[ChargeStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Keyword] [nvarchar](255) NULL,
	[ImageList] [nvarchar](255) NULL,
	[ViewTime] [int] NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[OldPrice] [float] NULL,
	[Quantity] [int] NULL,
	[ProductCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[ProductMainCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductMainCategory]    Script Date: 15-Apr-20 9:25:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMainCategory](
	[ProductMainCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](4000) NULL,
	[Avatar] [nvarchar](255) NULL,
	[Thumb] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[Position] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductMainCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([UserName], [PassWord], [Avatar], [Thumb], [FullName], [Email], [Mobi], [Address], [Gender], [Status], [CreateTime], [AccountCategoryID]) VALUES (N'nguyencuong', N'1122334455', NULL, NULL, N'Nguyễn Văn Cường', N'cuongbetu@gmail.com', N'0978818714', N'Phú Hòa, Thủ Dầu Một, Bình Dương', 1, 1, NULL, 1)
INSERT [dbo].[Account] ([UserName], [PassWord], [Avatar], [Thumb], [FullName], [Email], [Mobi], [Address], [Gender], [Status], [CreateTime], [AccountCategoryID]) VALUES (N'vietcuong', N'123456', NULL, NULL, N'Trương Viết Cường', N'cuontruong@gmail.com', N'0937959503', N'Lộc Ninh, Bình Phước,', 1, 1, NULL, NULL)

INSERT [dbo].[AccountCategory] ([AccountCategoryID], [Title], [Description], [Avatar], [Thumb], [Status], [Position]) VALUES (1, N'Quản lý', NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (1, NULL, N'Nắng Ban Mai', N'Lan tỏa sự yêu thương như những tia nắng ban mai', N'/Images/product/hinh-san-pham (1).jpg', N'/Images/product/hinh-san-pham (1).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 10, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (2, NULL, N'Khúc Khải Hoàn', N'Lan tỏa sự yêu thương như những tia nắng ban ma', N'/Images/product/hinh-san-pham (2).jpg', N'/Images/product/hinh-san-pham (2).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 500000, 10, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (3, NULL, N'Khởi Đầu Mới', N'Lan tỏa sự yêu thương như những tia nắng ban ma', N'/Images/product/hinh-san-pham (3).jpg', N'/Images/product/hinh-san-pham (3).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 475000, 15, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (4, NULL, N'Vững Bước Niềm Tin', N'Vững bước thành công', N'/Images/product/hinh-san-pham (4).jpg', N'/Images/product/hinh-san-pham (4).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 10, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (5, NULL, N'Khai Trương Hồng Phát', N'Vững bước thành công', N'/Images/product/hinh-san-pham (5).jpg', N'/Images/product/hinh-san-pham (5).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 10, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (6, NULL, N'Tương Lai Rực Rỡ', N'Vững bước thành công', N'/Images/product/hinh-san-pham (6).jpg', N'/Images/product/hinh-san-pham (6).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 475000, 10, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (7, NULL, N'Gắn Kết', N'Vững bước thành công', N'/Images/product/hinh-san-pham (7).jpg', N'/Images/product/hinh-san-pham (7).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 15, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (8, NULL, N'Trường Tồn', N'Mãi mãi cùng tháng năm', N'/Images/product/hinh-san-pham (8).jpg', N'/Images/product/hinh-san-pham (8).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 10, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (9, NULL, N'Khai Trương Tấn Tài', N'Vững bước thành công', N'/Images/product/hinh-san-pham (9).jpg', N'/Images/product/hinh-san-pham (9).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 15, 1)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (10, NULL, N'Thành Công', NULL, N'/Images/product/hinh-san-pham (10).jpg', N'/Images/product/hinh-san-pham (10).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 350000, 400000, 10, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (11, NULL, N'Nhẹ Nhàng', NULL, N'/Images/product/hinh-san-pham (11).jpg', N'/Images/product/hinh-san-pham (11).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 350000, 400000, 10, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (12, NULL, N'Đằm Thắm', NULL, N'/Images/product/hinh-san-pham (12).jpg', N'/Images/product/hinh-san-pham (12).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 12, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (13, NULL, N'Lắng Đọng', NULL, N'/Images/product/hinh-san-pham (13).jpg', N'/Images/product/hinh-san-pham (13).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 12, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (14, NULL, N'Tương Lai', NULL, N'/Images/product/hinh-san-pham (14).jpg', N'/Images/product/hinh-san-pham (14).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 12, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (15, NULL, N'Ánh Sáng', NULL, N'/Images/product/hinh-san-pham (15).jpg', N'/Images/product/hinh-san-pham (15).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 12, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (16, NULL, N'Ánh Nắng 2', NULL, N'/Images/product/hinh-san-pham (16).jpg', N'/Images/product/hinh-san-pham (16).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 12, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (17, NULL, N'Simple Love', NULL, N'/Images/product/hinh-san-pham (17).jpg', N'/Images/product/hinh-san-pham (17).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 12, 2)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (18, NULL, N'Giản Đơn', NULL, N'/Images/product/hinh-san-pham (18).jpg', N'/Images/product/hinh-san-pham (18).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 400000, 12, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (19, NULL, N'Tự Hào', NULL, N'/Images/product/hinh-san-pham (19).jpg', N'/Images/product/hinh-san-pham (19).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 12, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (20, NULL, N'Tương Tư', NULL, N'/Images/product/hinh-san-pham (20).jpg', N'/Images/product/hinh-san-pham (20).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 500000, 550000, 12, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (21, NULL, N'Kỉ Niệm Đẹp', NULL, N'/Images/product/hinh-san-pham (21).jpg', N'/Images/product/hinh-san-pham (21).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 460000, 15, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (22, NULL, N'Ấn Tượng Đầu', NULL, N'/Images/product/hinh-san-pham (22).jpg', N'/Images/product/hinh-san-pham (22).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 460000, 15, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (23, NULL, N'Lôi Cuốn', NULL, N'/Images/product/hinh-san-pham (23).jpg', N'/Images/product/hinh-san-pham (23).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 470000, 12, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (24, NULL, N'Rạng Rỡ', NULL, N'/Images/product/hinh-san-pham (24).jpg', N'/Images/product/hinh-san-pham (24).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 470000, 12, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (25, NULL, N'I Love You', NULL, N'/Images/product/hinh-san-pham (25).jpg', N'/Images/product/hinh-san-pham (25).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 470000, 12, 3)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (26, NULL, N'I Love You 2', NULL, N'/Images/product/hinh-san-pham (26).jpg', N'/Images/product/hinh-san-pham (26).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 470000, 12, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (27, NULL, N'Only You', NULL, N'/Images/product/hinh-san-pham (27).jpg', N'/Images/product/hinh-san-pham (27).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 470000, 13, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (28, NULL, N'Sweet', NULL, N'/Images/product/hinh-san-pham (28).jpg', N'/Images/product/hinh-san-pham (28).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 550000, 14, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (29, NULL, N'Sweet 2', NULL, N'/Images/product/hinh-san-pham (29).jpg', N'/Images/product/hinh-san-pham (29).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 450000, 13, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (30, NULL, N'You Are My Love', NULL, N'/Images/product/hinh-san-pham (30).jpg', N'/Images/product/hinh-san-pham (30).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 550000, 14, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (31, NULL, N'You Are My Life', NULL, N'/Images/product/hinh-san-pham (31).jpg', N'/Images/product/hinh-san-pham (31).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 450000, 15, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (32, NULL, N'Sweet Heart', NULL, N'/Images/product/hinh-san-pham (32).jpg', N'/Images/product/hinh-san-pham (32).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 450000, 12, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (33, NULL, N'Love You', NULL, N'/Images/product/hinh-san-pham (33).jpg', N'/Images/product/hinh-san-pham (33).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 470000, 12, 4)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (34, NULL, N'Cảm Ơn', NULL, N'/Images/product/hinh-san-pham (34).jpg', N'/Images/product/hinh-san-pham (34).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 450000, 12, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (35, NULL, N'Giọt Nắng', NULL, N'/Images/product/hinh-san-pham (35).jpg', N'/Images/product/hinh-san-pham (35).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 375000, 450000, 13, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (36, NULL, N'Ấm Áp', NULL, N'/Images/product/hinh-san-pham (36).jpg', N'/Images/product/hinh-san-pham (36).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 550000, 13, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (37, NULL, N'Cảm Ơn Mẹ', NULL, N'/Images/product/hinh-san-pham (37).jpg', N'/Images/product/hinh-san-pham (37).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 550000, 13, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (38, NULL, N'Chở Che', NULL, N'/Images/product/hinh-san-pham (38).jpg', N'/Images/product/hinh-san-pham (38).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 550000, 13, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (39, NULL, N'Trao Yêu Thương', NULL, N'/Images/product/hinh-san-pham (39).jpg', N'/Images/product/hinh-san-pham (39).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 550000, 15, 5)
INSERT [dbo].[Product] ([ProductID], [Code], [Title], [Description], [Avatar], [Thumb], [Keyword], [ImageList], [ViewTime], [Status], [Position], [CreateTime], [CreateBy], [Price], [OldPrice], [Quantity], [ProductCategoryID]) VALUES (40, NULL, N'Trao Yêu Thương 2', NULL, N'/Images/product/hinh-san-pham (40).jpg', N'/Images/product/hinh-san-pham (40).jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, 450000, 550000, 15, 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ProductCategoryID], [Code], [Title], [Description], [Avatar], [Thumb], [Status], [Position], [CreateTime], [CreateBy], [ProductMainCategoryID]) VALUES (1, NULL, N'Hoa Khai Trương', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [Code], [Title], [Description], [Avatar], [Thumb], [Status], [Position], [CreateTime], [CreateBy], [ProductMainCategoryID]) VALUES (2, NULL, N'Hoa Tựu Trường', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [Code], [Title], [Description], [Avatar], [Thumb], [Status], [Position], [CreateTime], [CreateBy], [ProductMainCategoryID]) VALUES (3, NULL, N'Hoa Sinh Nhật', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [Code], [Title], [Description], [Avatar], [Thumb], [Status], [Position], [CreateTime], [CreateBy], [ProductMainCategoryID]) VALUES (4, NULL, N'Hoa Tình Yêu', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [Code], [Title], [Description], [Avatar], [Thumb], [Status], [Position], [CreateTime], [CreateBy], [ProductMainCategoryID]) VALUES (5, NULL, N'Hoa Của Mẹ', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[ProductMainCategory] ON 

INSERT [dbo].[ProductMainCategory] ([ProductMainCategoryID], [Code], [Title], [Description], [Avatar], [Thumb], [Status], [Position], [CreateTime], [CreateBy]) VALUES (1, NULL, N'Cửa Hàng', NULL, NULL, NULL, 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductMainCategory] OFF
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountCategory] FOREIGN KEY([AccountCategoryID])
REFERENCES [dbo].[AccountCategory] ([AccountCategoryID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountCategory]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Account]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_ArticleCategory] FOREIGN KEY([ArticleCategoryID])
REFERENCES [dbo].[ArticleCategory] ([ArticleCategoryID])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_ArticleCategory]
GO
ALTER TABLE [dbo].[ArticleCategory]  WITH CHECK ADD  CONSTRAINT [FK_ArticleCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[ArticleCategory] CHECK CONSTRAINT [FK_ArticleCategory_Account]
GO
ALTER TABLE [dbo].[ArticleCategory]  WITH CHECK ADD  CONSTRAINT [FK_ArticleCategory_ArticleMainCategory] FOREIGN KEY([ArticleMainCategoryID])
REFERENCES [dbo].[ArticleMainCategory] ([ArticleMainCategoryID])
GO
ALTER TABLE [dbo].[ArticleCategory] CHECK CONSTRAINT [FK_ArticleCategory_ArticleMainCategory]
GO
ALTER TABLE [dbo].[ArticleMainCategory]  WITH CHECK ADD  CONSTRAINT [FK_ArticleMainCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[ArticleMainCategory] CHECK CONSTRAINT [FK_ArticleMainCategory_Account]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_ClientCategory] FOREIGN KEY([ClientCategoryID])
REFERENCES [dbo].[ClientCategory] ([ClientCategoryID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_ClientCategory]
GO
ALTER TABLE [dbo].[ClientCategory]  WITH CHECK ADD  CONSTRAINT [FK_ClientCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[ClientCategory] CHECK CONSTRAINT [FK_ClientCategory_Account]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ContactCategory] FOREIGN KEY([ContactCategoryID])
REFERENCES [dbo].[ContactCategory] ([ContactCategoryID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_ContactCategory]
GO
ALTER TABLE [dbo].[ContactCategory]  WITH CHECK ADD  CONSTRAINT [FK_ContactCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[ContactCategory] CHECK CONSTRAINT [FK_ContactCategory_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orderer] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orderer] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orderer]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Account]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_ProductMainCategory] FOREIGN KEY([ProductMainCategoryID])
REFERENCES [dbo].[ProductMainCategory] ([ProductMainCategoryID])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_ProductMainCategory]
GO
ALTER TABLE [dbo].[ProductMainCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductMainCategory_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[ProductMainCategory] CHECK CONSTRAINT [FK_ProductMainCategory_Account]
GO
