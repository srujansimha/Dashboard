USE [Dashboard]
GO

CREATE TABLE [dbo].[UserLogins](
	[LoginInfo] [nvarchar](50) NOT NULL,
	[PassKey] [nvarchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[salt] [varchar](50) NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[UserLogins] ADD  CONSTRAINT [DF_UserLogins_Active]  DEFAULT ((1)) FOR [Active]
GO


/****** Object:  Table [dbo].[FleetOwnerRouteDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetOwnerRouteDetails](
	[FleetOwnerId] [int] NOT NULL,
	[RouteId] [varchar](50) NOT NULL,
	[Stop1] [nvarchar](50) NOT NULL,
	[PreviousStop] [nvarchar](50) NOT NULL,
	[NextStop] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetOwner]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetOwner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[GroupId] [int] NULL,
	[Active] [int] NOT NULL,
	[FleetOwnerCode] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fares]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fares](
	[Id] [int] NULL,
	[FromStop] [varchar](50) NULL,
	[ToStop] [varchar](50) NULL,
	[Fare] [varchar](50) NULL,
	[Active] [varchar](50) NULL,
	[RouteId] [varchar](50) NULL,
	[Name] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expenses](
	[amount] [int] NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[Id] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[paidBy] [varchar](50) NOT NULL,
	[paidFor] [varchar](50) NOT NULL,
	[transactionId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EditHistoryDetails](
	[EditHistoryId] [int] NULL,
	[FromValue] [varchar](50) NULL,
	[ToValue] [varchar](50) NULL,
	[ChangeType] [varchar](50) NULL,
	[Field1] [varchar](50) NULL,
	[Field2] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EditHistory](
	[Field] [varchar](50) NOT NULL,
	[SubItem] [varchar](50) NOT NULL,
	[Comment] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[ChangedBy] [varchar](50) NOT NULL,
	[ChangedType] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[ID] [numeric](18, 0) NULL,
	[Name] [nchar](10) NULL,
	[Code] [nchar](10) NULL,
	[Active] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Desc] [varchar](50) NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSSheduleUploads]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSSheduleUploads](
	[Id] [numeric](18, 0) NULL,
	[POSID] [numeric](18, 0) NULL,
	[UploadOn] [nchar](10) NULL,
	[UploadedOn] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[UploadData] [nchar](10) NULL,
	[Ipconfig] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTPOSSecheduledUpdates]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSSecheduledUpdates](
	[Id] [numeric](18, 0) NULL,
	[POSID] [numeric](18, 0) NULL,
	[UploadOn] [nchar](10) NULL,
	[UploadedOn] [nchar](10) NULL,
	[Status] [nchar](10) NULL,
	[UploadData] [nchar](10) NULL,
	[IpConfig] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTPOSRegistration]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSRegistration](
	[Id] [numeric](18, 0) NULL,
	[POSID] [numeric](18, 0) NULL,
	[Status] [nchar](10) NULL,
	[FleetOwenerId] [numeric](18, 0) NULL,
	[RegisteredOn] [nchar](10) NULL,
	[IpConfig] [nchar](10) NULL,
	[RegStatus] [nchar](10) NULL,
	[LincenseNo] [nchar](10) NULL,
	[ActivatedOn] [nchar](10) NULL,
	[ExpiryDate] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTPOSRecords]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSRecords](
	[Id] [numeric](18, 0) NULL,
	[BTPOSId] [numeric](18, 0) NULL,
	[IpConfig] [nchar](10) NULL,
	[RecordData] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTPOSPortSettings]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSPortSettings](
	[Id] [numeric](18, 0) NULL,
	[BTPOSID] [numeric](18, 0) NULL,
	[Ipconfig] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTPOSInventorySales]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTPOSInventorySales](
	[amount] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[inventoryId] [int] NOT NULL,
	[perunit] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[soldon] [varchar](50) NOT NULL,
	[transactionId] [int] NOT NULL,
	[transactiontype] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSFaultsCatageries]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSFaultsCatageries](
	[Active] [numeric](18, 0) NULL,
	[BTPOSFaultCategory] [nchar](10) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[TypeGrpid] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BTPOSDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTPOSDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[POSID] [varchar](20) NOT NULL,
	[StatusId] [int] NOT NULL,
	[IMEI] [varchar](50) NOT NULL,
	[ipconfig] [varchar](20) NULL,
	[active] [int] NULL,
	[FleetOwnerId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSAuditDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSAuditDetails](
	[BTPOSID] [numeric](18, 0) NULL,
	[EditHistoryId] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blocklist]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blocklist](
	[Id] [numeric](18, 0) NULL,
	[ItemId] [numeric](18, 0) NULL,
	[ItemTypeId] [numeric](18, 0) NULL,
	[Formdate] [nchar](10) NULL,
	[Todate] [nchar](10) NULL,
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Reason] [nchar](10) NULL,
	[Blockedby] [nchar](10) NULL,
	[UnBlockedby] [nchar](10) NULL,
	[Blockedon] [nchar](10) NULL,
	[UnBlockedon] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetMessages]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

GO
/****** Object:  StoredProcedure [dbo].[GetAuditDetails]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetAuditDetails]
AS
BEGIN
	
select * from AuditDetails
end
GO
/****** Object:  Table [dbo].[register]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[register](
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ConfirmPassword] [nvarchar](50) NULL,
	[Emailaddress] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceivingsMaster]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceivingsMaster](
	[Id] [numeric](18, 0) NULL,
	[Date] [smalldatetime] NULL,
	[ReceivedFor] [nchar](10) NULL,
	[Desc] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receivings]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receivings](
	[Id] [numeric](18, 0) NULL,
	[Amount] [nchar](10) NULL,
	[MasterId] [numeric](18, 0) NULL,
	[ReceivedBy] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSTerminal]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSTerminal](
	[Id] [int] NULL,
	[POSId] [varchar](10) NULL,
	[Status] [int] NULL,
	[GroupId] [int] NULL,
	[Location] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentReceivings]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentReceivings](
	[amount] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[desc] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[inventoryId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[receivedOn] [varchar](50) NOT NULL,
	[transactionId] [int] NOT NULL,
	[transactiontype] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentGatewayType]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentGatewayType](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[PaymentGatewayType] [nchar](10) NULL,
	[TypeGripId] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentGatewaySettings]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentGatewaySettings](
	[enddate] [datetime] NOT NULL,
	[hashkey] [datetime] NOT NULL,
	[Id] [int] NOT NULL,
	[PaymentGatewayTypeId] [int] NOT NULL,
	[providername] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[saltkey] [datetime] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[username] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentgateway]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPaymentgateway]
AS
BEGIN
	
select * from Paymentgateway
end
GO
/****** Object:  Table [dbo].[PaymentCatergory]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCatergory](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[PaymentCatergory] [nchar](10) NULL,
	[TypegripId] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[Card] [varchar](50) NOT NULL,
	[MobilePayment] [varchar](50) NOT NULL,
	[Cash] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PayablesMaster]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayablesMaster](
	[Id] [numeric](18, 0) NULL,
	[Date] [smalldatetime] NULL,
	[PaidFor] [nchar](10) NULL,
	[Desc] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELPayables]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELPayables](@Id numeric(30),
           @Amount VARCHAR(50),
           @MasterId numeric(30),
           @Paidby varchar(50))
AS
BEGIN
	

INSERT INTO 
[Payables] VALUES
           (@Id, 
          @Amount,
           @MasterId,
           @Paidby)
          
   
	END
GO
/****** Object:  StoredProcedure [dbo].[GetPayables]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPayables]
AS
BEGIN
	
select * from Payables
end
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON

GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Objects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[Path] [varchar](500) NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjectAccesses]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjectAccesses](
	[Id] [int] NOT NULL,
	[ObjectId] [int] NOT NULL,
	[AccessId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELNOCBTPOSTracking]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELNOCBTPOSTracking](@Id numeric(10),              
           @BTPOSId numeric(10),
           @Xcord varchar(50),
           @Ycord Varchar(50),
           @Time varchar(20),
           @Date Datetime)
AS
BEGIN
	

INSERT INTO 
[NOCBTPOSTracking] VALUES
           (@Id,
              
           @BTPOSId,
           @Xcord,
           @Ycord,
           @Time,
           @Date)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[GetNOCBTPOSTracking]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetNOCBTPOSTracking]
AS
BEGIN
	
select * from NOCBTPOSTracking
end
GO
/****** Object:  Table [dbo].[mulitiplicationsave]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mulitiplicationsave](
	[rows] [numeric](18, 0) NULL,
	[columns] [numeric](18, 0) NULL,
	[layoutId] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menu](
	[Ticketgeneration] [varchar](50) NOT NULL,
	[Settings] [varchar](50) NOT NULL,
	[Reports] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loginpage]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loginpage](
	[userid] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicensePayments]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicensePayments](
	[expiryOn] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[licenseFor] [varchar](50) NOT NULL,
	[licenseId] [int] NOT NULL,
	[licenseType] [varchar](50) NOT NULL,
	[paidon] [datetime] NOT NULL,
	[renewedon] [datetime] NOT NULL,
	[transId] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseKeyFile]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseKeyFile](
	[Id] [int] NOT NULL,
	[LicenseType] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[active] [int] NOT NULL,
	[key] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenceStatus]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenceStatus](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[LicenseStatusType] [nchar](10) NULL,
	[TypeGripidId] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenceCatergories]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenceCatergories](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[LicenseCategory] [nchar](10) NULL,
	[TypegripId] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventorySales]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventorySales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[PurchaseDate] [varchar](50) NOT NULL,
	[InVoiceNumber] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryReceivings]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryReceivings](
	[amount] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[date] [varchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[inventoryId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[reason] [varchar](50) NOT NULL,
	[refundamt] [int] NOT NULL,
	[returnedOn] [varchar](50) NOT NULL,
	[transactionId] [int] NOT NULL,
	[transactiontype] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryPurchases]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryPurchases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[PurchaseDate] [varchar](50) NOT NULL,
	[PurchaseOrderNumber] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inventory](
	[Active] [int] NOT NULL,
	[availableQty] [int] NOT NULL,
	[category] [varchar](50) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[InventoryId] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[reorderpoint] [int] NOT NULL,
	[subcat] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[TypeGroupId] [int] NOT NULL,
	[listkey] [varchar](10) NULL,
	[listvalue] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TypeGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TroubleTicketingStatus]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TroubleTicketingStatus](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[TtStatusTpe] [nchar](10) NULL,
	[TypeGripId] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TroubleTicketingSlaType]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TroubleTicketingSlaType](
	[Active] [numeric](18, 0) NULL,
	[Desc] [nchar](10) NULL,
	[Id] [numeric](18, 0) NULL,
	[TTSLAType] [nchar](10) NULL,
	[TypeGripId] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TroubleTicketingHandlers]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TroubleTicketingHandlers](
	[handledOn] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[TTId] [int] NOT NULL,
	[userid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TroubleTicketingDevice]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TroubleTicketingDevice](
	[deviceid] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[ticketTypeId] [int] NOT NULL,
	[TTId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TroubleTicketingDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TroubleTicketingDetails](
	[addInfo] [varchar](50) NOT NULL,
	[createdBy] [varchar](50) NOT NULL,
	[createdOn] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[raisedBy] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[ticketinfo] [varchar](50) NOT NULL,
	[ticketTypeId] [int] NOT NULL,
	[TTId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TroubleTicketingCategories]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TroubleTicketingCategories](
	[active] [int] NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[TTCategory] [varchar](50) NOT NULL,
	[typegrpid] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionTypes](
	[active] [int] NOT NULL,
	[desc] [varchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[TransactionTypes] [varchar](50) NOT NULL,
	[typegrpid] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[barcode] [varchar](50) NOT NULL,
	[BTPOSid] [varchar](50) NOT NULL,
	[busNumber] [varchar](50) NOT NULL,
	[busId] [int] NULL,
	[change] [varchar](50) NULL,
	[company] [varchar](50) NOT NULL,
	[companyId] [varchar](50) NULL,
	[ConductorId] [varchar](50) NULL,
	[ConductorName] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[destination] [varchar](50) NOT NULL,
	[fare] [varchar](50) NULL,
	[greetingMessage] [varchar](50) NOT NULL,
	[luggageType] [varchar](50) NOT NULL,
	[passengerType] [varchar](50) NOT NULL,
	[passengerId] [varchar](50) NULL,
	[paymentId] [varchar](50) NOT NULL,
	[printdataId] [varchar](50) NOT NULL,
	[route] [varchar](50) NULL,
	[routecode] [varchar](50) NOT NULL,
	[routeId] [varchar](50) NULL,
	[source] [varchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[ticketHolderId] [varchar](50) NULL,
	[ticketHolderName] [varchar](50) NULL,
	[TicketNumber] [varchar](50) NOT NULL,
	[ticketValidityPeriod] [varchar](50) NULL,
	[totalamount] [int] NOT NULL,
	[amountpaid] [int] NOT NULL,
	[TransactionCode] [varchar](50) NOT NULL,
	[TransactionId] [varchar](50) NULL,
	[transactionType] [varchar](50) NOT NULL,
	[userid] [int] NOT NULL,
	[ChangeRendered] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionMaster]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionMaster](
	[Id] [int] NOT NULL,
	[TransCode] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TransType] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionDetails](
	[Id] [int] NULL,
	[TransId] [varchar](50) NULL,
	[TotalAmt] [int] NULL,
	[PaymentId] [varchar](50) NULL,
	[BTPOSid] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TicketGeneration]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TicketGeneration](
	[Source] [varchar](50) NOT NULL,
	[Target] [varchar](50) NOT NULL,
	[NoOfTickets] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table2]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table2](
	[Travels] [nvarchar](50) NULL,
	[DepartArriveDuration] [nvarchar](50) NULL,
	[Seats] [nvarchar](50) NULL,
	[Rating] [nvarchar](50) NULL,
	[Fare] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](150) NULL,
	[CategoryId] [int] NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stops]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [varchar](30) NULL,
	[Code] [varchar](10) NOT NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetSTATE]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSTATE]
AS
BEGIN
	
select * from STATE
end
GO
/****** Object:  Table [dbo].[SMSProviderConfig]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSProviderConfig](
	[Id] [numeric](18, 0) NULL,
	[ProviderName] [nchar](10) NULL,
	[BTPOSGRPID] [nchar](10) NULL,
	[Active] [nchar](10) NULL,
	[UserId] [numeric](18, 0) NULL,
	[Passkey] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSEmailSubscribers]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMSEmailSubscribers](
	[AlertId] [int] NOT NULL,
	[emailid] [varchar](50) NOT NULL,
	[enddate] [datetime] NOT NULL,
	[frequency] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[phNo] [varchar](50) NOT NULL,
	[startdate] [datetime] NOT NULL,
	[userid] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMSEmailConfiguration]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMSEmailConfiguration](
	[AlertTypeId] [int] NOT NULL,
	[enddate] [datetime] NOT NULL,
	[hashkey] [datetime] NOT NULL,
	[Id] [int] NOT NULL,
	[providername] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[saltkey] [datetime] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[username] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoutesVehicle]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoutesVehicle](
	[Id] [int] NOT NULL,
	[VehicleId] [nvarchar](50) NOT NULL,
	[RouteId] [nvarchar](50) NOT NULL,
	[EffectiveFrom] [nvarchar](50) NOT NULL,
	[EffectiveTill] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[getRoutesFares]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getRoutesFares]
as
begin
select * from RoutesFares
end
GO
/****** Object:  Table [dbo].[RoutesConfiguration]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoutesConfiguration](
	[distanceFromDest] [int] NOT NULL,
	[distanceFromLastStop] [int] NOT NULL,
	[distanceFromPrevStop] [int] NOT NULL,
	[distanceFromSource] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[routeId] [int] NOT NULL,
	[stops] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Routes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Route] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Active] [varchar](50) NOT NULL,
	[BTPOSGroupId] [varchar](50) NOT NULL,
	[Source] [varchar](50) NOT NULL,
	[Destination] [varchar](50) NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RouteFare]    Script Date: 05/02/2016 15:07:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RouteFare](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[VehicleType] [nvarchar](50) NOT NULL,
	[SourceStopId] [int] NOT NULL,
	[DestinationStopId] [int] NOT NULL,
	[Distance] [nvarchar](50) NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[FareType] [nvarchar](50) NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[RouteFareDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RouteFareDetails](
	[Id] [int] NOT NULL,
	[RouteId] [varchar](50) NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[Source] [varchar](50) NOT NULL,
	[Destination] [nvarchar](50) NOT NULL,
	[Stop] [nvarchar](50) NOT NULL,
	[Kilometers] [int] NOT NULL,
	[Fare] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RouteDetails]    Script Date: 05/02/2016 17:04:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RouteDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [varchar](50) NOT NULL,
	[stopname] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[StopCode] [varchar](50) NOT NULL,
	[DistanceFromSource] [int] NOT NULL,
	[DistanceFromDestination] [int] NOT NULL,
	[DistanceFromPreviousStop] [int] NOT NULL,
	[DistanceFromNextStop] [int] NOT NULL,
	[PreviousStopId] [int] NOT NULL,
	[NextStopId] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Roles]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Active] [varchar](50) NOT NULL,
	[CompanyId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleObjectAccesses]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleObjectAccesses](
	[Id] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[ObjectId] [int] NOT NULL,
	[AccessId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[getRoledetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getRoledetails]
as begin 
select * from RoleDetails
end
GO
/****** Object:  Table [dbo].[ReportsFields]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportsFields](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ReportType] [varchar](50) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NOT NULL,
	[active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistrationBTPOS]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistrationBTPOS](
	[code] [varchar](50) NOT NULL,
	[uniqueId] [varchar](50) NOT NULL,
	[ipconfig] [varchar](50) NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELAlertsNotifications]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELAlertsNotifications]
@Id int

           
AS
BEGIN
	

Delete from AlertsNotifications where Id=@Id
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELSTATE]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELSTATE](@Id NUMERIC(10),
           @Name VARCHAR(20),
           @Count VARCHAR(20),
           @Code VARCHAR(20),
           @Active varchar(20))
AS
BEGIN
	

INSERT INTO 
[STATE] VALUES
           (@ID,
           @Name,
           @Count,
           @Code,
           @Active)
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelObjects]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelObjects](@Id int,
@Name varchar(50),
@Description varchar(100) = '',
@Path Varchar(500),
@Active int = 1)
as
begin
insert into Object (Name,Description,Path ,Active) values(@Name,@Description, @Path, @Active)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelObjectAccess]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelObjectAccess](@Id int,
@ObjectId int,
@AccessId int,@Name varchar(50))

as
begin
insert into ObjectAccess (ObjectId,AccessId,Name) values(@ObjectId,@AccessId,@Name)
end
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](40) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[EmpNo] [varchar](50) NOT NULL,
	[Email] [varchar](40) NULL,
	[AddressId] [int] NULL,
	[MobileNo] [varchar](15) NULL,
	[RoleId] [int] NULL,
	[Active] [int] NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[CompanyId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[GroupId] [int] NULL,
	[RoleName] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipCode](
	[Id] [numeric](18, 0) NULL,
	[Code] [nchar](10) NULL,
	[Active] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleDetails]    Script Date: 04/21/2016 09:02:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleDetails](
	[busId] [money] NOT NULL,
	[busTypeId] [int] NOT NULL,
	[conductorId] [int] NOT NULL,
	[conductorName] [varchar](50) NOT NULL,
	[driverId] [int] NOT NULL,
	[driverName] [varchar](50) NOT NULL,
	[fleetOwnerId] [int] NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[POSID] [int] NOT NULL,
	[RegNo] [varchar](50) NOT NULL,
	[route] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[statusid] [int] NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRoledetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[InsUpdDelRoledetails](@Id int,

@ObjectName varchar(50),
@Path varchar(50)
)
as
begin
insert into Object (ObjectName,Path) values(@ObjectName, @Path)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELPaymentgateway]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELPaymentgateway](@Id numeric(20),
           @ProviderName varchar(20),
           @BTPOSGRPID VARCHAR(20),
           @Active numeric(20),
           @userId numeric(20),
           @Passkey varchar(20),
           @Url varchar(20),
           @Testurl varchar(20),
           @Salt varchar(20),
           @Hash varchar(20),
           @PaymentGatwayTypeId varchar(20))
AS
BEGIN
	

INSERT INTO 
[Paymentgateway] VALUES
           (@Id,
           @ProviderName,
           @BTPOSGRPID,
           @Active,
           @UserId,
           @Passkey,
           @Url,
           @Testurl,
           @Salt,
           @Hash,
           @PaymentGatwayTypeId)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELPaymentCatergory]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE[dbo].[InsUpdDelELPaymentCatergory](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @PaymentCatergory varchar(30),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[PaymentGatewayType] VALUES
           (@Active,
              
          
           @Desc,
           @Id,
           @PaymentCatergory,
           @TypeGripId )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELPayablesMaster]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELPayablesMaster](@Id numeric,
           @Date smalldatetime,
           @PaidFor VARCHAR,
           @Desc VARCHAR)
AS
BEGIN
	

INSERT INTO 
[PayablesMaster] VALUES
           (@Id
           ,@Date
           ,@PaidFor
           ,@Desc)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRegistrationBTPOS]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelRegistrationBTPOS](@code varchar(50),@uniqueId varchar(50),@ipconfig varchar(50),
                                                    @Active int)
as
begin
insert into RegistrationBTPOS values (@code,@uniqueId,@ipconfig,@Active)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelPaymentReceivings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelPaymentReceivings](@amount int,@code varchar(50),@date varchar(50),@desc int,@Id int,@inventoryId int,@quantity int,@receivedOn varchar(50),@transactionId int,@transactiontype varchar(50))
as
begin
insert into PaymentReceivings values(@amount,@code,@date,@desc,@Id,@inventoryId,@quantity,@receivedOn,@transactionId,@transactiontype)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelPaymentGatewaySettings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelPaymentGatewaySettings](@enddate datetime,@hashkey datetime,@Id int,@PaymentGatewayTypeId int,@providername varchar(50),@pwd varchar(50),@saltkey datetime,@startdate datetime,@username varchar(50))
as
begin
insert into PaymentGatewaySettings values(@enddate,@hashkey,@Id,@PaymentGatewayTypeId,@providername,@pwd,@saltkey,@startdate,@username)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelPayment]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdDelPayment](@Card varchar(50),@MobilePayment varchar(50),@Cash varchar(50))
as
begin
insert into Payment values(@Card,@MobilePayment,@Cash)
end
GO
/****** Object:  StoredProcedure [dbo].[ValidateFleetOwnerCode]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ValidateFleetOwnerCode]
	@fleetownercode varchar(10),
	@result int out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	select @result = COUNT(*) from FleetOwner where UPPER(FleetOwnerCode) = UPPER(@fleetownercode)

    -- Insert statements for procedure here
	return @result
END
GO
/****** Object:  StoredProcedure [dbo].[ValidateCredentials]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ValidateCredentials](@logininfo varchar(50) = null, @passkey varchar(50) = null)
as
begin

select logininfo,firstname, lastname,u.Id ,ur.RoleName,ur.roleid
from userlogins ul 
inner join users u on 
u.id = ul.userid
left outer join UserRoles ur on ur.UserId=u.Id
where LoginInfo=@logininfo and [PassKey]=@passkey

end

--select count(*)  from login where UserName='pavani' and Password='pavani'
--[ValidateCredentials] 'FL002', 'FL002'

--select * from UserRoles
GO
/****** Object:  StoredProcedure [dbo].[updatebtpos]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updatebtpos]
	@fleetownercode varchar(10),
	@units int,
	@result int out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	declare @fleetownerid int
	
	select @fleetownerid = userID from FleetOwner where UPPER(FleetOwnerCode) = UPPER(@fleetownercode)
	
	UPDATE BTPOSDetails
        SET FleetOwnerId = @fleetownerid
    FROM BTPOSDetails
    INNER JOIN (
        SELECT TOP(@units) ID FROM BTPOSDetails WHERE FleetOwnerId = 4
         ORDER BY ID
    ) AS InnerMyTable ON BTPOSDetails.ID = InnerMyTable.ID
	
	select @result = COUNT(*) from FleetOwner where UPPER(FleetOwnerCode) = UPPER(@fleetownercode)

    -- Insert statements for procedure here
	return @result
END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelMenu]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdDelMenu](@Ticketgeneration varchar(50),@Settings varchar(50),@Reports varchar(50))
as
begin
insert into menu values (@Ticketgeneration,@Settings,@Reports)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelLicensePayments]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelLicensePayments](@expiryOn datetime,@Id int,@licenseFor varchar(50),@licenseId int,@licenseType varchar(50),@paidon datetime,@renewedon datetime,@transId varchar (50))
as
begin
insert into LicensePayments (expiryOn,licenseFor,licenseId,licenseType,paidon,renewedon,transId) values(@expiryOn,@licenseFor,@licenseId,@licenseType,@paidon,@renewedon,@transId)
end
GO
/****** Object:  StoredProcedure [dbo].[InsupddelInventorySales]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsupddelInventorySales] (@Id int,@ItemName varchar(50),@Quantity int,@PerUnitPrice int,@PurchaseDate varchar(50),@InVoiceNumber int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	INSERT INTO [POSDashboard].[dbo].[InventorySales]
           ([ItemName]
           ,[Quantity]
           ,[PerUnitPrice]
           ,[PurchaseDate]
           ,[InVoiceNumber])
     VALUES
    (@ItemName,@Quantity,@PerUnitPrice,@PurchaseDate,@InVoiceNumber)




END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelInventoryReceivings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelInventoryReceivings](@amount int,@code varchar(50),@date varchar(50),@Id int,@inventoryId int,@quantity int,@reason varchar(50),@refundamt int,@returnedOn varchar(50),@transactionId int,@transactiontype varchar(50))
as
begin
insert into InventoryReceivings values(@amount,@code,@date,@Id,@inventoryId,@quantity,@reason,@refundamt,@returnedOn,@transactionId,@transactiontype)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelInventory]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelInventory](@Active int,@availableQty int,@category varchar(50)
,@code varchar(50),@desc varchar(50),@InventoryId int,@name varchar(50),@PerUnitPrice int,@reorderpoint int,@subcat varchar(50))
as
begin
insert into Inventory values(@Active,@availableQty,@category,@code,@desc,@InventoryId,@name,@PerUnitPrice,@reorderpoint,@subcat)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelFleetOwner]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelFleetOwner](@Id int,@UserId varchar(50),@BTPOSgroupid varchar(50),@Active varchar(50))
as
begin
insert into FleetOwner values(@Id,@UserId,@BTPOSgroupid,@Active)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelFares]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelFares](@Id int,@FromStop varchar(50),@ToStop varchar(50),@Fare varchar(50),@Active varchar(50),@RouteId varchar(50),@Name varchar(50))
as
begin
insert into Fares values(@Id,@FromStop,@ToStop,@Fare,@Active,@RouteId,@Name)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelExpenses]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelExpenses](@amount int,@Date varchar(50),@desc varchar(50),@Id int,@MasterId int,@paidBy varchar(50),@paidFor varchar (50),@transactionId int)
as
begin
insert into Expenses values(@amount,@Date,@desc,@Id,@MasterId,@paidBy,@paidFor,@transactionId)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELZipCode]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELZipCode](@Id NUMERIC(20),
           @Code varchar(30),
           @Active varchar(30))
           
AS
BEGIN
	

INSERT INTO 
[ZipCode] VALUES
           (@Id
           ,@Code,
           @Active)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELTroubleTicketingStatus]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE[dbo].[InsUpdDelELTroubleTicketingStatus](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @TtStatusType varchar(30),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[TroubleTicketingStatus] VALUES
           (@Active,
              
          
           @Desc,
           @Id,
           @TtStatusType,
           @TypeGripId )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELTroubleTicketingSlaType]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELTroubleTicketingSlaType](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @TTSLAType varchar(30),
           @TypeGripId numeric(20))
AS
BEGIN
	

INSERT INTO 
[TroubleTicketingSlaType] VALUES
           (@Active,
              
          
           @Desc,
           @Id,
           @TTSLAType,
           @TypeGripId)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELSMSProviderConfig]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELSMSProviderConfig](@Id numeric(20),
           @ProviderName varchar(20),
           @BTPOSGRPID varchar(20),
           @Active varchar(20),
           @UserId numeric(20),
           @Passkey varchar(20))
AS
BEGIN
	

INSERT INTO 
[SMSProviderConfig] VALUES
           (@Id,
           @ProviderName,
           @BTPOSGRPID,
           @Active,
           @UserId,
           @Passkey)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELregisterform]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelELregisterform](@UserName varchar(max),
@Password varchar(max),@ConfirmPassword varchar(max),@Emailaddress varchar(max),
@FirstName varchar(max),@LastName varchar(max))
as
begin

INSERT INTO 
[register] VALUES
           (@UserName,
              
          
           @Password,
		     @ConfirmPassword,
			    @Emailaddress,
           @FirstName,
           @LastName
         
         )
   

end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELReceivingsMaster]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELReceivingsMaster](@Id Numeric(20),
           @Date smalldatetime,
           @ReceivedFor varchar(20),
           @Desc varchar(20))
AS
BEGIN
	

INSERT INTO 
[ReceivingsMaster] VALUES
           (@Id, 
           @Date, 
           @ReceivedFor,
           @Desc)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELReceivings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELReceivings](@Id Numeric(10),
           @Amount VARCHAR(20),
           @MasterId numeric(10),
           @ReceivedBy Varchar(20))
AS
BEGIN
	

INSERT INTO 
[Receivings] VALUES

       (@Id,
       @Amount,
         @MasterId,
           @ReceivedBy)  
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELPaymentGatewayType]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELPaymentGatewayType](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @PaymentGatewayType varchar(30),
           @TypeGripId numeric(20))
AS
BEGIN
	

INSERT INTO 
[PaymentGatewayType] VALUES
           (@Active,
              
          
           @Desc,
           @Id,
           @PaymentGatewayType,
           @TypeGripId )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelEditHistoryDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelEditHistoryDetails](@EditHistoryId int,@FromValue varchar(50),@ToValue varchar(50),@ChangeType varchar(50),@Field1 varchar(50),@Field2 varchar(50))
as
begin
insert into EditHistoryDetails values(@EditHistoryId,@FromValue,@ToValue,@ChangeType,@Field1,@Field2)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelEditHistory]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelEditHistory](@Field varchar(50),@SubItem varchar(50),@Comment varchar(50),@Date datetime,@ChangedBy varchar(50),@ChangedType varchar(50))
as
begin
insert into EditHistory values(@Field,@SubItem,@Comment,@Date,@ChangedBy,@ChangedType)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelCompanyGroups]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelCompanyGroups](
@active int,
@code varchar(50),
@desc varchar(50) = '',
@Id int,
@Name varchar(50),
@insupdflag varchar(10)
)
as
begin
declare @cnt int
set @cnt = 0

declare @newCmpId int
set @newCmpId = 0;



if @insupdflag = 'I'
	--check if already company exists
	select @cnt = count(1) from company where upper(name) = upper(@name)

	if @cnt = 0 
	begin
	insert into Company (active,code,[desc],Name) values(@active,@code,@desc,@Name)
	
	SELECT @newCmpId = @@IDENTITY

    --insert Fleet owner role by default
		insert into Roles (Name,[Description],Active,companyid) 
		values('Fleet Owner','Fleet owner role',1,@newCmpId)
   
	end

else

   if @insupdflag = 'U'

		--check if already a company with the new name exists
		select @cnt = count(1) from company where upper(name) = upper(@name) and id <> @id
	    
		if @cnt = 0 
		begin
		update Company
		set Name = @Name, code = @code, [desc] = @desc, active = @active
		where Id = @Id
		end
   else
     delete from Company where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelBTPOSInventorySales]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelBTPOSInventorySales](@amount int,@code varchar (50),@Id int,@inventoryId int,@perunit int,@quantity int,@soldon varchar (50),@transactionId int,@transactiontype varchar (50))
as
begin
insert into BTPOSInventorySales values(@amount,@code,@Id,@inventoryId,@perunit,@quantity,@soldon,@transactionId,@transactiontype)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelBTPOSDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelBTPOSDetails](
		  @Id int,
           @GroupId int,   
           @POSID varchar(20),
           @StatusId int,
           @IMEI varchar(20),
           @ipconfig varchar(20),
           @active int = 1,
           @fleetownerid int,
           @insupdflag varchar(10)
           )
 
AS
BEGIN	
if @insupdflag = 'I' 
INSERT INTO [POSDashboard].[dbo].[BTPOSDetails]
           ([CompanyId]
           ,[POSID]
           ,[StatusId]
           ,[IMEI]
           ,[ipconfig]
           ,[active]
           ,[FleetOwnerId])
     VALUES
           --(--@GroupId
           --@POSID
           --,@StatusId
           --,@IMEI
           --,@ipconfig
           --,@active
           --,@FleetOwnerId)
             (1,
           @POSID
           ,1
           ,null
           ,null
           ,1
           ,1)
else
  if @insupdflag = 'U' 
UPDATE [POSDashboard].[dbo].[BTPOSDetails]
   SET --[GroupId] = @GroupId
      [POSID] = @POSID
      ,[StatusId] = @StatusId
      ,[IMEI] = @IMEI
      ,[ipconfig] = @ipconfig
      ,[active] = @active
      ,[FleetOwnerId] = @fleetownerid
 WHERE Id = @Id
 
 else
   delete from BTPOSDetails where Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[registerbtpos]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[registerbtpos]
	@fleetownercode varchar(10),
	@ipconfig varchar(20),
	@result int out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	declare @fleetownerid int
	declare @posid int
	
	select @fleetownerid = userID from FleetOwner where UPPER(FleetOwnerCode) = UPPER(@fleetownercode)
	select @posid = ID from BTPOSDetails where FleetOwnerId = @fleetownerid and ipconfig = @ipconfig
	
	UPDATE BTPOSDetails
        SET POSID = 'POS'+ UPPER(@fleetownercode)+ cast(@posid as varchar(3))
    FROM BTPOSDetails
    where FleetOwnerId = @fleetownerid and ipconfig = @ipconfig
   
	select @result = COUNT(*) from BTPOSDetails where  POSID = 'POS'+ UPPER(@fleetownercode)+ cast(@posid as varchar(3))

    -- Insert statements for procedure here
	return @result
END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdUsers]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdUsers](
@FirstName varchar(40)
,@LastName varchar(40)
,@MiddleName varchar(40) = ''
,@UserTypeId int
,@EmpNo varchar(15)
,@Email varchar(40) = ''
,@AdressId int
,@MobileNo varchar(50) = ''
,@RoleId int
,@cmpId int
,@Active int
,@UserName varchar(30)  = ''
,@Password varchar(30)  = ''
,@insupdflag varchar(10)
,@userid int = -1)
 as begin
 
 declare @currid int
 declare @cnt int
 declare @logincnt int
 declare @ulogincnt int
 
 if @insupdflag = 'I'
 begin
 
 select @cnt = COUNT(*)  from Users where UPPER(EmpNo) = @EmpNo
 
 select @logincnt = COUNT(*) from userlogins where upper(logininfo) = UPPER(@username) 
 
 if @cnt > 0
 RAISERROR ('Already user exists',16,1);
 
  
 if @cnt = 0 
 begin
	insert into Users(FirstName,LastName,MiddleName, UserTypeId,EmpNo,Email,AddressId,MobileNo,[RoleId],Active,CompanyId)
	values(@FirstName,@LastName,@MiddleName, @UserTypeId,@EmpNo,@Email,@AdressId,@MobileNo,@RoleId,@Active,@cmpId) 
  
 
    SELECT @currid = @@IDENTITY
 end
  
  if @logincnt > 0
	RAISERROR ('Already user login exists',16,1);
 
   if @logincnt = 0 and @UserName is not null
   begin
	insert into userlogins(logininfo,PassKey,active,userid)values(@UserName,@Password,1,@currid)
   end
end
 else
 
 begin
 
 SELECT @currid = @userid
 
 update Users 
 set FirstName = @FirstName,
 LastName = @LastName,
 MiddleName = @MiddleName,
 Email = @Email,
 MobileNo = @MobileNo,
 RoleId = @RoleId,
 UserTypeId=@UserTypeId,
 Active = @Active 
 where id = @userid
 
 select @logincnt = COUNT(*) from userlogins where  userid = @userid
 
 
 if @logincnt = 0
  --login is not existing hence insert 
 if @UserName is not null
 insert into userlogins(logininfo,PassKey,active,userid)values(@UserName,@Password,1,@userid)
 
 else
 begin
 --check if updation causes duplicates
 select @ulogincnt = COUNT(*) from userlogins where upper(logininfo) = UPPER(@username) and userid <> @userid
 
 if @ulogincnt = 0
 	update userlogins
	set logininfo = @UserName
	,PassKey = @Password
	,active = @active
	where userid = @currid
else
 RAISERROR ('User login already exists',16,1);
 end

 
 end --end of 'i' check
 
 --if role is fleet owner then insert the code into fleet owner table
 
 declare @fcnt int
 
 if @RoleId = 2 
 begin
 
 select @fcnt = COUNT(*) from FleetOwner where UserId = @currid
 
			 if @fcnt = 0 
				INSERT INTO [POSDashboard].[dbo].[FleetOwner]
					   ([UserId]
					   ,[GroupId]
					   ,[Active]
					   ,[FleetOwnerCode])
				 VALUES
					   (@currid
					   ,1
					   ,1
					   ,@EmpNo)
				else
					UPDATE [POSDashboard].[dbo].[FleetOwner]
						SET 
						[GroupId] = 1
						,[Active] = 1
						,[FleetOwnerCode] = @EmpNo
					 WHERE [UserId] = @currid
 
 end
 
 
 end
 
--select * from FleetOwner

--select * from Roles
GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdTypes](@Id int,@Name varchar(50),@Description varchar(50) = null,@TypeGroupId varchar(50),@Active varchar(30))
as
begin

update types 
set name=@Name
,Active = @Active
,Description = @Description
,TypeGroupId = @TypeGroupId
where Id = @Id

if @@rowcount = 0 
begin
insert into Types(Name,[Description],TypeGroupId,Active) values(@Name,@Description,@TypeGroupId,@Active)
end

end

select * from types
GO
/****** Object:  StoredProcedure [dbo].[InsUpdTypeGroups]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdTypeGroups](@Id int,@Name varchar(50)
,@Description varchar(50) = null,@Active int)
as
begin

update typegroups 
set name=@Name
,Active = @Active
,Description = @Description
where Id = @Id

if @@rowcount = 0 
begin
insert into TypeGroups (Name,[Description],Active) values(@Name,@Description,@Active)
end

end
GO
/****** Object:  StoredProcedure [dbo].[InsupdInventoryPurchases]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsupdInventoryPurchases]  (@Id int,@ItemName varchar(50)
           ,@Quantity int
           ,@PerUnitPrice int 
           ,@PurchaseDate varchar(50)
           ,@PurchaseOrderNumber int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	INSERT INTO [POSDashboard].[dbo].[InventoryPurchases]
           ([ItemName]
           ,[Quantity]
           ,[PerUnitPrice]
           ,[PurchaseDate]
           ,[PurchaseOrderNumber])
     VALUES
           (@ItemName
           ,@Quantity
           ,@PerUnitPrice
           ,@PurchaseDate
           ,@PurchaseOrderNumber)

END
GO
/****** Object:  StoredProcedure [dbo].[InsUpDelTroubleTicketingCategories]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpDelTroubleTicketingCategories](@active int,@desc varchar(50),@Id int,@TTCategory varchar(50),@typegrpid int)
as
begin
insert into TroubleTicketingCategories values(@active,@desc,@Id,@TTCategory,@typegrpid)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdelStops]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsUpdelStops]
	-- Add the parameters for the stored procedure here
(@Id int,
      @Name varchar(30),
      @Description varchar(30),
      @Code varchar(10),
      @Active int,
      @insupdflag varchar(10))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	if @insupdflag='I'
INSERT INTO Stops
           (Name,
           [Description],
           Code,
           Active)
           values(@Name,
           @Description,
           @Code,
           @Active)
     
else

  if @insupdflag = 'U'
UPDATE Stops
   SET Name = @Name ,
      [Description] = @Description  ,
      Code = @Code ,
      Active = @Active 
 WHERE id=@id

else
  delete from stops where id = @id

END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelVehicleDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsUpdDelVehicleDetails](
	@busId money,
	@busTypeId int,
	@conductorId int,
	@conductorName varchar(50),
	@driverId int,
	@driverName varchar(50),
	@fleetOwnerId int,
	@CompanyName varchar(50),
	@Id int,
	@POSID int,
	@RegNo varchar(50),
	@route varchar(50),
	@Status varchar(50),
	@statusid int,
	@Active int = 1,
	 @insupdflag varchar(10)
)
AS
BEGIN
if @insupdflag = 'I'
INSERT INTO [POSDashboard].[dbo].[VehicleDetails]
           ([busId]
           ,[busTypeId]
           ,[conductorId]
           ,[conductorName]
           ,[driverId]
           ,[driverName]
           ,[fleetOwnerId]
           ,[CompanyName]
           ,[POSID]
           ,[RegNo]
           ,[route]
           ,[Status]
           ,[statusid]
           ,[Active])
     VALUES
           (@busId
           ,@busTypeId
           ,@conductorId
           ,@conductorName
           ,@driverId
           ,@driverName
           ,@fleetOwnerId
           ,@CompanyName
           ,@POSID
           ,@RegNo
           ,@route
           ,@Status
           ,@statusid
           ,@Active
  )         
else
 if @insupdflag = 'U' 
 UPDATE [POSDashboard].[dbo].[VehicleDetails]
   SET [busId] = @busId
      ,[busTypeId] = @busTypeId
      ,[conductorId] = @conductorId
      ,[conductorName] = @conductorName
      ,[driverId] = @driverId
      ,[driverName] = @driverName
      ,[fleetOwnerId] = @fleetOwnerId
      ,[CompanyName] = @CompanyName
      ,[POSID] = @POSID
      ,[RegNo] = @RegNo
      ,[route] = @route
      ,[Status] = Status
      ,[statusid] = @statusid
      ,[Active] = @Active
      WHERE Id = @Id
else
   delete from BTPOSDetails where Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTypes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTypes](@Id int,@Name varchar(50),@Description varchar(50),@TypeGroupId int,@Active varchar(50))
as
begin
insert into [Types] (Name,[Description],TypeGroupId,Active) values (@Name,@Description,@TypeGroupId,@Active)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTroubleTicketingHandlers]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTroubleTicketingHandlers](@handledOn int,@Id int,@status int,@TTId int,@userid int)
as
begin
insert into TroubleTicketingHandlers values(@handledOn,@Id,@status,@TTId,@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTroubleTicketingDevice]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTroubleTicketingDevice](@deviceid int,@Id int,@ticketTypeId int,@TTId int)
as
begin
insert into TroubleTicketingDevice values(@deviceid,@Id,@ticketTypeId,@TTId)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTroubleTicketingDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTroubleTicketingDetails](@addInfo varchar(50),@createdBy varchar(50),@createdOn int,@Id int,@raisedBy varchar(50),@status int,@ticketinfo varchar(50),@ticketTypeId int,@TTId int)
as
begin
insert into TroubleTicketingDetails (addInfo,createdBy,createdOn,raisedBy,status,ticketinfo,ticketTypeId,TTId) values(@addInfo,@createdBy,@createdOn,@raisedBy,@status,@ticketinfo,@ticketTypeId,@TTId)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTransactionTypes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTransactionTypes](@active int,@desc varchar(50),@Id int,@TransactionTypes varchar(50),@typegrpid int)
as
begin
insert into TransactionTypes values(@active,@desc,@Id,@TransactionTypes,@typegrpid)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTransactions]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTransactions]
(@Id int
,@barcode varchar(50)=''
,@BTPOSid varchar(50)
,@busNumber varchar(50)
,@busId int=''
,@change varchar(50)=''
,@company varchar(50)
,@companyId varchar(50)=''
,@ConductorId varchar(50)=''
,@ConductorName varchar(50)=''
,@Date datetime=''
,@destination varchar(50)=''
,@fare varchar(50)=''
,@greetingMessage varchar(50)
,@luggageType varchar(50)
,@passengerType varchar(50)
,@passengerId varchar(50)
,@paymentId varchar(50)=''
,@printdataId varchar(50)
,@route varchar(50)=''
,@routecode varchar(50)=''
,@routeId varchar(50)
,@source varchar(50)=''
,@time datetime
,@ticketHolderId varchar(50)=''
,@ticketHolderName  varchar(50)
,@TicketNumber  varchar(50)
,@ticketValidityPeriod  varchar(50)=''
,@totalamount int
,@amountpaid int
,@TransactionCode varchar(50)
,@TransactionId varchar(50)=''
,@transactionType varchar(50)
,@userid int
,@ChangeRendered varchar(50)='fgg')

as
begin	
insert into Transactions (barcode,BTPOSid,busNumber,
busId,change,company,companyId,ConductorId,ConductorName,
Date,destination,fare,greetingMessage,luggageType,
passengerType,passengerId,paymentId,printdataId,route,
routecode,routeId,source,time,ticketHolderId,
ticketHolderName,TicketNumber,ticketValidityPeriod,totalamount,amountpaid,
TransactionCode,TransactionId,transactionType,userid,ChangeRendered) values(@barcode,@BTPOSid,@busNumber,
@busId,@change,@company,@companyId,@ConductorId,@ConductorName,
@Date,@destination,@fare,@greetingMessage,@luggageType,
@passengerType,@passengerId,@paymentId,@printdataId,@route,
@routecode,@routeId,@source,@time,@ticketHolderId,
@ticketHolderName,@TicketNumber,@ticketValidityPeriod,@totalamount,@amountpaid,
@TransactionCode,@TransactionId,@transactionType,@userid,@ChangeRendered)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTransactionMaster]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTransactionMaster](@Id int,@TransCode varchar(50),@Date DateTime,@TransType varchar(50))
as
begin
insert into TransactionMaster values(@Id,@TransCode,@Date,@TransType)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTransactionDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTransactionDetails](@Id int,@TransId varchar(50),@TotalAmt int,@PaymentId varchar(50),@BTPOSid varchar(50))
as
begin
insert into TransactionDetails values(@Id,@TransId,@TotalAmt,@PaymentId,@BTPOSid)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelTicketGeneration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelTicketGeneration](@Source varchar(50),@Target varchar(50),@NoOfTickets int)
as
begin
insert into TicketGeneration values (@Source,@Target,@NoOfTickets)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelSMSEmailSubscribers]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelSMSEmailSubscribers](@AlertId int,@emailid varchar(50),@enddate datetime,@frequency int,@Id int,@phNo varchar(50),@startdate datetime,@userid int)
as
begin
insert into SMSEmailSubscribers values(@AlertId,@emailid,@enddate,@frequency,@Id,@phNo,@startdate,@userid)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelSMSEmailConfiguration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelSMSEmailConfiguration](@AlertTypeId int,@enddate datetime,@hashkey datetime,@Id int,@providername varchar(50),@pwd varchar(50),@saltkey datetime,@startdate datetime,@username varchar(50))
as
begin
insert into SMSEmailConfiguration values(@AlertTypeId,@enddate,@hashkey,@Id,@providername,@pwd,@saltkey,@startdate,@username)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRoutesConfiguration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelRoutesConfiguration](@distanceFromDest int,@distanceFromLastStop int,@distanceFromPrevStop int,@distanceFromSource int,@Id int,@routeId int,@stops varchar(50))
as
begin
insert into RoutesConfiguration values(@distanceFromDest,@distanceFromLastStop,@distanceFromPrevStop,@distanceFromSource,@Id,@routeId,@stops)
end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRoutes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
/****** Object:  StoredProcedure [dbo].[InsUpdDelRoutes]    Script Date: 05/02/2016 15:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[InsUpdDelRoutes](@Id int,@Route varchar(50),@Code varchar(50),@Source varchar(50),@Destination varchar(50),@Distance varchar(50))
as
begin
insert into Routes ([Route],Code,[Source],Destination,Distance) values(@Route,@Code,@Source,@Destination,@Distance)
end
/****** Object:  StoredProcedure [dbo].[InsUpdDelRouteFares]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
USE [POSDashboard]
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBlocklist]    Script Date: 05/02/2016 14:38:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE[dbo].[InsUpdDelELRouteFare](@Id numeric(20)
,
          @RouteId numeric(30),
          @VehicleType numeric(30),
          @SourceStopId varchar(30),
          @DestinationStopId numeric(30),
          @Distance varchar(30),
          @PerUnitPrice numeric(30),
          @Amount numeric(30),
          @FareType varchar(30),@Active int)
          
AS
BEGIN
	

INSERT INTO 
[RouteFare] VALUES
           ( 
            @RouteId,
            @VehicleType,
            @SourceStopId,
            @DestinationStopId,
            @Distance,
            @PerUnitPrice,
            @Amount,
            @FareType,@Active)
            
   

/****** Object:  StoredProcedure [dbo].[InsUpdDelRouteDetails]    Script Date: 05/02/2016 17:09:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Object:  StoredProcedure [dbo].[InsUpdDelRouteDetails]    Script Date: 04/13/2016 11:13:24 ******/


CREATE procedure [dbo].[InsUpdDelRouteDetails](@Id int,@RouteId varchar(50),@stopname varchar(50),@Description varchar(50)=null,@StopCode varchar(50),@DistanceFromSource int,@DistanceFromDestination int,@DistanceFromPreviousStop int,@DistanceFromNextStop int,@PreviousStopId int,@NextStopId int)
as
begin
insert into RouteDetails (RouteId,stopname,[Description],StopCode,DistanceFromSource,DistanceFromDestination,DistanceFromPreviousStop,DistanceFromNextStop,PreviousStopId,NextStopId) values(@RouteId,@stopname,@Description,@StopCode,@DistanceFromSource,@DistanceFromDestination,@DistanceFromPreviousStop,@DistanceFromNextStop,@PreviousStopId,@NextStopId)
end
select * from RouteDetails
GO

GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelRoles]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsUpdDelRoles](@Id int,@Name varchar(50)
,@Description varchar(50) = null,@Active varchar(50)
,@companyId int)
as
begin

