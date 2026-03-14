-- Table: Job
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

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

-- Foreign Keys for Job

ALTER TABLE [dbo].[Job] ADD  CONSTRAINT [DF_Job_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
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
