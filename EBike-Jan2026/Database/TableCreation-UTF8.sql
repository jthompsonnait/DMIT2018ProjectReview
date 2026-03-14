USE [eBike_2026-Clean]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](40) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Category_CategoryID] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupon]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon](
	[CouponID] [int] IDENTITY(1,1) NOT NULL,
	[CouponIDValue] [nvarchar](10) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CouponDiscount] [int] NOT NULL,
	[SalesOrService] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Coupon_CouponID] PRIMARY KEY CLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[Address] [varchar](40) NULL,
	[City] [varchar](20) NULL,
	[Province] [char](2) NULL,
	[PostalCode] [char](6) NULL,
	[ContactPhone] [char](12) NOT NULL,
	[Textable] [bit] NOT NULL,
	[EmailAddress] [varchar](30) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerVehicle]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerVehicle](
	[CustomerVehicleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[VehicleIdentification] [nchar](13) NOT NULL,
	[Make] [nchar](20) NOT NULL,
	[Model] [nchar](30) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_CustomerVehicle_CustomerVehicleID] PRIMARY KEY CLUSTERED 
(
	[CustomerVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatabaseVersion]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseVersion](
	[Major] [int] NOT NULL,
	[Minor] [int] NOT NULL,
	[Build] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_DatabaseVersion_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerVehicleID] [int] NULL,
	[JobDateIn] [datetime] NOT NULL,
	[JobDateStarted] [datetime] NULL,
	[JobDateDone] [datetime] NULL,
	[JobDateOut] [datetime] NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[ShopRate] [decimal](5, 2) NOT NULL,
	[VehicleIdentification] [nchar](13) NOT NULL,
	[CouponID] [int] NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Job_JobID] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobDetail]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDetail](
	[JobDetailID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[JobHours] [decimal](5, 2) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[CouponID] [int] NULL,
	[StatusCode] [char](1) NOT NULL,
	[EmployeeID] [nvarchar](450) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_JobDetail_JobDetailID] PRIMARY KEY CLUSTERED 
(
	[JobDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPart]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPart](
	[JobPartID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellingPrice] [smallmoney] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_JobPart_JobPartID] PRIMARY KEY CLUSTERED 
(
	[JobPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Part]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Part](
	[PartID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](40) NOT NULL,
	[PurchasePrice] [smallmoney] NOT NULL,
	[SellingPrice] [smallmoney] NOT NULL,
	[QuantityOnHand] [int] NOT NULL,
	[ReorderLevel] [int] NOT NULL,
	[QuantityOnOrder] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Refundable] [char](1) NOT NULL,
	[Discontinued] [bit] NOT NULL,
	[VendorID] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Part_PartID] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderNumber] [int] NOT NULL,
	[OrderDate] [datetime] NULL,
	[TaxAmount] [money] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Closed] [bit] NOT NULL,
	[Notes] [nvarchar](100) NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[VendorID] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_PurchaseOrder_PurchaseOrderID] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[PurchaseOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[PurchasePrice] [money] NOT NULL,
	[VendorPartNumber] [nvarchar](50) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_PurchaseOrderDetail_PurchaseOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveOrder]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveOrder](
	[ReceiveOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NOT NULL,
	[ReceiveDate] [datetime] NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_ReceiveOrder_ReceiveOrderID] PRIMARY KEY CLUSTERED 
(
	[ReceiveOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiveOrderDetail]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiveOrderDetail](
	[ReceiveOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveOrderID] [int] NOT NULL,
	[PurchaseOrderDetailID] [int] NOT NULL,
	[QuantityReceived] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_ReceiveOrderDetail_ReceiveOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[ReceiveOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnedOrderDetail]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnedOrderDetail](
	[ReturnedOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveOrderID] [int] NOT NULL,
	[PurchaseOrderDetailID] [int] NULL,
	[ItemDescription] [nvarchar](50) NULL,
	[Quantity] [int] NOT NULL,
	[Reason] [nvarchar](50) NOT NULL,
	[VendorPartNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReturnedOrderDetail_ReturnOrderDetailID] PRIMARY KEY CLUSTERED 
(
	[ReturnedOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[TaxAmount] [money] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[CouponID] [int] NULL,
	[PaymentType] [nchar](1) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Sale_SaleID] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleDetail]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleDetail](
	[SaleDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SaleID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellingPrice] [money] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SaleDetail_SaleDetailID] PRIMARY KEY CLUSTERED 
(
	[SaleDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleRefund]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleRefund](
	[SaleRefundID] [int] IDENTITY(1,1) NOT NULL,
	[SaleRefundDate] [datetime] NOT NULL,
	[SaleID] [int] NOT NULL,
	[EmployeeID] [nvarchar](450) NOT NULL,
	[TaxAmount] [money] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SaleRefund_SaleRefundID] PRIMARY KEY CLUSTERED 
(
	[SaleRefundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleRefundDetail]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleRefundDetail](
	[SaleRefundDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SaleRefundID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SellingPrice] [money] NOT NULL,
	[Reason] [nvarchar](150) NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_SaleRefundDetail_SaleRefundDetailID] PRIMARY KEY CLUSTERED 
(
	[SaleRefundDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StandardJob]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StandardJob](
	[StandardJobID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[StandardHours] [decimal](5, 2) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_StandardJob_StandardJobID] PRIMARY KEY CLUSTERED 
(
	[StandardJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnorderedPurchaseItemCart]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnorderedPurchaseItemCart](
	[UnorderedItemID] [int] IDENTITY(1,1) NOT NULL,
	[ReceiveOrderID] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[VendorPartNumber] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_UnorderedPurchaseItemCart_CartID] PRIMARY KEY CLUSTERED 
(
	[UnorderedItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 2026-03-14 9:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](12) NOT NULL,
	[Address] [nvarchar](30) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[ProvinceID] [char](2) NOT NULL,
	[PostalCode] [nchar](6) NOT NULL,
	[RemoveFromViewFlag] [bit] NOT NULL,
 CONSTRAINT [PK_Vendor_VendorID] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [D_Category_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[Coupon] ADD  CONSTRAINT [D_Coupon_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Textable_0]  DEFAULT ((0)) FOR [Textable]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [D_Customer_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[CustomerVehicle] ADD  CONSTRAINT [D_CustomerVehicle_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[DatabaseVersion] ADD  DEFAULT (getdate()) FOR [DateTime]
GO
ALTER TABLE [dbo].[Job] ADD  CONSTRAINT [DF_Job_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[JobDetail] ADD  CONSTRAINT [DF__JobDetail__Statu__68487DD7]  DEFAULT ('I') FOR [StatusCode]
GO
ALTER TABLE [dbo].[JobDetail] ADD  CONSTRAINT [D_JobDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[JobPart] ADD  CONSTRAINT [D_JobPart_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Parts_Refundable]  DEFAULT ('Y') FOR [Refundable]
GO
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_Closed]  DEFAULT ((0)) FOR [Closed]
GO
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[ReceiveOrder] ADD  CONSTRAINT [DF_ReceiveOrder_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[ReceiveOrderDetail] ADD  CONSTRAINT [DF_ReceiveOrderDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_SaleDate]  DEFAULT (getdate()) FOR [SaleDate]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[SaleDetail] ADD  CONSTRAINT [DF_SaleDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[SaleRefund] ADD  CONSTRAINT [DF_SaleRefund_SaleRefundDate]  DEFAULT (getdate()) FOR [SaleRefundDate]
GO
ALTER TABLE [dbo].[SaleRefund] ADD  CONSTRAINT [DF_SaleRefund_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[SaleRefundDetail] ADD  CONSTRAINT [DF_SaleRefundDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[StandardJob] ADD  CONSTRAINT [DF_StandardJob_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[UnorderedPurchaseItemCart] ADD  CONSTRAINT [D_UnorderedPurchaseItemCart_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF_Vendor_ProvinceID]  DEFAULT ('AB') FOR [ProvinceID]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF_Vendor_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
ALTER TABLE [dbo].[CustomerVehicle]  WITH CHECK ADD  CONSTRAINT [FK_CustomerVehicle_Customer_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerVehicle] CHECK CONSTRAINT [FK_CustomerVehicle_Customer_CustomerID]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Coupon_CouponID] FOREIGN KEY([CouponID])
REFERENCES [dbo].[Coupon] ([CouponID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Coupon_CouponID]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_CustomerVehicle] FOREIGN KEY([CustomerVehicleID])
REFERENCES [dbo].[CustomerVehicle] ([CustomerVehicleID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_CustomerVehicle]
GO
ALTER TABLE [dbo].[JobDetail]  WITH CHECK ADD  CONSTRAINT [FK_JobDetail_Coupon_CouponID] FOREIGN KEY([CouponID])
REFERENCES [dbo].[Coupon] ([CouponID])
GO
ALTER TABLE [dbo].[JobDetail] CHECK CONSTRAINT [FK_JobDetail_Coupon_CouponID]
GO
ALTER TABLE [dbo].[JobDetail]  WITH CHECK ADD  CONSTRAINT [FK_JobDetail_Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobDetail] CHECK CONSTRAINT [FK_JobDetail_Job_JobID]
GO
ALTER TABLE [dbo].[JobPart]  WITH CHECK ADD  CONSTRAINT [FK_JobPart_Jobs_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[JobPart] CHECK CONSTRAINT [FK_JobPart_Jobs_JobID]
GO
ALTER TABLE [dbo].[JobPart]  WITH CHECK ADD  CONSTRAINT [FK_JobPart_Parts_PartID] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
ALTER TABLE [dbo].[JobPart] CHECK CONSTRAINT [FK_JobPart_Parts_PartID]
GO
ALTER TABLE [dbo].[Part]  WITH CHECK ADD  CONSTRAINT [FK_Part_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Part] CHECK CONSTRAINT [FK_Part_Category_CategoryID]
GO
ALTER TABLE [dbo].[Part]  WITH CHECK ADD  CONSTRAINT [FK_Part_Vendor_VendorID] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO
ALTER TABLE [dbo].[Part] CHECK CONSTRAINT [FK_Part_Vendor_VendorID]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Vendor_VendorID] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([VendorID])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Vendor_VendorID]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_Part_PartID] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_Part_PartID]
GO
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder_PurchaseOrderID] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder_PurchaseOrderID]
GO
ALTER TABLE [dbo].[ReceiveOrder]  WITH CHECK ADD  CONSTRAINT [FK_ReceiveOrder_PurchaseOrder_PurchaseOrderID] FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderID])
GO
ALTER TABLE [dbo].[ReceiveOrder] CHECK CONSTRAINT [FK_ReceiveOrder_PurchaseOrder_PurchaseOrderID]
GO
ALTER TABLE [dbo].[ReceiveOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiveOrderDetail_PurchaseOrderDetail_OrderDetailID] FOREIGN KEY([PurchaseOrderDetailID])
REFERENCES [dbo].[PurchaseOrderDetail] ([PurchaseOrderDetailID])
GO
ALTER TABLE [dbo].[ReceiveOrderDetail] CHECK CONSTRAINT [FK_ReceiveOrderDetail_PurchaseOrderDetail_OrderDetailID]
GO
ALTER TABLE [dbo].[ReceiveOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiveOrderDetail_ReceiveOrder_ReceiveOrderID] FOREIGN KEY([ReceiveOrderID])
REFERENCES [dbo].[ReceiveOrder] ([ReceiveOrderID])
GO
ALTER TABLE [dbo].[ReceiveOrderDetail] CHECK CONSTRAINT [FK_ReceiveOrderDetail_ReceiveOrder_ReceiveOrderID]
GO
ALTER TABLE [dbo].[ReturnedOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReturnedOrderDetail_PurchaseOrderDetail_OrderDetailID] FOREIGN KEY([PurchaseOrderDetailID])
REFERENCES [dbo].[PurchaseOrderDetail] ([PurchaseOrderDetailID])
GO
ALTER TABLE [dbo].[ReturnedOrderDetail] CHECK CONSTRAINT [FK_ReturnedOrderDetail_PurchaseOrderDetail_OrderDetailID]
GO
ALTER TABLE [dbo].[ReturnedOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReturnedOrderDetail_ReceiveOrder_ReceiveOrderID] FOREIGN KEY([ReceiveOrderID])
REFERENCES [dbo].[ReceiveOrder] ([ReceiveOrderID])
GO
ALTER TABLE [dbo].[ReturnedOrderDetail] CHECK CONSTRAINT [FK_ReturnedOrderDetail_ReceiveOrder_ReceiveOrderID]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Coupon_CouponID] FOREIGN KEY([CouponID])
REFERENCES [dbo].[Coupon] ([CouponID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Coupon_CouponID]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Customer_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Customer_CustomerID]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Part_PartID] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Part_PartID]
GO
ALTER TABLE [dbo].[SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleDetail_Sale_SaleID] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([SaleID])
GO
ALTER TABLE [dbo].[SaleDetail] CHECK CONSTRAINT [FK_SaleDetail_Sale_SaleID]
GO
ALTER TABLE [dbo].[SaleRefund]  WITH CHECK ADD  CONSTRAINT [CK_SaleRefund_Sale_SaleID] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([SaleID])
GO
ALTER TABLE [dbo].[SaleRefund] CHECK CONSTRAINT [CK_SaleRefund_Sale_SaleID]
GO
ALTER TABLE [dbo].[SaleRefundDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleRefundDetail_Part_PartId] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
ALTER TABLE [dbo].[SaleRefundDetail] CHECK CONSTRAINT [FK_SaleRefundDetail_Part_PartId]
GO
ALTER TABLE [dbo].[SaleRefundDetail]  WITH CHECK ADD  CONSTRAINT [FK_SaleRefundDetail_SaleRefund_SaleRefundID] FOREIGN KEY([SaleRefundID])
REFERENCES [dbo].[SaleRefund] ([SaleRefundID])
GO
ALTER TABLE [dbo].[SaleRefundDetail] CHECK CONSTRAINT [FK_SaleRefundDetail_SaleRefund_SaleRefundID]
GO
ALTER TABLE [dbo].[UnorderedPurchaseItemCart]  WITH CHECK ADD  CONSTRAINT [FK_UnorderedPurchaseItemCart_ReceiveOrder] FOREIGN KEY([ReceiveOrderID])
REFERENCES [dbo].[ReceiveOrder] ([ReceiveOrderID])
GO
ALTER TABLE [dbo].[UnorderedPurchaseItemCart] CHECK CONSTRAINT [FK_UnorderedPurchaseItemCart_ReceiveOrder]
GO