update roles 
set Name = @name,
Description = @Description,
CompanyId = @companyId
where id = @Id

if @@rowcount = 0
begin
insert into Roles (Name,[Description],Active,companyid) 
values(@Name,@Description,@Active,@companyId)
end

end
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELmulitiplicationsave]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELmulitiplicationsave](@rows int,@columns int, @layoutId int)
AS
BEGIN
	

INSERT INTO 
[mulitiplicationsave] VALUES
           (@rows,
             @columns,
             @layoutId)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELLicenceStatus]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELLicenceStatus](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @LicenseStatusType varchar(30),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[LicenceStatus] VALUES
           (@Active,
           @Desc,
           @Id,
           @LicenseStatusType,
           @TypeGripId )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELLicenceCatergories]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELLicenceCatergories](@Active NUMERIC(10),
              
           @Desc Varchar(30),
           
           @Id numeric(10),
           @LicenseCategory varchar(30),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[LicenceCatergories] VALUES
           (@Active,
              
          
           @Desc,
           @Id,
           @LicenseCategory,
           @TypeGripId )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELCOUNTRY]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELCOUNTRY](@Id NUMERIC(10),
           @Name VARCHAR(50),   
           @Code VARCHAR(50),
           @Active VARCHAR(50))
