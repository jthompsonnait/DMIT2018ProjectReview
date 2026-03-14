-- Table: SaleRefund
-- Database: eBike_2026-Clean
-- Extracted from: TableCreation.sql

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

-- Foreign Keys for SaleRefund

ALTER TABLE [dbo].[SaleRefund] ADD  CONSTRAINT [DF_SaleRefund_SaleRefundDate]  DEFAULT (getdate()) FOR [SaleRefundDate]
GO

ALTER TABLE [dbo].[SaleRefund] ADD  CONSTRAINT [DF_SaleRefund_RemoveFromViewFlag]  DEFAULT ((0)) FOR [RemoveFromViewFlag]
GO

ALTER TABLE [dbo].[SaleRefund]  WITH CHECK ADD  CONSTRAINT [CK_SaleRefund_Sale_SaleID] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([SaleID])
GO

ALTER TABLE [dbo].[SaleRefund] CHECK CONSTRAINT [CK_SaleRefund_Sale_SaleID]
GO
