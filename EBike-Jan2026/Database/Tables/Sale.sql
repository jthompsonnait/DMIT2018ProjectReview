-- Table: Sale
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

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

-- Foreign Keys for Sale

ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_SaleDate]  DEFAULT (getdate()) FOR [SaleDate]
GO

ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
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