AS
BEGIN
	

INSERT INTO 
[COUNTRY] VALUES
           (@Id,
           @Name,
           @Code
           ,@Active)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSSheduleUploads]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELBTPOSSheduleUploads](@Id NUMERIC(10),
              
           @POSID numeric(10),
           @UploadOn varchar(50),
           @UploadedOn varchar(50),
           @Status varchar(50),
           @UploadData varchar(50),
           @Ipconfig varchar(50))
AS
BEGIN
	

INSERT INTO 
[BTPOSSheduleUploads] VALUES
           (@Id,
              
           @POSID,
           @UploadOn,
           @UploadedOn,
           @Status,
           @UploadData,
           @Ipconfig )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSSecheduledUpdates]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE[dbo].[InsUpdDelELBTPOSSecheduledUpdates](@Id NUMERIC(10),
              
           @POSID numeric(10),
           @UploadOn varchar(50),
           @UploadedOn varchar(50),
           @Status varchar(50),
           @UploadData varchar(50),
           @Ipconfig varchar(50))
AS
BEGIN
	

INSERT INTO 
[BTPOSSecheduledUpdates] VALUES
           (@Id,
              
           @POSID,
           @UploadOn,
           @UploadedOn,
           @Status,
           @UploadData,
           @Ipconfig )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSRegistration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELBTPOSRegistration](@Id NUMERIC(10),
              
           @POSID numeric(10),
           @Status VARCHAR(50),
           @FleetOwenerId numeric(10),
           @RegisteredOn Varchar(50),
           @IpConfig varchar(50),
           @RegStatus varchar(50),
           @LincenseNo varchar(50),
           @ActivedOn varchar(50),
           @ExpiryDate varchar(50))
