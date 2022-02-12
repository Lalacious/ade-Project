 create database UNIONBANK
  CREATE SCHEMA Borrower 
  create schema Loan
  create table Borrower.borrower(
  BorrrowerID int not null,
  BorrowerFirstName varchar(255) not null,
  BorrowerMiddleInitial char (1) not null,
  BorrowerLastName varchar(255) not null,
  DOB datetime not null,
  Gender char (1) null,
  TaxpayerID_SSN varchar (9) not null,
  PhoneNumber varchar (10) not null,
  Email varchar (255) not null,
  Citizenship varchar(255) null,
  BeneficiaryName varchar (255) null,
  isUScitizen bit null,
  CreateDate datetime not null)

  create table Borrower.BorrowerAddress(
  AddressID int not null,
  BorrowerID int not null,
  StreetAdress varchar (255) not null,
  ZIP varchar (5) not null,
  Createdate datetime not null)

  create table calender(
  CalenderDate datetime  null) 
   
   create table [state](
   StateID char (2) not null,
   statename varchar (255) not null,
   CreateDate datetime)

   create table US_ZipCodes(
   isSurrugatekey int not null,
   ZIP varchar (5) not null,
   Latitude float null,
   longtitude float null,
   city varchar (255) null,
   State_id char (2) null,
  [population] int null,
  Density decimal(18,0) null,
  county_fips varchar (10) null,
  county_name varchar(255) null,
  county_name_all varchar (255) null,
  county_fips_all varchar (50) null,
  timezone varchar (255) null,
  createdate datetime not null) 

  create table Loan.LoanSetupInformation(
  isSurrrogateKey int not null,
  LoanNumber varchar(10) not null,
  PurchaseAmount numeric(18,2) not null,
  PuchaseDate datetime not null,
  Loanterm int not null,
  BorrowerID int not null,
  UnderwriterID int not null,
  ProductID char (2) not null,
  InstrestRate decimal (3,2) not null,
  PaymentFrequency int not null,
  AppriasalValue numeric (18,2) not null,
  CreateDate datetime not null,
  LTV decimal(4,2) not null,
  FirstInterestPaymentDate datetime null,
  MaturityDate datetime not null) 

  create table Loan.Loanperiodic(
  issurrugatekey int not null,
  Loannumber varchar (10) not null,
  cycledate datetime not null,
  Extramonthlypayment numeric (18,2) not null,
  Unpaidprincipalbalance numeric (18,2) not null,
  BeginningscheduleBalance numeric (18,2) not null,
  paindinstallment numeric (18,2) not null,
  Interestportion numeric(18,2) not null,
  Principalportion numeric (18,2) not null,
  Endschedulebalance numeric(18,2) not null,
  Actualschedulebalance numeric(18,2) not null,
  totalinterestaccrued numeric (18,2) not null,
  totalpricipalaccrued numeric (18,2) not null,
  DEFAULTPENALTY numeric (18,2) not null,
  deliquencyCode NUMERIC (10,0) not null,
  createdate datetime not null )

  create table Loan.LU_Deliquency(
  DeliquencyCode int not null,
  Deliquency varchar (255) not null)
   
  
     
   

   create table Loan.LU_PaymentFrequency(
  Paymentfrequency int not null,
  PaymentIsMadeEvery INT not null,
  PaymentFrequency_Description varchar (255) not null)

  create table Loan.Underwriter(
  UnderwriterID int not null,
  UnderwriterFirstname varchar (255) null,
  Underwritermiddleinitial char (10) null,
  UnderwriterLastname varchar (255)not null,
  PhoneNumber varchar (14) null,
  Email varchar (255) not null,
  createdate datetime not null)



 
 
