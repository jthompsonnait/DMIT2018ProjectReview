-- Table: JobDetail
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

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

-- Foreign Keys for JobDetail

ALTER TABLE [dbo].[JobDetail] ADD  CONSTRAINT [DF__JobDetail__Statu__68487DD7]  DEFAULT ('I') FOR [StatusCode]
GO

ALTER TABLE [dbo].[JobDetail] ADD  CONSTRAINT [D_JobDetail_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
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