AS
BEGIN
	

INSERT INTO 
[BTPOSRegistration] VALUES
           (@Id,
              
           @POSID,
           @Status,
           @FleetOwenerId,
           @RegisteredOn,
           @IpConfig,
           @RegStatus,
           @LincenseNo,
           @ActivedOn,
           @ExpiryDate )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSRecords]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE[dbo].[InsUpdDelELBTPOSRecords](@Id NUMERIC(10),
              
           @BTPOSID numeric(10),
           @IpConfig varchar(50),
           @RecordData varchar(50))
AS
BEGIN
	

INSERT INTO 
[BTPOSRecords] VALUES
           (@Id,
              
           @BTPOSID,
           @Ipconfig,
           @RecordData)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSPortSettings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE[dbo].[InsUpdDelELBTPOSPortSettings](@Id NUMERIC(10),
              
           @BTPOSId numeric(10),
           @Ipconfig varchar(50))
AS
BEGIN
	

INSERT INTO 
[BTPOSPortSettings] VALUES
           (@Id,
              
           @BTPOSId,
           @Ipconfig)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSFaultsCatageries]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE[dbo].[InsUpdDelELBTPOSFaultsCatageries](@Active NUMERIC(10),
              
           @BTPOSFaultCategory Varchar(30),
           @Desc varchar(50),
           @Id numeric(10),
           @TypeGripId varchar(50))
