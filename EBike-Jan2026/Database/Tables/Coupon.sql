-- Table: Coupon
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

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

-- Foreign Keys for Coupon

ALTER TABLE [dbo].[Coupon] ADD  CONSTRAINT [D_Coupon_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO
