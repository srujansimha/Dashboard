USE [POSDashboard]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 02/07/2017 09:54:36 ******/
DROP TABLE [dbo].[Address]
GO
/****** Object:  Table [dbo].[Alerts]    Script Date: 02/07/2017 09:54:36 ******/
DROP TABLE [dbo].[Alerts]
GO
/****** Object:  Table [dbo].[AlertsConfiguration]    Script Date: 02/07/2017 09:54:36 ******/
DROP TABLE [dbo].[AlertsConfiguration]
GO
/****** Object:  Table [dbo].[Authentication]    Script Date: 02/07/2017 09:54:36 ******/
DROP TABLE [dbo].[Authentication]
GO
/****** Object:  Table [dbo].[Blocklist]    Script Date: 02/07/2017 09:54:36 ******/
DROP TABLE [dbo].[Blocklist]
GO
/****** Object:  Table [dbo].[BookedSeats]    Script Date: 02/07/2017 09:54:36 ******/
DROP TABLE [dbo].[BookedSeats]
GO
/****** Object:  Table [dbo].[BookedTicket]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BookedTicket]
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BookingDetails]
GO
/****** Object:  Table [dbo].[BookingPaymentDetails]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BookingPaymentDetails]
GO
/****** Object:  Table [dbo].[BTPOSAuditDetails]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSAuditDetails]
GO
/****** Object:  Table [dbo].[BTPOSDetails]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSDetails]
GO
/****** Object:  Table [dbo].[BTPOSFaultsCatageries]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSFaultsCatageries]
GO
/****** Object:  Table [dbo].[BTPOSInventorySales]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSInventorySales]
GO
/****** Object:  Table [dbo].[BTPOSLogin]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSLogin]
GO
/****** Object:  Table [dbo].[BTPOSMonitoring]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSMonitoring]
GO
/****** Object:  Table [dbo].[BTPOSPortSettings]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSPortSettings]
GO
/****** Object:  Table [dbo].[BTPOSRecords]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSRecords]
GO
/****** Object:  Table [dbo].[BTPOSRegistration]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSRegistration]
GO
/****** Object:  Table [dbo].[BTPOSSecheduledUpdates]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSSecheduledUpdates]
GO
/****** Object:  Table [dbo].[BTPOSSheduleUploads]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSSheduleUploads]
GO
/****** Object:  Table [dbo].[BTPOSTransactions]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[BTPOSTransactions]
GO
/****** Object:  Table [dbo].[Carousel]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[Carousel]
GO
/****** Object:  Table [dbo].[CartPaymentDetails]    Script Date: 02/07/2017 09:54:37 ******/
DROP TABLE [dbo].[CartPaymentDetails]
GO
/****** Object:  Table [dbo].[checkout]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[checkout]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[CompanyRoles]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[CompanyRoles]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 02/07/2017 09:54:38 ******/
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF_Country_HasOperations]
GO
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[EditHistory]
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[EditHistoryDetails]
GO
/****** Object:  Table [dbo].[Ex_Availableseats]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[Ex_Availableseats]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[Expenses]
GO
/****** Object:  Table [dbo].[Fares]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[Fares]
GO
/****** Object:  Table [dbo].[FleetAvailability]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetAvailability]
GO
/****** Object:  Table [dbo].[FleetBtpos]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetBtpos]
GO
/****** Object:  Table [dbo].[FleetDetails]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetDetails]
GO
/****** Object:  Table [dbo].[FleetOwner]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetOwner]
GO
/****** Object:  Table [dbo].[FleetOwnerRequest]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetOwnerRequest]
GO
/****** Object:  Table [dbo].[FleetOwnerRequestDetails]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetOwnerRequestDetails]
GO
/****** Object:  Table [dbo].[FleetOwnerRoute]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetOwnerRoute]
GO
/****** Object:  Table [dbo].[FleetOwnerRouteFare]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetOwnerRouteFare]
GO
/****** Object:  Table [dbo].[FleetOwnerRouteStop]    Script Date: 02/07/2017 09:54:38 ******/
DROP TABLE [dbo].[FleetOwnerRouteStop]
GO
/****** Object:  Table [dbo].[FleetOwnerStops]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FleetOwnerStops]
GO
/****** Object:  Table [dbo].[FleetOwnerVehicleLayOut]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FleetOwnerVehicleLayOut]
GO
/****** Object:  Table [dbo].[FleetRoutes]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FleetRoutes]
GO
/****** Object:  Table [dbo].[FleetScheduleList]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FleetScheduleList]
GO
/****** Object:  Table [dbo].[FleetStaff]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FleetStaff]
GO
/****** Object:  Table [dbo].[FORouteFare]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FORouteFare]
GO
/****** Object:  Table [dbo].[FORouteFleetSchedule]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[FORouteFleetSchedule]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[Index]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[Inventory]
GO
/****** Object:  Table [dbo].[InventoryItem]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[InventoryItem]
GO
/****** Object:  Table [dbo].[InventoryPurchases]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[InventoryPurchases]
GO
/****** Object:  Table [dbo].[InventoryReceivings]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[InventoryReceivings]
GO
/****** Object:  Table [dbo].[InventorySales]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[InventorySales]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[Invoices]
GO
/****** Object:  Table [dbo].[LicenceCatergories]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[LicenceCatergories]
GO
/****** Object:  Table [dbo].[LicenceStatus]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[LicenceStatus]
GO
/****** Object:  Table [dbo].[LicenseBTPOS]    Script Date: 02/07/2017 09:54:39 ******/
DROP TABLE [dbo].[LicenseBTPOS]
GO
DROP TABLE [dbo].[LicenseDetails]
GO
/****** Object:  Table [dbo].[LicenseKeyFile]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[LicenseKeyFile]
GO
/****** Object:  Table [dbo].[LicensePayments]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[LicensePayments]
GO
/****** Object:  Table [dbo].[LicensePricing]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[LicensePricing]
GO
/****** Object:  Table [dbo].[LicenseTypes]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[LicenseTypes]
GO
/****** Object:  Table [dbo].[loginpage]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[loginpage]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[menu]
GO
/****** Object:  Table [dbo].[mulitiplicationsave]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[mulitiplicationsave]
GO
/****** Object:  Table [dbo].[NotificationConfiguration]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[NotificationConfiguration]
GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[Notifications]
GO
/****** Object:  Table [dbo].[ObjectAccesses]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[ObjectAccesses]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 04/08/2017 16:41:42 ******/
DROP TABLE [dbo].[Objects]
GO
/****** Object:  Table [dbo].[PassengerDetails]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PassengerDetails]
GO
/****** Object:  Table [dbo].[PayablesMaster]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PayablesMaster]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[Payment]
GO
/****** Object:  Table [dbo].[PaymentCatergory]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PaymentCatergory]
GO
/****** Object:  Table [dbo].[Paymentdetailsnw]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[Paymentdetailsnw]
GO
/****** Object:  Table [dbo].[PaymentGatewaySettings]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PaymentGatewaySettings]
GO
/****** Object:  Table [dbo].[PaymentGatewayType]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PaymentGatewayType]
GO
/****** Object:  Table [dbo].[PaymentHistory]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PaymentHistory]
GO
/****** Object:  Table [dbo].[PaymentReceivings]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[PaymentReceivings]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 02/07/2017 09:54:40 ******/
DROP TABLE [dbo].[Payments]
GO
/****** Object:  Table [dbo].[POSOwnerRequestDetails]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[POSOwnerRequestDetails]
GO
/****** Object:  Table [dbo].[POSTerminal]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[POSTerminal]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[PurchaseOrder]
GO
/****** Object:  Table [dbo].[Receivings]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[Receivings]
GO
/****** Object:  Table [dbo].[ReceivingsMaster]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[ReceivingsMaster]
GO
/****** Object:  Table [dbo].[register]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[register]
GO
/****** Object:  Table [dbo].[RegistrationBTPOS]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RegistrationBTPOS]
GO
/****** Object:  Table [dbo].[ReportsFields]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[ReportsFields]
GO
/****** Object:  Table [dbo].[RoleObjectAccesses]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RoleObjectAccesses]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[RouteDetails]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RouteDetails]
GO
/****** Object:  Table [dbo].[RouteFare]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RouteFare]
GO
/****** Object:  Table [dbo].[RouteFareDetails]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RouteFareDetails]
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[Routes]
GO
/****** Object:  Table [dbo].[RoutesConfiguration]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RoutesConfiguration]
GO
/****** Object:  Table [dbo].[RouteStops]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RouteStops]
GO
/****** Object:  Table [dbo].[RoutesVehicle]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[RoutesVehicle]
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[SalesOrder]
GO
/****** Object:  Table [dbo].[Salesordernw]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[Salesordernw]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[Schedules]
GO
/****** Object:  Table [dbo].[ShippingOrder]    Script Date: 02/07/2017 09:54:41 ******/
DROP TABLE [dbo].[ShippingOrder]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[ShoppingCart]
GO
/****** Object:  Table [dbo].[SMSEmailConfiguration]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[SMSEmailConfiguration]
GO
/****** Object:  Table [dbo].[SMSEmailSubscribers]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[SMSEmailSubscribers]
GO
/****** Object:  Table [dbo].[SmsGatewayeConfiguration]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[SmsGatewayeConfiguration]
GO
/****** Object:  Table [dbo].[SMSProviderConfig]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[SMSProviderConfig]
GO
/****** Object:  Table [dbo].[States]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[States]
GO
/****** Object:  Table [dbo].[Stops]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[Stops]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[SubCategory]
GO
/****** Object:  Table [dbo].[table2]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[table2]
GO
/****** Object:  Table [dbo].[TicketGeneration]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TicketGeneration]
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TransactionDetails]
GO
/****** Object:  Table [dbo].[TransactionDocs]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TransactionDocs]
GO
/****** Object:  Table [dbo].[TransactionMaster]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TransactionMaster]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[Transactions]
GO
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TransactionTypes]
GO
/****** Object:  Table [dbo].[TroubleTicketingCategories]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TroubleTicketingCategories]
GO
/****** Object:  Table [dbo].[TroubleTicketingDetails]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TroubleTicketingDetails]
GO
/****** Object:  Table [dbo].[TroubleTicketingDevice]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TroubleTicketingDevice]
GO
/****** Object:  Table [dbo].[TroubleTicketingHandlers]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TroubleTicketingHandlers]
GO
/****** Object:  Table [dbo].[TroubleTicketingSlaType]    Script Date: 02/07/2017 09:54:42 ******/
DROP TABLE [dbo].[TroubleTicketingSlaType]
GO
/****** Object:  Table [dbo].[TroubleTicketingStatus]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[TroubleTicketingStatus]
GO
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[TypeGroups]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[Types]
GO
/****** Object:  Table [dbo].[ULFeatures]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[ULFeatures]
GO
/****** Object:  Table [dbo].[ULPymtTransDetails]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[ULPymtTransDetails]
GO
/****** Object:  Table [dbo].[UserLicense]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[UserLicense]
GO
/****** Object:  Table [dbo].[UserLicensePayments]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[UserLicensePayments]
GO
/****** Object:  Table [dbo].[UserLicensePymtTransactions]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[UserLicensePymtTransactions]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[UserLogins]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[UserRoles]
GO
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[VehicleDetails]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[VehicleDetails]
GO
/****** Object:  Table [dbo].[VehicleLayout]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[VehicleLayout]
GO
/****** Object:  Table [dbo].[WebsiteUserInfo]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[WebsiteUserInfo]
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 02/07/2017 09:54:43 ******/
DROP TABLE [dbo].[ZipCode]
GO
/****** Object:  Table [dbo].[ZipCode]    Script Date: 02/07/2017 09:54:43 ******/
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
/****** Object:  Table [dbo].[WebsiteUserInfo]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebsiteUserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Mobile] [varchar](15) NOT NULL,
	[Gender] [int] NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[UserId] [int] NULL,
	[Active] [int] NOT NULL,
	[IsEmailVerified] [int] NOT NULL,
	[CreatedOn] [date] NOT NULL,
	[EVerificationCode] [varchar](10) NULL,
	[EVerifiedOn] [date] NULL,
	[ENoOfAttempts] [int] NULL,
	[MVerificationCode] [varchar](10) NULL,
	[MVerifiedOn] [date] NULL,
	[MNoOfAttempts] [int] NULL,
	[AltMobileNo] [varchar](15) NULL,
	[IsMobileVerified] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehicleLayout]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleLayout](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleLayoutTypeId] [int] NOT NULL,
	[RowNo] [int] NOT NULL,
	[ColNo] [int] NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[label] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehicleDetails]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[Users]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[EmpNo] [varchar](20) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[RoleId] [int] NULL,
	[CompanyId] [int] NOT NULL,
	[Active] [int] NOT NULL CONSTRAINT [DF_Users_Active]  DEFAULT ((1)),
	[GenderId] [int] NOT NULL,
	[ManagerId] [int] NULL,
	[CountryId] [int] NULL,
	[StateId] [int] NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactNo1] [varchar](20) NULL,
	[ContactNo2] [varchar](20) NULL,
	[Address] [varchar](500) NULL,
	[AltAddress] [varchar](500) NULL,
	[photo] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CompanyId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[UserLicensePymtTransactions]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLicensePymtTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransId] [varchar](20) NOT NULL,
	[GatewayTransId] [varchar](20) NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[TransDate] [datetime] NOT NULL,
	[ULPymtId] [int] NOT NULL,
	[StatusId] [int] NULL,
	[PymtTypeId] [int] NOT NULL,
	[Tax] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[Desc] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLicensePayments]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLicensePayments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ULId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Units] [decimal](18, 0) NULL,
	[StatusId] [int] NULL,
	[LicensePymtTransId] [int] NULL,
	[IsRenewal] [int] NULL,
	[TransId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLicense]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLicense](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FOId] [int] NULL,
	[LicenseTypeId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[ExpiryOn] [datetime] NULL,
	[GracePeriod] [int] NULL,
	[ActualExpiry] [datetime] NULL,
	[LastUpdatedOn] [datetime] NULL,
	[Active] [int] NULL,
	[StatusId] [int] NULL,
	[RenewFreqTypeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ULPymtTransDetails]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ULPymtTransDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ULPPymtTransId] [int] NOT NULL,
	[PaymentTypeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Discount] [decimal](18, 0) NULL,
	[Tax] [decimal](18, 0) NULL,
	[Amount] [decimal](18, 0) NULL,
	[TransDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ULFeatures]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ULFeatures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ULPymtId] [int] NOT NULL,
	[FeatureId] [int] NOT NULL,
	[FeatureValue] [varchar](50) NOT NULL,
	[FeatureDesc] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Types]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TypeGroups]    Script Date: 02/07/2017 09:54:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TroubleTicketingStatus]    Script Date: 02/07/2017 09:54:43 ******/
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
/****** Object:  Table [dbo].[TroubleTicketingSlaType]    Script Date: 02/07/2017 09:54:42 ******/
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
/****** Object:  Table [dbo].[TroubleTicketingHandlers]    Script Date: 02/07/2017 09:54:42 ******/
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
/****** Object:  Table [dbo].[TroubleTicketingDevice]    Script Date: 02/07/2017 09:54:42 ******/
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
/****** Object:  Table [dbo].[TroubleTicketingDetails]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TroubleTicketingDetails](
	[Type] [varchar](50) NOT NULL,
	[createdBy] [varchar](50) NOT NULL,
	[Raised] [int] NOT NULL,
	[TicketTitle] [int] NOT NULL,
	[IssueDetails] [varchar](50) NOT NULL,
	[AddInfo] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Asign] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TroubleTicketingCategories]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[Transactions]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TransactionMaster]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TransactionDocs]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransactionDocs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransId] [int] NOT NULL,
	[TransDoc] [varchar](max) NOT NULL,
	[CreatedOn] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransactionDetails]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[TicketGeneration]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TicketGeneration](
	[Source] [varchar](50) NOT NULL,
	[Target] [varchar](50) NOT NULL,
	[NoOfTickets] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[table2]    Script Date: 02/07/2017 09:54:42 ******/
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
/****** Object:  Table [dbo].[SubCategory]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[Stops]    Script Date: 02/07/2017 09:54:42 ******/
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
	[Code] [varchar](50) NOT NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Latitude] [varchar](20) NULL,
	[Longitude] [varchar](50) NULL,
	[Code] [varchar](10) NULL,
	[CountryId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMSProviderConfig]    Script Date: 02/07/2017 09:54:42 ******/
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
/****** Object:  Table [dbo].[SmsGatewayeConfiguration]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SmsGatewayeConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[enddate] [datetime] NOT NULL,
	[hashkey] [datetime] NOT NULL,
	[providername] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[saltkey] [datetime] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[ClientId] [int] NOT NULL,
	[SecretId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMSEmailSubscribers]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[SMSEmailConfiguration]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMSEmailConfiguration](
	[enddate] [datetime] NOT NULL,
	[hashkey] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[providername] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[saltkey] [datetime] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[Port] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[SecretId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 02/07/2017 09:54:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[ItemId] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Transaction_Num] [varchar](30) NOT NULL,
	[amount] [bigint] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL,
	[SalesOrderNum] [nvarchar](15) NOT NULL,
	[PaymentMode] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Transactionstatus] [int] NOT NULL,
	[Gateway_transid] [varchar](15) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShippingOrder]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShippingOrderNum] [nvarchar](50) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL,
	[SalesOrderId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SNo] [int] NOT NULL,
	[ServiceNo] [nvarchar](50) NOT NULL,
	[From] [char](50) NOT NULL,
	[To] [char](50) NOT NULL,
	[CoachType] [nvarchar](50) NOT NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ApproxJourneytime] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salesordernw]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salesordernw](
	[ItemId] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalesOrderNum] [nvarchar](15) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[itemId] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoutesVehicle]    Script Date: 02/07/2017 09:54:41 ******/
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
/****** Object:  Table [dbo].[RouteStops]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteStops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[FromStopId] [int] NOT NULL,
	[ToStopId] [int] NOT NULL,
	[distance] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoutesConfiguration]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[Routes]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Routes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [varchar](50) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Description] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
	[DestinationId] [int] NOT NULL,
	[Distance] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RouteFareDetails]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[RouteFare]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteFare](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[SourceStopId] [int] NOT NULL,
	[DestinationStopId] [int] NOT NULL,
	[Distance] [decimal](18, 0) NOT NULL,
	[PerUnitPrice] [decimal](18, 0) NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[FareTypeId] [int] NOT NULL,
	[RouteStopId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteDetails]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[StopId] [int] NOT NULL,
	[DistanceFromSource] [decimal](18, 0) NULL,
	[DistanceFromDestination] [decimal](18, 0) NULL,
	[DistanceFromPreviousStop] [decimal](18, 0) NULL,
	[DistanceFromNextStop] [decimal](18, 0) NULL,
	[PreviousStopId] [int] NOT NULL,
	[NextStopId] [int] NOT NULL,
	[StopNo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[Active] [int] NOT NULL,
	[IsPublic] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleObjectAccesses]    Script Date: 02/07/2017 09:54:41 ******/
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
/****** Object:  Table [dbo].[ReportsFields]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[RegistrationBTPOS]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[register]    Script Date: 02/07/2017 09:54:41 ******/
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
/****** Object:  Table [dbo].[ReceivingsMaster]    Script Date: 02/07/2017 09:54:41 ******/
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
/****** Object:  Table [dbo].[Receivings]    Script Date: 02/07/2017 09:54:41 ******/
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
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[Id] [int] NOT NULL,
	[PONum] [nvarchar](15) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[itemId] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[StatusId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSTerminal]    Script Date: 02/07/2017 09:54:41 ******/
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
/****** Object:  Table [dbo].[POSOwnerRequestDetails]    Script Date: 02/07/2017 09:54:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSOwnerRequestDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
	[AltPhoneNo] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Gender] [int] NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[CmpEmailAddress] [varchar](50) NOT NULL,
	[CmpTitle] [varchar](20) NULL,
	[CmpCaption] [varchar](20) NULL,
	[Country] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[CmpFax] [varchar](50) NULL,
	[CmpAddress] [varchar](500) NOT NULL,
	[CmpAltAddress] [varchar](500) NULL,
	[state] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[CmpPhoneNo] [varchar](50) NOT NULL,
	[CmpAltPhoneNo] [varchar](50) NULL,
	[CurrentSystemInUse] [varchar](50) NULL,
	[howdidyouhearaboutus] [varchar](50) NULL,
	[SendNewProductsEmails] [bit] NOT NULL,
	[Agreetotermsandconditions] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[IsNewCompany] [int] NULL,
	[userPhoto] [varchar](max) NULL,
	[CmpLogo] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payments](
	[Card] [varchar](50) NOT NULL,
	[MobilePayment] [varchar](50) NOT NULL,
	[Cash] [varchar](50) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Transaction_Num] [varchar](50) NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[PaymentMode] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[TransactionStatus] [int] NOT NULL,
	[Gateway_transId] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentReceivings]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[PaymentHistory]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Desc] [int] NOT NULL,
	[InventoryId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReceivedOn] [datetime] NOT NULL,
	[TransactionId] [int] NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentGatewayType]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[PaymentGatewaySettings]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentGatewaySettings](
	[enddate] [datetime] NOT NULL,
	[hashkey] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentGatewayTypeId] [int] NOT NULL,
	[providername] [varchar](50) NOT NULL,
	[pwd] [varchar](50) NOT NULL,
	[saltkey] [datetime] NOT NULL,
	[startdate] [datetime] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[ClientId] [int] NULL,
	[SecretId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paymentdetailsnw]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paymentdetailsnw](
	[ItemId] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Unitprice] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Transactionid] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentCatergory]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[PayablesMaster]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[PassengerDetails]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PassengerDetails](
	[PassengerId] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](30) NOT NULL,
	[Lname] [varchar](30) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [int] NOT NULL,
	[datetime] [varchar](30) NOT NULL,
	[Pnr_Id] [int] NOT NULL,
	[Pnr_No] [varchar](20) NOT NULL,
	[Identityproof] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 04/08/2017 16:41:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO


CREATE TABLE [dbo].[Objects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[Path] [varchar](50) NULL,
	[Active] [int] NOT NULL,
	[ParentId] [int] NULL,
	[RootObjectId] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjectAccesses]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[Notifications]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Message] [varchar](500) NOT NULL,
	[MessageTypeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Source] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotificationConfiguration]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[NotificationId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mulitiplicationsave]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[menu]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[loginpage]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[LicenseTypes]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseType] [varchar](50) NOT NULL,
	[LicenseCode] [varchar](55) NOT NULL,
	[LicenseCatId] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Active] [int] NOT NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTill] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicensePricing]    Script Date: 02/07/2017 09:54:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicensePricing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseId] [int] NOT NULL,
	[RenewalFreqTypeId] [int] NOT NULL,
	[RenewalFreq] [int] NOT NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[fromdate] [datetime] NULL,
	[todate] [datetime] NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicensePayments]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[LicenseKeyFile]    Script Date: 02/07/2017 09:54:40 ******/
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
/****** Object:  Table [dbo].[LicenseDetails]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseTypeId] [int] NOT NULL,
	[FeatureTypeId] [int] NOT NULL,
	[FeatureLabel] [varchar](50) NULL,
	[FeatureValue] [varchar](100) NULL,
	[LabelClass] [varchar](50) NULL,
	[Active] [int] NOT NULL CONSTRAINT [DF_LicenseDetails_Active]  DEFAULT ((1)),
	[fromDate] [datetime] NULL,
	[toDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseBTPOS]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseBTPOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LicenseTypeId] [int] NOT NULL,
	[BTPOSTypeId] [int] NOT NULL,
	[NoOfUnits] [int] NOT NULL,
	[Label] [varchar](50) NOT NULL,
	[LableClass] [varchar](50) NULL,
	[fromdate] [datetime] NULL,
	[todate] [datetime] NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenceStatus]    Script Date: 02/07/2017 09:54:39 ******/
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
/****** Object:  Table [dbo].[LicenceCatergories]    Script Date: 02/07/2017 09:54:39 ******/
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
/****** Object:  Table [dbo].[Invoices]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Invoices] [varchar](15) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[amount] [decimal](18, 0) NOT NULL,
	[item] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventorySales]    Script Date: 02/07/2017 09:54:39 ******/
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
/****** Object:  Table [dbo].[InventoryReceivings]    Script Date: 02/07/2017 09:54:39 ******/
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
/****** Object:  Table [dbo].[InventoryPurchases]    Script Date: 02/07/2017 09:54:39 ******/
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
	[PurchaseDate] [datetime] NOT NULL,
	[PurchaseOrderNumber] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventoryItem]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[InventoryItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[ReOrderPoint] [int] NOT NULL,
	[ItemImage] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 02/07/2017 09:54:39 ******/
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
	[InventoryItemId] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[PerUnitPrice] [int] NOT NULL,
	[reorderpoint] [int] NOT NULL,
	[subcat] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Index]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IndexFileData] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORouteFleetSchedule]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FORouteFleetSchedule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[StopId] [int] NOT NULL,
	[ArrivalHr] [int] NULL,
	[DepartureHr] [int] NULL,
	[Duration] [decimal](18, 0) NULL,
	[ArrivalMin] [int] NULL,
	[DepartureMin] [int] NULL,
	[ArrivalAMPM] [varchar](2) NULL,
	[DepartureAMPM] [varchar](2) NULL,
	[ArrivalTime] [datetime] NULL,
	[DepartureTime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FORouteFare]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORouteFare](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[PricingTypeId] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[SourceId] [int] NOT NULL,
	[DestinationId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetStaff]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetStaff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[VehicleId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetScheduleList]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetScheduleList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleName] [varchar](50) NOT NULL,
	[FleetId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetRoutes]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetRoutes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[EffectiveFrom] [datetime] NULL,
	[EffectiveTill] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetOwnerVehicleLayOut]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetOwnerVehicleLayOut](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleLayoutTypeId] [int] NOT NULL,
	[RowNo] [int] NOT NULL,
	[ColNo] [int] NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[label] [varchar](10) NOT NULL,
	[FleetOwnerId] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetOwnerStops]    Script Date: 02/07/2017 09:54:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetOwnerStops](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[StopId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetOwnerRouteStop]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetOwnerRouteStop](
	[FleetOwnerId] [int] NOT NULL,
	[RouteStopId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetOwnerRouteFare]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetOwnerRouteFare](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FORouteStopId] [int] NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[Distance] [decimal](18, 0) NOT NULL,
	[PerUnitPrice] [decimal](18, 0) NOT NULL,
	[Amount] [decimal](18, 0) NOT NULL,
	[FareTypeId] [int] NOT NULL,
	[Active] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[VehicleId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetOwnerRoute]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetOwnerRoute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Active] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetOwnerRequestDetails]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetOwnerRequestDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](50) NOT NULL,
	[AltPhoneNo] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Gender] [int] NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[CmpEmailAddress] [varchar](50) NOT NULL,
	[CmpTitle] [varchar](20) NULL,
	[CmpCaption] [varchar](20) NULL,
	[FleetSize] [int] NOT NULL,
	[StaffSize] [int] NOT NULL,
	[Country] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[CmpFax] [varchar](50) NULL,
	[CmpAddress] [varchar](500) NOT NULL,
	[CmpAltAddress] [varchar](500) NULL,
	[state] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[CmpPhoneNo] [varchar](50) NOT NULL,
	[CmpAltPhoneNo] [varchar](50) NULL,
	[CurrentSystemInUse] [varchar](50) NULL,
	[howdidyouhearaboutus] [varchar](50) NULL,
	[SendNewProductsEmails] [bit] NOT NULL,
	[Agreetotermsandconditions] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[IsNewCompany] [int] NULL,
	[userPhoto] [varchar](max) NULL,
	[CmpLogo] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetOwnerRequest]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetOwnerRequest](
	[CurrentSystemInUse] [varchar](50) NOT NULL,
	[howdidyouhearaboutus] [varchar](50) NOT NULL,
	[SentNewProductsEmails] [bit] NOT NULL,
	[Agreetotermsandconditions] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetOwner]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetOwner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Active] [int] NOT NULL,
	[FleetOwnerCode] [varchar](15) NOT NULL,
	[IsEmailVerified] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[EmailId] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetDetails]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FleetDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleRegNo] [varchar](15) NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[FleetOwnerId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ServiceTypeId] [int] NOT NULL,
	[Active] [int] NOT NULL,
	[LayoutTypeId] [int] NOT NULL,
	[EngineNo] [varchar](50) NULL,
	[FuelUsed] [varchar](50) NULL,
	[MonthAndYrOfMfr] [datetime] NULL,
	[ChasisNo] [varchar](50) NULL,
	[SeatingCapacity] [int] NULL,
	[DateOfRegistration] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FleetBtpos]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetBtpos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[BTPOSId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FleetAvailability]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FleetAvailability](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fares]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
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
/****** Object:  Table [dbo].[Expenses]    Script Date: 02/07/2017 09:54:38 ******/
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
/****** Object:  Table [dbo].[Ex_Availableseats]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ex_Availableseats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bus_Id] [int] NOT NULL,
	[Bustype] [varchar](50) NOT NULL,
	[From_Time] [varchar](50) NOT NULL,
	[To_Time] [varchar](50) NOT NULL,
	[Availableseats] [int] NOT NULL,
	[Cost] [float] NOT NULL,
	[Sourcename] [varchar](50) NOT NULL,
	[Destinationname] [nvarchar](50) NOT NULL,
	[SourceId] [int] NOT NULL,
	[DestinationId] [int] NOT NULL,
	[Travelsname] [varchar](30) NULL,
	[Duration] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistoryDetails]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EditHistoryDetails](
	[EditHistoryId] [int] NOT NULL,
	[FromValue] [varchar](50) NULL,
	[ToValue] [varchar](50) NULL,
	[ChangeType] [varchar](50) NOT NULL,
	[Field1] [varchar](50) NULL,
	[Field2] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EditHistory]    Script Date: 02/07/2017 09:54:38 ******/
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
	[ChangedType] [varchar](50) NOT NULL,
	[Task] [varchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Latitude] [varchar](15) NULL,
	[Longitude] [varchar](15) NULL,
	[ISOCode] [varchar](5) NULL,
	[HasOperations] [int] NOT NULL CONSTRAINT [DF_Country_HasOperations]  DEFAULT ((0))
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyRoles]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[Active] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 02/07/2017 09:54:38 ******/
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
	[Active] [int] NOT NULL,
	[Address] [varchar](500) NOT NULL,
	[ContactNo1] [varchar](50) NOT NULL,
	[ContactNo2] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Title] [varchar](50) NULL,
	[Caption] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](10) NULL,
	[State] [varchar](50) NULL,
	[FleetSize] [int] NULL,
	[StaffSize] [int] NULL,
	[AlternateAddress] [varchar](500) NULL,
	[ShippingAddress] [varchar](500) NULL,
	[AddressId] [int] NULL,
	[Logo] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[checkout]    Script Date: 02/07/2017 09:54:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[checkout](
	[Id] [int] NOT NULL,
	[ckdetails] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CartPaymentDetails]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartPaymentDetails](
	[LicenseType] [nvarchar](50) NULL,
	[Frequency] [int] NULL,
	[NoOfMonths] [nvarchar](50) NULL,
	[TotalAmount] [int] NULL,
	[CreateDate] [datetime] NULL,
	[TransId] [nvarchar](50) NULL,
	[UnitPrice] [int] NULL,
	[FleetOwner] [nvarchar](50) NULL,
	[Id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carousel]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carousel](
	[Id] [int] NOT NULL,
	[ImageName] [varchar](50) NOT NULL,
	[Image] [varchar](max) NOT NULL,
	[ImageCaption] [varchar](250) NULL,
	[ImageDesc] [varchar](250) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [datetime] NULL,
	[ImgPath] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSTransactions]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTPOSTransactions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BTPOSId] [varchar](50) NOT NULL,
	[Date] [datetime] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[AmountPaid] [decimal](18, 0) NULL,
	[ChangeRendered] [decimal](18, 0) NULL,
	[ChangeGiven] [decimal](18, 0) NULL,
	[TransId] [int] NULL,
	[GatewayTransId] [varchar](50) NULL,
	[TransCode] [varchar](50) NULL,
	[PaymentCategoryId] [int] NULL,
	[PaymentTypeId] [int] NULL,
	[PaymentModeId] [int] NULL,
	[TransStatusId] [int] NULL,
	[TransDetails] [varchar](500) NULL,
	[noofSeats] [int] NULL,
	[unitPrice] [decimal](18, 0) NULL,
	[luggageTypeId] [int] NULL,
	[luggageAmt] [decimal](18, 0) NULL,
	[taxes] [decimal](18, 0) NULL,
	[disc] [decimal](18, 0) NULL,
	[TicketNo] [varchar](50) NULL,
	[SrcId] [int] NULL,
	[DestId] [int] NULL,
	[RouteId] [int] NULL,
	[OperatorId] [int] NULL,
	[TransApproved] [int] NULL,
	[Reason] [varchar](250) NULL,
	[ApprovedById] [int] NULL,
	[FleetOwnerId] [int] NULL,
	[POSId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSSheduleUploads]    Script Date: 02/07/2017 09:54:37 ******/
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
/****** Object:  Table [dbo].[BTPOSSecheduledUpdates]    Script Date: 02/07/2017 09:54:37 ******/
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
/****** Object:  Table [dbo].[BTPOSRegistration]    Script Date: 02/07/2017 09:54:37 ******/
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
/****** Object:  Table [dbo].[BTPOSRecords]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTPOSRecords](
	[Id] [int] NOT NULL,
	[POSID] [int] NOT NULL,
	[RecordData] [binary](2000) NULL,
	[FileName] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Downloaded] [datetime] NULL,
	[LastDownloadtime] [datetime] NULL,
	[IsDirty] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSPortSettings]    Script Date: 02/07/2017 09:54:37 ******/
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
/****** Object:  Table [dbo].[BTPOSMonitoring]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTPOSMonitoring](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BTPOSId] [int] NOT NULL,
	[Xcoordinate] [float] NOT NULL,
	[Ycoordinate] [float] NOT NULL,
	[LocationName] [varchar](50) NOT NULL,
	[SNo] [int] NOT NULL,
	[DateTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSLogin]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BTPOSLogin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[POSId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[passkey] [varchar](50) NOT NULL,
	[fromdate] [date] NULL,
	[todate] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSInventorySales]    Script Date: 02/07/2017 09:54:37 ******/
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
/****** Object:  Table [dbo].[BTPOSFaultsCatageries]    Script Date: 02/07/2017 09:54:37 ******/
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
/****** Object:  Table [dbo].[BTPOSDetails]    Script Date: 02/07/2017 09:54:37 ******/
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
	[IMEI] [varchar](50) NULL,
	[ipconfig] [varchar](20) NULL,
	[active] [int] NULL,
	[FleetOwnerId] [int] NULL,
	[PerUnitPrice] [decimal](18, 0) NULL,
	[POSTypeId] [int] NULL,
	[ActivatedOn] [datetime] NULL,
	[PONum] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BTPOSAuditDetails]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BTPOSAuditDetails](
	[BTPOSID] [numeric](18, 0) NULL,
	[EditHistoryId] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingPaymentDetails]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingPaymentDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketNo] [varchar](30) NULL,
	[Amount] [decimal](18, 0) NULL,
	[PaymentMode] [varchar](50) NULL,
	[transDate] [datetime] NULL,
	[BookingId] [int] NULL,
	[GateWayTransId] [varchar](50) NULL,
	[TransStatus] [varchar](20) NULL,
	[TransStatusId] [int] NULL,
	[TransType] [varchar](50) NULL,
	[TransTypeId] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TicketNo] [varchar](20) NOT NULL,
	[TransId] [int] NULL,
	[EmailId] [varchar](50) NOT NULL,
	[MobileNo] [varchar](15) NOT NULL,
	[AltMobileNo] [varchar](15) NULL,
	[TravelDate] [date] NULL,
	[TravelTime] [time](7) NULL,
	[Src] [varchar](50) NULL,
	[Dest] [varchar](50) NULL,
	[SrcId] [int] NULL,
	[DestId] [int] NULL,
	[RouteId] [int] NULL,
	[VehicleId] [int] NOT NULL,
	[NoOfSeats] [int] NOT NULL,
	[Seats] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[StatusId] [int] NULL,
	[BookedBy] [varchar](150) NULL,
	[BookedById] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
	[BookingType] [varchar](10) NULL,
	[BookingTypeId] [int] NULL,
	[JourneyType] [varchar](10) NULL,
	[JourneyTypeId] [int] NULL,
	[UserId] [int] NULL,
	[Address] [varchar](500) NULL,
	[BookedOn] [datetime] NULL,
	[BookedOnTime] [time](7) NULL,
	[ArrivalTime] [time](7) NULL,
	[DepartureTime] [time](7) NULL,
	[ArrivalDate] [date] NULL,
	[DepartueDate] [date] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookedTicket]    Script Date: 02/07/2017 09:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookedTicket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[TicketContent] [varchar](max) NOT NULL,
	[createdOn] [date] NULL,
	[TicketNo] [varchar](15) NULL,
	[TransId] [varchar](25) NULL,
	[EmailId] [varchar](50) NULL,
	[MobileNo] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookedSeats]    Script Date: 02/07/2017 09:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookedSeats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingId] [int] NOT NULL,
	[TicketNo] [varchar](20) NOT NULL,
	[SeatNo] [varchar](5) NOT NULL,
	[SeatId] [int] NULL,
	[VehicleId] [int] NOT NULL,
	[Row] [int] NOT NULL,
	[Col] [int] NOT NULL,
	[JourneyDate] [date] NOT NULL,
	[JourneyTime] [time](7) NOT NULL,
	[Status] [varchar](10) NULL,
	[StatusId] [int] NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[PassengerType] [varchar](15) NULL,
	[IdProof] [varchar](50) NULL,
	[PrimaryPassenger] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blocklist]    Script Date: 02/07/2017 09:54:36 ******/
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
/****** Object:  Table [dbo].[Authentication]    Script Date: 02/07/2017 09:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authentication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlertsConfiguration]    Script Date: 02/07/2017 09:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlertsConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[AlertTypeId] [int] NOT NULL,
	[AlertItems] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alerts]    Script Date: 02/07/2017 09:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alerts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Message] [varchar](50) NOT NULL,
	[MessageTypeId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Address]    Script Date: 02/07/2017 09:54:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[AddresTypeId] [int] NOT NULL,
	[Fled1] [varchar](50) NOT NULL,
	[Fled2] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ZipCode] [nvarchar](50) NOT NULL,
	[Fax] [nvarchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