AS
BEGIN
	

INSERT INTO 
[BTPOSFaultsCatageries] VALUES
           (@Active,
              
          @BTPOSFaultCategory,
           @Desc,
           @Id,
           @TypeGripId )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBTPOSAuditDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELBTPOSAuditDetails](@BTPOSId NUMERIC(10),
              
           @EditHistoryId numeric(10))
AS
BEGIN
	

INSERT INTO 
[BTPOSAuditDetails] VALUES
           (@BTPOSId,
              
           @EditHistoryId)
   
	END
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELBlocklist]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[InsUpdDelELBlocklist](@Id numeric(20)
,
           @ItemId NUMERIC(20),
           @ItemTypeId numeric(30),
           @Formdate varchar(50),
           @Todate varchar(50),
           @Active numeric(30),
           @Desc varchar(50),
           @Reason varchar(50),
           @Blockedby varchar(50),
           @UnBlockedby varchar(50),
           @Blockedon varchar(50),
           @UnBlockedon varchar(50))
AS
BEGIN
	

INSERT INTO 
[Blocklist] VALUES
           (@Id, 
          @ItemId,
           @ItemTypeId,
           @Formdate,
           @Todate,
           @Active,
           @Desc,
           @Reason,
           @Blockedby,
           @UnBlockedby,
           @Blockedon ,
           @UnBlockedon )
   
	END
