 
Alter table [Borrower].[borrower]
add constraint pk_Borrower_id
primary key (borrowerid); 

alter table Loan.UnderWriter
add constraint pk_ID
primary key (underwriterID);

alter table [dbo].[US_ZipCodes]
add constraint pk_zip
primary key (zip);

alter table [Loan].[LoanSetupInformation]
add constraint pk_Loan_number
primary key (Loannumber);


Alter table [Borrower].[borrower]
add constraint pk_Borrower_id
primary key (borrowerid);

alter table [dbo].[UnderWriter]
add constraint pk_ID
primary key (underwriterID);

alter table [dbo].[US_ZipCodes]
add constraint pk_zip
primary key (zip);

alter table [loan].[Loan_SetUP_Informartion]
add constraint pk_Loan_number
primary key (Loannumber);

alter table [loan].[LU_Delinquency]
add constraint pk_delinquency_code
primary key (Delinquencycode);

alter table [loan].[LU_PaymentFrequency]
add constraint pk_payment_frequency
primary key (paymentfrequency);


alter table Loan.LU_Deliquency
add constraint pk_delinquency_code
primary key (Deliquencycode);

alter table [loan].[LU_PaymentFrequency]
add constraint pk_payment_frequency
primary key (paymentfrequency);


alter table [Borrower].[borrower]
add constraint ch_dob
check (dob>=18);

alter table [Borrower].[borrower]
add constraint ch_phone_10
check (len(phonenumber)=10);

alter table [Borrower].[borrower]
add constraint ch_ssn
check (len(taxpayerid_ssn)=9);

alter table [Borrower].[borrower]
add constraint default_createdate
default (getdate ()) for createdate;



alter table [Borrower].[borrower]
add constraint unique_id
unique (BorrowerId);  

alter table Borrower.borrower
add constraint Pk_id
primary key (BorrowerID)

 


alter table [Borrower].[BorrowerAddress]
add constraint default_address_createdate
default (getdate ()) for createdate;




alter table [Borrower].[BorrowerAddress]
add constraint fk_ID
foreign key (BorrowerId)
references [Borrower].[borrower];


alter table [Borrower].[BorrowerAddress]
add constraint fk_zip
foreign key (zip)
references [dbo].[US_ZipCodes];

alter table US_ZipCodes
add constraint PK_Zipcodes
primary key(zip)



alter table [Borrower].[BorrowerAddress]
add constraint unique_id_address
unique (addressid, borrowerid);



alter table [loan].[LoanPeriodic]
add constraint ch_int_prin_paidinst
check ([InterestPortion]+[PrincipalPortion]=([PaidInstallment]));  





alter table [loan].[LoanPeriodic]
add constraint df_periodic_createdate
default (getdate ()) for createdate;



alter table [loan].[LoanPeriodic]
add constraint def_Extra_monthly_pay_0
default ('0') for [ExtraMonthlyPayment];



alter table [loan].[LoanPeriodic]
add constraint fk_loannumber
foreign key (loannumber)
references [loan].[LoanSetupInformartion];



alter table [loan].[LoanPeriodic]
add constraint fk_del_code
foreign key (delinquencycode)
references [loan].[LU_Delinquency];



alter table [loan].[LoanPeriodic]
add constraint unique_periodic
unique (loannumber, cycledate);



alter table [loan].[Loan_SetUP_Informartion]
add constraint ch_term
check (len(loanterm)=35 or len(loanterm)=30 or len(loanterm)=15 or len(loanterm)=10);



alter table  [Loan].[LoanSetupInformation]
add constraint ch_int_rate
check (len(interestrate)=0.01 and len(interestrate)=0.30);



alter table [Loan].[LoanSetupInformation]
add constraint df_date_loan_setup
default (getdate ()) for createdate;



alter table [loan].[LoanSetupInformartion]
add constraint fk_setup_id
foreign key (borrowerid)
references [Borrower].[borrower];



alter table [loan].[LoanSetupInformartion]
add constraint fk_setup_pay_freq
foreign key (paymentfrequency)
references [loan].[LU_PaymentFrequency];



alter table [loan].[LoanSetupInformartion]
add constraint fk_underwrite
foreign key (underwriterid)
references [dbo].[UnderWriter];



alter table [loan].[LoanSetupInformartion]
add constraint un_loan
unique (loannumber);



alter table [loan].[LU_Deliquency]
add constraint un_lu_delin
unique (delinquencycode);



alter table [loan].[LU_PaymentFrequency]
add constraint un_payfreq
unique ([PaymentFrequency]);



alter table [dbo].[State]
add constraint df_date
default (getdate ()) for createdate;



alter table [dbo].[State]
add constraint un_stateid
unique (stateid);



alter table [dbo].[State]
add constraint un_name
unique (statename);



alter table [dbo].[UnderWriter]
add constraint ch_email_under
check (email like '@');



alter table [dbo].[UnderWriter]
add constraint df_under_date
default (getdate ()) for createdate;



alter table [dbo].[UnderWriter]
add constraint un_under_id
unique (underwriterid);



alter table [dbo].[US_ZipCodes]
add constraint df_zip_date
default (getdate ()) for createdate;



alter table [dbo].[US_ZipCodes]
add constraint un_zip_zip
unique (Zip);

