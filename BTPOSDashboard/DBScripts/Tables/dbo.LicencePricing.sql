/****** Object:  Table [dbo].[LicensePricing]    Script Date: 05/10/2016 07:02:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicensePricing](
	[Id] [int] NOT NULL,
	[LicenseId] [int] NOT NULL,
	[TimePeriod] [varchar](50) NULL,
	[MinTimePeriods] [int] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[fromdate] [datetime] NULL,
	[todate] [datetime] NULL,
	[Active] [int] NULL CONSTRAINT [DF_LicensePricing_Active]  DEFAULT ((1))
) ON [PRIMARY]

GO