GO
/****** Object:  StoredProcedure [dbo].[GetSMSProviderConfig]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetSMSProviderConfig]
AS
BEGIN
	
select * from SMSProviderConfig
end
GO
/****** Object:  StoredProcedure [dbo].[getSMSEmailSubscribers]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getSMSEmailSubscribers]
as
begin
select * from SMSEmailSubscribers
end
GO
/****** Object:  StoredProcedure [dbo].[getSMSEmailConfiguration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getSMSEmailConfiguration]
as
begin
select * from SMSEmailConfiguration
end
GO
/****** Object:  StoredProcedure [dbo].[getRoutesConfiguration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getRoutesConfiguration]
as
begin
select * from RoutesConfiguration
end
GO
/****** Object:  StoredProcedure [dbo].[getRoutes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getRoutes]
as
begin
select * from Routes
end
GO
/****** Object:  StoredProcedure [dbo].[GetRouteFare]    Script Date: 05/02/2016 14:46:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetRouteFare]
AS
BEGIN
	
SELECT 
      [Id]
      ,[RouteId]
      ,[VehicleType]
      ,[SourceStopId]
      ,[DestinationStopId]
      ,[Distance]
      ,[PerUnitPrice]
      ,[Amount]
      ,[FareType]
      ,[Active]
  FROM [POSDashboard].[dbo].[RouteFare]




end

/****** Object:  StoredProcedure [dbo].[getRouteDetails]    Script Date: 05/02/2016 17:05:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[getRouteDetails]
as
begin
SELECT [Id]
      ,[RouteId]
      ,[stopname]
      ,[Description]
      ,[StopCode]
      ,[DistanceFromSource]
      ,[DistanceFromDestination]
      ,[DistanceFromPreviousStop]
      ,[DistanceFromNextStop]
      ,[PreviousStopId]
      ,[NextStopId]
  FROM [POSDashboard].[dbo].[RouteDetails]
end

GO

/****** Object:  StoredProcedure [dbo].[GetRoles]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[GetRoles]
(@companyId int = -1)
as
begin
select Roles.Id, Roles.Name, Description, Roles.Active, companyid,c.Name Company
from Roles
inner join company c on c.id = roles.companyid
where (companyId = @companyId or @companyId = -1)
end
GO
/****** Object:  StoredProcedure [dbo].[GetRoleObjectAccesses]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRoleObjectAccesses] 	
@roleid int = -1
AS
BEGIN
	select t.name,t.ID accessid, o.Name  as objname, r.Name as rolename from Types t
inner join RoleObjectAccesses roa on roa.AccessId = t.Id
inner join Objects o on o.Id = roa.ObjectId
inner join Roles r on r.Id = roa.RoleId
where r.Id = @roleid or @roleid = -1

END
GO
/****** Object:  StoredProcedure [dbo].[GetZipCode]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetZipCode]
AS
BEGIN
	
select * from ZipCode
end
GO
/****** Object:  StoredProcedure [dbo].[getVehicleDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getVehicleDetails]
as
begin
select * from VehicleDetails
end
GO
/****** Object:  StoredProcedure [dbo].[GetUsertypeId]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetUsertypeId] (@UserTypeId int=-1)
as begin 
select * from Users
where UserTypeId=@UserTypeId or @UserTypeId=-1
end
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsers]
(@cmpId int = -1)
AS
BEGIN

SELECT users.[Id]
      ,[FirstName]
      ,[LastName]
      ,[UserTypeId]
      ,[EmpNo]
      ,[Email]
      ,[AddressId]
      ,[MobileNo]
      ,[RoleId]
      ,users.[Active]
      ,[MiddleName]
      ,ul.logininfo as UserName
      ,ul.passkey as [Password]
      ,t.Name as UserType
      ,r.Name as [Role]
      ,c.name as [Company]
  FROM [POSDashboard].[dbo].[Users] 
  inner join company c on (users.companyid = c.id)
  left outer join dbo.userlogins ul on ul.userid = Users.id
  left outer join Roles r on r.Id = Users.RoleId
  left outer join Types t on t.Id = Users.UserTypeId
  where (c.id = @cmpid or   @cmpid = -1)
end
GO
/****** Object:  StoredProcedure [dbo].[GetTypesByGroupId]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTypesByGroupId]
@typegrpid int = -1
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	 
	  where (TypeGroupId = @typegrpid or @typegrpid = -1)
END
GO
/****** Object:  StoredProcedure [dbo].[getTypes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTypes]

as
begin
SELECT t.Id, t.Name, t.[Description],t.Active, tg.name as TypeGroup, TypeGroupId, listkey, listvalue
	 from [Types] t
	 inner join TypeGroups tg on tg.Id = t.TypeGroupId	

END
GO
/****** Object:  StoredProcedure [dbo].[getTypeGroups]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTypeGroups]
as
begin
select * from TypeGroups
end
GO
/****** Object:  StoredProcedure [dbo].[GetTroubleTicketingStatus]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetTroubleTicketingStatus]
AS
BEGIN
	
select * from TroubleTicketingStatus
end
GO
/****** Object:  StoredProcedure [dbo].[GetTroubleTicketingSlaType]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetTroubleTicketingSlaType]
AS
BEGIN
	
select * from TroubleTicketingSlaType
end
GO
/****** Object:  StoredProcedure [dbo].[getTroubleTicketingHandlers]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTroubleTicketingHandlers]
as
begin
select * from TroubleTicketingHandlers
end
GO
/****** Object:  StoredProcedure [dbo].[getTroubleTicketingDevice]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTroubleTicketingDevice]
as
begin
select * from TroubleTicketingDevice
end
GO
/****** Object:  StoredProcedure [dbo].[getTroubleTicketingDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTroubleTicketingDetails]
as
begin
select * from TroubleTicketingDetails
end
GO
/****** Object:  StoredProcedure [dbo].[getTroubleTicketingCategories]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTroubleTicketingCategories]
as
begin
select * from TroubleTicketingCategories
end
GO
/****** Object:  StoredProcedure [dbo].[getTransactionTypes]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTransactionTypes]
as
begin
select * from TransactionTypes
end
GO
/****** Object:  StoredProcedure [dbo].[getTransactions]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTransactions]
as
begin
select * from Transactions
end
GO
/****** Object:  StoredProcedure [dbo].[getTransactionMaster]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTransactionMaster]
as
begin
select * from TransactionMaster
end
GO
/****** Object:  StoredProcedure [dbo].[getTransactionDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getTransactionDetails]
as
begin
select * from TransactionDetails
end
GO
/****** Object:  StoredProcedure [dbo].[getTicketGeneration]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getTicketGeneration]
as
begin
select * from TicketGeneration
end
GO
/****** Object:  StoredProcedure [dbo].[Gettable2]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Gettable2]
AS
BEGIN
	
select * from table2
end
GO
/****** Object:  StoredProcedure [dbo].[GetSubCategories]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSubCategories] 
(@catid int =-1)	
AS
BEGIN
	
	SELECT S.[Id]
      ,S.[Name]
      ,S.[Description]
      ,[CategoryId]
      ,t.NAME CATEGORY
      ,S.[Active]
  FROM [POSDashboard].[dbo].[SubCategory] S
  INNER JOIN Types T ON T.ID = S.CATEGORYID
  INNER JOIN TypeGroups TG ON TG.Id = T.TypeGroupId 
  where (S.CATEGORYID = @catid or @catid = -1)
   	
END
GO
/****** Object:  StoredProcedure [dbo].[GetStops]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetStops]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Code]
      ,[Active]
  FROM [POSDashboard].[dbo].[Stops]




END
GO
/****** Object:  StoredProcedure [dbo].[getRegistrationBTPOS]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getRegistrationBTPOS]
as
begin
select * from RegistrationBTPOS
end
GO
/****** Object:  StoredProcedure [dbo].[Getregister]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Getregister]
as begin
select * from register
end
GO
/****** Object:  StoredProcedure [dbo].[GetReceivingsMaster]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetReceivingsMaster]
AS
BEGIN
	
select * from ReceivingsMaster
end
GO
/****** Object:  StoredProcedure [dbo].[GetReceivings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetReceivings]
AS
BEGIN
	
select * from Receivings
end
GO
/****** Object:  StoredProcedure [dbo].[GetPOSDetails]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPOSDetails]
AS
BEGIN

SELECT t.[Id]
      ,[POSId]
      ,[Status]
      ,g.GroupName
      ,g.Id
      ,[Location]
  FROM [POSDashboard].[dbo].[POSTerminal] t
  inner join dbo.Groups g on g.Id = t.GroupId

END
GO
/****** Object:  StoredProcedure [dbo].[getPayments]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getPayments]
as
begin
select * from Payment
end
GO
/****** Object:  StoredProcedure [dbo].[getPaymentReceivings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getPaymentReceivings]
as
begin
select * from PaymentReceivings
end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentGatewayType]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetPaymentGatewayType]
AS
BEGIN
	
select * from PaymentGatewayType
end
GO
/****** Object:  StoredProcedure [dbo].[getPaymentGatewaySettings]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getPaymentGatewaySettings]
as
begin
select * from PaymentGatewaySettings
end
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentCatergory]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetPaymentCatergory]
AS
BEGIN
	
select * from PaymentCatergory
end
GO
/****** Object:  StoredProcedure [dbo].[GetPayablesMaster]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPayablesMaster]
AS
BEGIN
	
select * from PayablesMaster
end
GO
/****** Object:  StoredProcedure [dbo].[getObjects]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getObjects](@objid int = -1)
as
begin
declare @oid int
set @oid = @objid

select  o.Id, o.Name, o.Description, Path,active 
from Objects o
where o.Id = @objid or @objid = -1

select t.name,t.ID from Types t
inner join ObjectAccesses oa on oa.AccessId = t.Id
inner join Objects o on o.Id = oa.ObjectId
where  o.Id = @objid or @objid = -1
end
GO
/****** Object:  StoredProcedure [dbo].[GetObjectAccesses]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetObjectAccesses] 	
AS
BEGIN
	select t.name,t.ID accessid, o.Name as objname from Types t
inner join ObjectAccesses oa on oa.AccessId = t.Id
inner join Objects o on o.Id = oa.ObjectId
END
GO
/****** Object:  StoredProcedure [dbo].[Getmulitiplicationsave]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Getmulitiplicationsave]
AS
BEGIN
	
select * from mulitiplicationsave
end
GO
/****** Object:  StoredProcedure [dbo].[Get TroubleTicketingSlaType]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Get TroubleTicketingSlaType]
AS
BEGIN
	
select * from TroubleTicketingSlaType
end
GO
/****** Object:  StoredProcedure [dbo].[Get LicenceCatergories]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Get LicenceCatergories]
AS
BEGIN
	
select * from LicenceCatergories
end
GO
/****** Object:  StoredProcedure [dbo].[getmenu]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getmenu]
as
begin
select * from menu
end
GO
/****** Object:  StoredProcedure [dbo].[getloginpage]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[getloginpage]
as
begin
select * from loginpage	
end
GO
/****** Object:  StoredProcedure [dbo].[getLicensePayments]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getLicensePayments]
as
begin
select * from LicensePayments
end
GO
/****** Object:  StoredProcedure [dbo].[GetLicenceStatus]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLicenceStatus]
AS
BEGIN
	
select * from LicenceStatus
end
GO
/****** Object:  StoredProcedure [dbo].[GetLicenceCatergories]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetLicenceCatergories]
AS
BEGIN
	
select * from LicenceCatergories
end
GO
/****** Object:  StoredProcedure [dbo].[GetInventorySubCategories]    Script Date: 04/21/2016 09:02:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetInventorySubCategories] 	
AS
BEGIN
	
	SELECT S.[Id]
      ,S.[Name]
      ,S.[Description]
      ,[CategoryId]
      ,t.NAME CATEGORY
      ,S.[Active]
  FROM [POSDashboard].[dbo].[SubCategory] S
  INNER JOIN Types T ON T.ID = S.CATEGORYID
  INNER JOIN TypeGroups TG ON TG.Id = T.TypeGroupId AND TG.ID = 1
   



	
END
GO
/****** Object:  StoredProcedure [dbo].[GetInventorySales]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInventorySales]
As
BEGIN
SELECT [Id]
      ,[ItemName]
      ,[Quantity]
      ,[PerUnitPrice]
      ,[PurchaseDate]
      ,[InVoiceNumber]
  FROM [POSDashboard].[dbo].[InventorySales]



	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
END
GO
/****** Object:  StoredProcedure [dbo].[getInventoryReceivings]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getInventoryReceivings]
as
begin
select * from InventoryReceivings
end
GO
/****** Object:  StoredProcedure [dbo].[GetInventoryPurchases]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInventoryPurchases]
as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id]
      ,[ItemName]
      ,[Quantity]
      ,[PerUnitPrice]
      ,[PurchaseDate]
      ,[PurchaseOrderNumber]
  FROM [POSDashboard].[dbo].[InventoryPurchases]



END
GO
/****** Object:  StoredProcedure [dbo].[getInventory]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getInventory]
as
begin
select * from Inventory
end
GO
/****** Object:  StoredProcedure [dbo].[getFleetOwner]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getFleetOwner]
as
begin
select * from FleetOwner
end
GO
/****** Object:  StoredProcedure [dbo].[getFares]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getFares]
as
begin
select * from Fares
end
GO
/****** Object:  StoredProcedure [dbo].[getExpenses]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getExpenses]
as
begin
select * from Expenses
end
GO
/****** Object:  StoredProcedure [dbo].[getEditHistoryDetails]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getEditHistoryDetails]
as
begin
select * from EditHistoryDetails
end
GO
/****** Object:  StoredProcedure [dbo].[getEditHistory]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getEditHistory]
as
begin
select * from EditHistory
end
GO
/****** Object:  StoredProcedure [dbo].[GetDashboardDetails]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetDashboardDetails]
as
begin
--
--select p.Id ,Name as GroupName, POSId, IMEI 
--from BTPOSDetails p
--inner join CompanyGroups c on c.Id = p.GroupId

select * from CompanyGroups

select * from Users
end
GO
/****** Object:  StoredProcedure [dbo].[GetCOUNTRY]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCOUNTRY]
AS
BEGIN
	
select * from COUNTRY
end
GO
/****** Object:  StoredProcedure [dbo].[getCompanies]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getCompanies]
(@userid int =-1)
as
begin
SELECT distinct c.[active]
      ,[code]
      ,[desc]
      ,c.[Id]
      ,[Name]
  FROM [POSDashboard].[dbo].[Company] c
  inner join Users u on  u.companyId = c.id
  where (u.id = @userid or @userid = -1)
  
end

--delete from CompanyGroups
--select * from company

--[getCompanies] 1
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSSheduleUploads]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBTPOSSheduleUploads]
AS
BEGIN
	
select * from [BTPOSSheduleUploads]
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSSecheduledUpdates]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetBTPOSSecheduledUpdates]
AS
BEGIN
	
select * from BTPOSSecheduledUpdates
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSRegistration]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetBTPOSRegistration]
AS
BEGIN
	
select * from BTPOSRegistration
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSRecords]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetBTPOSRecords]
AS
BEGIN
	
select * from  BTPOSRecords
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSPortSettings]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetBTPOSPortSettings]
AS
BEGIN
	
select * from BTPOSPortSettings
end
GO
/****** Object:  StoredProcedure [dbo].[getBTPOSInventorySales]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[getBTPOSInventorySales]
as
begin
select * from BTPOSInventorySales
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSFaultsCatageries]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetBTPOSFaultsCatageries]
AS
BEGIN
	
select * from BTPOSFaultsCatageries
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSDetails]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBTPOSDetails]
AS
BEGIN
	
SELECT b.[Id]
     -- ,[GroupId]
    --  ,c.Name as companyname
      ,[POSID]
      ,[StatusId]
      ,t.Name as [status]
      ,[IMEI]
      ,[ipconfig]
      ,b.[active]
      ,u.FirstName + ' '+ u.LastName as fleetowner
      ,u.Id as fleetownerid
  FROM [POSDashboard].[dbo].[BTPOSDetails] b
  left outer join Types t on t.Id = statusid
  --left outer join CompanyGroups c on c.Id = GroupId
  left outer join Users u on u.Id = FleetOwnerId
  
end
GO
/****** Object:  StoredProcedure [dbo].[GetBTPOSAuditDetails]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetBTPOSAuditDetails]
AS
BEGIN
	
select * from BTPOSAuditDetails
end
GO
/****** Object:  StoredProcedure [dbo].[GetBlockList]    Script Date: 04/21/2016 09:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBlockList]
AS
BEGIN
	
select * from Blocklist
end
GO

USE [POSDashboard]
GO
/****** Object:  Table [dbo].[InventoryItem]    Script Date: 04/26/2016 16:43:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventoryItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Category] [varchar](50) NOT NULL,
	[SubCategory] [varchar](50) NOT NULL,
	[ReOrderPoint] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsupdDelInventoryItem]    Script Date: 04/26/2016 16:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsupdDelInventoryItem]
(@Id int,
@ItemName varchar(50),
@Code varchar(50),
@Description varchar(50),
@Category varchar(50),
@SubCategory varchar(50),
@ReOrderPoint int)
as 
begin
insert into InventoryItem
(Id,ItemName,Code,[Description],Category,SubCategory,ReOrderPoint)values
(@Id,@ItemName,@Code,@Description,@Category,@SubCategory,@ReOrderPoint)
end
GO
/****** Object:  StoredProcedure [dbo].[GetInventoryItem]    Script Date: 04/26/2016 16:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetInventoryItem]
as 
begin
SELECT I.[Id]
      ,[ItemName]
      ,[Code]
      ,I.[Description]
      ,[Category]
      ,[SubCategory]
      ,[ReOrderPoint]
  FROM [POSDashboard].[dbo].[InventoryItem]I

 INNER JOIN SubCategory s  ON s.Name = I.SubCategory
  
end
GO
USE [POSDashboard]
GO

/****** Object:  Table [dbo].[InventorySales]    Script Date: 04/27/2016 17:46:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[InventorySales](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[PurchaseDate] [varchar](50) NOT NULL,
	[InVoiceNumber] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [POSDashboard]
GO

/****** Object:  Table [dbo].[InventoryPurchases]    Script Date: 04/27/2016 17:47:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[InventoryPurchases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[PurchaseDate] [varchar](50) NOT NULL,
	[PurchaseOrderNumber] [int] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [POSDashboard]
GO
/****** Object:  StoredProcedure [dbo].[GetInventoryPurchases]    Script Date: 04/27/2016 17:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetInventoryPurchases]
as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Id]
      ,[ItemName]
      ,[Quantity]
      ,[PerUnitPrice]
      ,[PurchaseDate]
      ,[PurchaseOrderNumber]
  FROM [POSDashboard].[dbo].[InventoryPurchases]



END

GO
/****** Object:  StoredProcedure [dbo].[GetInventorySales]    Script Date: 04/27/2016 17:48:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[GetInventorySales]
As
BEGIN
SELECT sl.[Id]
      ,sl. ItemName
      ,sl.[Quantity]
      ,sl.PerUnitPrice
      ,sl.[PurchaseDate]
      ,sl.[InVoiceNumber]
  FROM [POSDashboard].[dbo].[InventorySales] sl
  


 


	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
END



/****** Object:  StoredProcedure [dbo].[InsupddelInventorySales]    Script Date: 04/27/2016 17:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsupddelInventorySales] (@Id int,@ItemName varchar(50),@Quantity int,@PerUnitPrice int,@PurchaseDate varchar(50),@InVoiceNumber int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	INSERT INTO [POSDashboard].[dbo].[InventorySales]
           ([ItemName]
           ,[Quantity]
           ,[PerUnitPrice]
           ,[PurchaseDate]
           ,[InVoiceNumber])
     VALUES
    (@ItemName,@Quantity,@PerUnitPrice,@PurchaseDate,@InVoiceNumber)




END

GO
/****** Object:  StoredProcedure [dbo].[InsupdInventoryPurchases]    Script Date: 04/27/2016 17:49:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[InsupdInventoryPurchases]  (@Id int,@ItemName varchar(50)
           ,@Quantity int
           ,@PerUnitPrice int 
           ,@PurchaseDate varchar(50)
           ,@PurchaseOrderNumber int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	INSERT INTO [POSDashboard].[dbo].[InventoryPurchases]
           ([ItemName]
           ,[Quantity]
           ,[PerUnitPrice]
           ,[PurchaseDate]
           ,[PurchaseOrderNumber])
     VALUES
           (@ItemName
           ,@Quantity
           ,@PerUnitPrice
           ,@PurchaseDate
           ,@PurchaseOrderNumber)

END
/****** Object:  StoredProcedure [dbo].[Get Alerts]    Script Date: 04/28/2016 11:12:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetAlerts]
AS
BEGIN
	
select * from Alerts
end
GO
/****** Object:  StoredProcedure [dbo].[Get Notifications]    Script Date: 04/28/2016 11:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetNotifications]
AS
BEGIN
	
select * from Notifications
end


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDLAlerts]    Script Date: 04/28/2016 11:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE[dbo].[InsUpdDLAlerts](@Id Numeric
,
           @Date varchar(50),
           @Message VARCHAR(50),
           @MessageType varchar(50),
           @MessageTypeId varchar(50),
           @Status varchar(50))
AS
BEGIN
	

INSERT INTO 
[Alerts] VALUES
           (@Id, 
          @Date,
           @Message,
           @MessageType,
           @MessageTypeId,
           @Status)
   
	END


GO
/****** Object:  StoredProcedure [dbo].[InsUpdDLNotifications]    Script Date: 04/28/2016 11:14:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE[dbo].[InsUpdDLNotifications](@Id Numeric
,
           @Date varchar(50),
           @Message VARCHAR(50),
           @MessageType varchar(50),
           @MessageTypeId varchar(50),
           @Status varchar(50))
AS
BEGIN
	

INSERT INTO 
[Notifications] VALUES
           (@Id, 
          @Date,
           @Message,
           @MessageType,
           @MessageTypeId,
           @Status)
   
	END
/****** Object:  Table [dbo].[FleetBtpos]    Script Date: 04/29/2016 18:31:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FleetBtpos](
	[Id] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[From] [datetime] NOT NULL,
	[To] [datetime] NOT NULL
) ON [PRIMARY]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FleetDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleRegNo] [int] NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[FleetOwnerId] [varchar](50) NOT NULL,
	[CompanyId] [varchar](50) NOT NULL,
	[ServiceTypeId] [varchar](50) NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FleetRoutes]    Script Date: 04/29/2016 18:32:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FleetRoutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[EffectiveFrom] [datetime] NOT NULL,
	[EffectiveTill] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[FleetStaff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffRole] [varchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[From] [datetime] NOT NULL,
	[To] [datetime] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetFleetDetails]    Script Date: 04/29/2016 18:33:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFleetDetails] 
	-- Add the parameters for the stored procedure here
	(@vehicleId int=-1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT v.[Id]
      ,[VehicleRegNo]
      ,t.[Name] as VehicleType,
       t.Name as ServiceType,
       f.Id as FleetOwnerName 
      ,c.[Name] as CompanyName
      ,v.[Active]
     FROM [POSDashboard].[dbo].[FleetDetails]v
    inner join Types t on t.Id=v.Id
    inner join company c on c.Id=v.Id
    inner join FleetOwner f on f.Id=v.Id
	 where  (v.Id= @vehicleId or @vehicleId = -1)




   
    -- Insert statements for procedure here
    
    
--SELECT t.[Id]
--      ,t.[Name] as VehicleType,
--      t.[Name] as ServiceType
--      ,t.[Active]
      
--      ,f.[Id] as FleetName 
--         ,c.[Name] as CompanyName
--  FROM [POSDashboard].[dbo].[Types]t   
--	 inner join company c on c.Id=t.Id
--	 inner join FleetOwner f on f.Id=t.Id
--	 where  (t.Id= @vehicleId or @vehicleId = -1)




END

GO


/****** Object:  StoredProcedure [dbo].[GetFleetBtpos]    Script Date: 04/29/2016 18:34:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFleetBtpos] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
SELECT [Id]
      ,[VehicleId]
      ,[From]
      ,[To]
  FROM [POSDashboard].[dbo].[FleetBtpos]




	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
END

GO
/****** Object:  StoredProcedure [dbo].[GetfleetRoutes]    Script Date: 04/29/2016 18:40:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetfleetRoutes]
(@RouteId int=-1)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT R.[Id]
      ,F.[VehicleRegNo] as VehicleName
      ,rt.[Route]  as RouteName
      ,[EffectiveFrom]
      ,[EffectiveTill]
  FROM [POSDashboard].[dbo].[FleetRoutes] R
  inner join  FleetDetails F on F.VehicleRegNo=R.Id
  inner join Routes rt on rt.Id=R.Id




    -- Insert statements for procedure here
END

GO




/****** Object:  StoredProcedure [dbo].[InsupdelFleetDetails]    Script Date: 04/29/2016 18:41:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsupdelFleetDetails]
 (@VehicleRegNo int
           ,@VehicleTypeId int
           ,@FleetOwnerId varchar(50)
           ,@CompanyId varchar(50)
           ,@ServiceTypeId varchar(50)
           ,@Active int)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	INSERT INTO [POSDashboard].[dbo].[FleetDetails]
           ([VehicleRegNo]
           ,[VehicleTypeId]
           ,[FleetOwnerId]
           ,[CompanyId]
           ,[ServiceTypeId]
           ,[Active])
     VALUES
           (@VehicleRegNo 
           ,@VehicleTypeId 
           ,@FleetOwnerId 
           ,@CompanyId 
           ,@ServiceTypeId 
           ,@Active )




END

GO


/****** Object:  StoredProcedure [dbo].[insupdelFleetRoutes]    Script Date: 04/29/2016 18:41:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insupdelFleetRoutes]
(@VehicleId int,@RouteId int,@EffectiveFrom datetime,@EffectiveTill datetime)
	-- Add the parameters for the stored procedure here	
AS
BEGIN
INSERT INTO [POSDashboard].[dbo].[FleetRoutes]
           ([VehicleId]
           ,[RouteId]
           ,[EffectiveFrom]
           ,[EffectiveTill])
     VALUES
           (@VehicleId
           ,@RouteId
           ,@EffectiveFrom
           ,@EffectiveTill)
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;





    -- Insert statements for procedure here
END

GO
/****** Object:  Table [dbo].[FleetAvailability]    Script Date: 04/30/2016 14:40:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FleetAvailability](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle] [nvarchar](50) NOT NULL,
	[ServiceType] [nvarchar](50) NOT NULL,
	[FromDate] [datetime] NOT NULL,
	[ToDate] [datetime] NULL
) ON [PRIMARY]

GO


/****** Object:  StoredProcedure [dbo].[GetFleetAvailability]    Script Date: 04/30/2016 14:40:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[GetFleetAvailability]
as
begin
select * from FleetAvailability
end
GO

/****** Object:  StoredProcedure [dbo].[InsUpdDelFleetAvailability]    Script Date: 04/30/2016 14:41:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[InsUpdDelFleetAvailability]
(@Id int,@Vehicle varchar(50),@ServiceType varchar(50),@FromDate datetime,@ToDate datetime=null)
as
begin
Insert into FleetAvailability(Vehicle,ServiceType,FromDate,ToDate)values(@Vehicle,@ServiceType,@FromDate,@ToDate)
end

/****** Object:  Table [dbo].[FleetOwnerRouteStop]    Script Date: 05/02/2016 16:31:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FleetOwnerRouteStop](
	[FleetOwnerId] [int] NOT NULL,
	[RouteId] [int] NULL,
	[StopId] [int] NULL,
	[StopNo] [int] NULL,
	[PreviousStop] [nvarchar](50) NULL,
	[NextStop] [nvarchar](50) NULL,
	[Active] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[GetFleetOwnerRouteStop]    Script Date: 05/02/2016 16:32:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetFleetOwnerRouteStop]
AS
BEGIN
	
SELECT 
      [Id],
      [FleetOwnerId],
      [RouteId],
      [StopNo],
      [PreviousStop],
      [NextStop],
      [Active],
      [StopId]
   
      
  FROM [POSDashboard].[dbo].[FleetOwnerRouteStop]




end
/****** Object:  StoredProcedure [dbo].[InsUpdDelELRouteStops]    Script Date: 05/02/2016 16:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Alter PROCEDURE[dbo].[InsUpdDelELRouteStops](@Id numeric(30),
           @RouteId numeric(30),
           @StopId numeric(30),
           @StopNo numeric(30),
           @PreviousStop varchar(50),
           @NextStop varchar(50),
           @PreviousStopId numeric(30),
           @NextStopId numeric(30),
           @DistanceFromNextStop varchar(50),
           @DistanceFromPrevoiusStop varchar(50),
           @Active numeric(30))
AS
BEGIN
	

INSERT INTO 
[RouteStops] VALUES
           ( 
          @RouteId,
           @StopId,
         @StopNo,
         @PreviousStop,
         @NextStop,
         @PreviousStopId,
         @NextStopId,
         @DistanceFromNextStop,
         @DistanceFromPrevoiusStop,
          @Active)
   
	END


	
/****** Object:  Table [dbo].[FleetOwnerRouteFare]    Script Date: 05/02/2016 16:33:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FleetOwnerRouteFare](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[VehicleType] [nvarchar](50) NOT NULL,
	[SourceStopId] [int] NOT NULL,
	[DestinationStopId] [int] NOT NULL,
	[Distance] [nvarchar](50) NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[FareType] [nvarchar](50) NOT NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[GetFleetOwnerRouteFare]    Script Date: 05/02/2016 16:34:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetFleetOwnerRouteFare]
AS
BEGIN
	
SELECT 
      [Id],
      [RouteId],
      [VehicleType],
      [SourceStopId],
      [DestinationStopId],
      [Distance],
      [PerUnitPrice],
      [Amount],
      [CompanyId],
      [FleetOwnerId],
      [FareType],
      [Active]
   
      
  FROM [POSDashboard].[dbo].[FleetOwnerRouteFare]




end

/****** Object:  StoredProcedure [dbo].[InsUpdDelFleetOwnerRouteFare]    Script Date: 05/02/2016 16:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsUpdDelFleetOwnerRouteFare](@Id numeric(30),
                        @RouteId numeric(30),
                        @VehicleType varchar(30),
                        @SourceStopId numeric(30),
                        @DestinationStopId numeric(30),
                        @Distance varchar(30),
                        @PerUnitPrice numeric(30),
                        @Amount numeric(30),
                        @CompanyId numeric(30),
                        @FleetOwnerId numeric(30),
                        @FareType varchar(30),
                        @Active numeric(30)
                       )
                        
as
begin
insert into FleetOwnerRouteFare values(
                          @RouteId,
                          @VehicleType,
                          @SourceStopId,
                          @DestinationStopId,
                          @Distance,
                          @PerUnitPrice,
                          @Amount,
                         @CompanyId,
                         @FleetOwnerId,
                         @FareType,
                         @Active)
                        
end
/****** Object:  Table [dbo].[FleetOwnerRoute]    Script Date: 05/02/2016 17:11:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FleetOwnerRoute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[From] [nvarchar](50) NOT NULL,
	[To] [nvarchar](50) NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]

GO

/****** Object:  StoredProcedure [dbo].[GetFleetOwnerRoute]    Script Date: 05/02/2016 17:11:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetFleetOwnerRoute]
AS
BEGIN
	
SELECT 
      [Id],
      [FleetOwnerId],
      [CompanyId],
      [RouteId],
      [From],
      [To],
      [Active]
      
  FROM [POSDashboard].[dbo].[FleetOwnerRoute]




end
GO
GO
/****** Object:  StoredProcedure [dbo].[InsUpdDelELFleetOwnerRoute]    Script Date: 05/02/2016 16:09:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE[dbo].[InsUpdDelELFleetOwnerRoute](@Active numeric(30),
          @Id numeric(30),
          @FleetOwnerId numeric(30),
          @CompanyId numeric(30),
          @RouteId numeric(30),
          @From varchar(50),
          @To varchar(50))
AS
BEGIN
	

INSERT INTO 
[FleetOwnerRoute] VALUES
           (@Active,
          @FleetOwnerId,
          @CompanyId,
          @RouteId,
          @From,
          @To)
          
	END