// ==========================================
// 1. MÓDULO DE CLIENTES (CLIENTS & PERSONS)
// ==========================================

Table Clientes {
  IdClient uuid [pk, not null]
  Name varchar(50) [not null]
  LastName varchar(50) [not null]
  IdentificationTypeId uuid [null]
  Identification nvarchar(11) [not null]
  BirthDay date [not null]
  GenderId uuid [not null]
  Phone char(10) [not null]
  Email varchar(100) [not null]
  CompanyId uuid [not null]
  IsActive bit [not null, default: 1]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]

  indexes {
    (Email, Identification) [unique]
  }
}

Table ClientContact {
  ClientContactId uuid [pk, not null]
  ClientId uuid [not null]
  Description varchar(50) [not null]
  PhoneNumber char(10) [not null]
  Extension char(10) [null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate int [not null]
  UserId varchar(50) [not null]
}

Table ClientJob {
  ClientJobId uuid [pk, not null]
  ClientId uuid [not null]
  CompanyName varchar(200) [not null]
  Position varchar(200) [not null]
  StartDate date [not null]
  EndDate date [null]
  CurrentJob bit [null]
  Salary decimal(18,2) [not null]
  ImmediateBoss varchar(100) [null]
  PaymentFrequency varchar(15) [null]
  Telephone nvarchar(10) [null]
  Extension int [null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table ClientAddress {
  ClientId uuid [not null]
  AddressId uuid [not null]
  // Tabla puente (Many-to-Many implícito)
}

Table Address {
  IdAddress uuid [pk, not null]
  AddressName varchar(100) [not null]
  IdProvince uuid [null]
  Neighborhood varchar(50) [null]
  Street varchar(50) [null]
  Number int [null]
  Building varchar(50) [null]
  Apartment varchar(50) [null]
  Floor int [null]
  Longitude varchar(50) [null]
  Latitude varchar(50) [null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table IdentificationType {
  IdentificationTypeId uuid [pk, not null]
  IdentificationTypeName nvarchar(15) [not null]
  IsActive bit [not null]
}

// ==========================================
// 2. MÓDULO DE PRÉSTAMOS (LOANS)
// ==========================================

Table Loan {
  LoanId uuid [pk, not null]
  LoanNo int [increment, not null] // Identity
  IdClient uuid [not null]
  LoanTermId uuid [not null]
  AuthorizeId uuid [null]
  DisbursementId uuid [null]
  LoanStateId uuid [not null]
  CurrencyId uuid [not null]
  LoanTypeId uuid [not null]
  TermCount int [not null]
  Amount money [not null]
  InterestRate decimal(5,2) [not null]
  PaymentDay int [not null]
  PaymentAmount money [not null]
  LoanDate datetime [not null, default: `getdate()`]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table LoanAuthorization {
  AuthorizationId uuid [pk, not null]
  AuthorizeBy varchar(50) [not null]
  AuthorizeDate datetime [not null]
  Comment varchar(MAX) [null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table LoanState {
  LoanStateId uuid [pk, not null]
  Description varchar(50) [null]
  IsActive bit [not null, default: 1]
}

Table LoanTerm {
  LoanTermId uuid [pk, not null]
  TermFrecuency varchar(10) [not null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table LoanType {
  LoanTypeId uuid [pk, not null]
  Description nvarchar(50) [not null]
  IsActive bit [not null, default: 1]
}

// ==========================================
// 3. MÓDULO DE FINANZAS Y COBRANZA
// ==========================================

Table Payments {
  PaymentId uuid [pk, not null]
  LoanId uuid [not null]
  NoPayment int [not null]
  Amount decimal(18,2) [not null]
  Interest decimal(18,2) [not null]
  RemainingAmount decimal(18,2) [not null]
  Date datetime [not null]
  Note varchar(100) [not null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table LatePayments {
  IdLatePayment uuid [pk, not null]
  LoanId uuid [not null]
  LatePayment decimal(18,2) [not null]
  CantOverdue int [not null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table Disbursement {
  DisbursementId uuid [pk, not null]
  AuthorizeBy varchar(50) [not null]
  Amount money [not null]
  DisbursementDate date [not null]
  DisbursementDestination varchar(200) [not null]
  Comment varchar(MAX) [not null]
  BankAccountId uuid [not null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate date [not null]
  UserId varchar(50) [not null]
}

Table BankAccount {
  BankAccountId uuid [pk, not null]
  AccountNumber varchar(20) [not null]
  BankId uuid [not null] // Tabla 'Bank' omitida intencionalmente
  CurrencyId uuid [not null]
  AccountTypeId uuid [not null] // Tabla 'AccountType' omitida intencionalmente
  Amount money [not null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate date [not null]
  UserId varchar(50) [not null]
}

Table Currency {
  CurrencyId uuid [pk, not null]
  CurrencyType varchar(50) [not null]
  CurrencyDescription varchar(50) [not null]
  CompanyId uuid [not null]
  IsActive bit [not null]
  CreatedDate date [not null]
  UserId varchar(50) [not null]
}

// ==========================================
// 4. MÓDULO CORE / CONFIGURACIÓN
// ==========================================

Table Company {
  CompanyId uuid [pk, not null]
  MembershipId uuid [null]
  Name varchar(50) [not null]
  Slogan varchar(180) [null]
  RNC int [null]
  Address varchar(100) [null]
  Phone nvarchar(12) [null]
  Email varchar(100) [null]
  Logo varchar(100) [null]
  IsFinancial bit [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [null]
}

Table Membership {
  MembershipId uuid [pk, not null]
  Name varchar(50) [not null]
  Description varchar(100) [not null]
  Price money [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
}

Table Provinces {
  ProvinceId uuid [pk, not null]
  ProvinceName varchar(100) [not null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId nvarchar(50) [not null]
}

Table Gender {
  IdGender uuid [pk, not null]
  Description varchar(50) [null]
  IsActive bit [not null]
  CreatedDate datetime [not null]
  UserId varchar(50) [not null]
}

Table AspNetUsersProfile {
  ProfileId nvarchar(50) [pk, not null]
  UserId nvarchar(450) [not null, unique]
  FirstName varchar(50) [not null]
  LastName varchar(50) [not null]
  Email varchar(100) [not null, unique]
  Phone varchar(10) [not null]
  IsActive bit [not null, default: 1]
  CreatedDate datetime [not null, default: `getdate()`]
}

// ==========================================
// DEFINICIÓN DE RELACIONES (FOREIGN KEYS)
// ==========================================

// --- Relaciones de Clientes ---
Ref: Clientes.GenderId > Gender.IdGender
Ref: Clientes.IdentificationTypeId > IdentificationType.IdentificationTypeId
Ref: ClientContact.ClientId > Clientes.IdClient
Ref: ClientJob.ClientId > Clientes.IdClient
Ref: ClientAddress.ClientId > Clientes.IdClient
Ref: ClientAddress.AddressId > Address.IdAddress
Ref: Address.IdProvince > Provinces.ProvinceId

// --- Relaciones de Préstamos (Loans) ---
Ref: Loan.IdClient > Clientes.IdClient
Ref: Loan.CompanyId > Company.CompanyId
Ref: Loan.CurrencyId > Currency.CurrencyId
Ref: Loan.DisbursementId > Disbursement.DisbursementId
Ref: Loan.AuthorizeId > LoanAuthorization.AuthorizationId
Ref: Loan.LoanStateId > LoanState.LoanStateId
Ref: Loan.LoanTermId > LoanTerm.LoanTermId
Ref: Loan.LoanTypeId > LoanType.LoanTypeId

// --- Relaciones de Finanzas ---
Ref: Payments.LoanId > Loan.LoanId
Ref: LatePayments.LoanId > Loan.LoanId
Ref: Disbursement.BankAccountId > BankAccount.BankAccountId
Ref: BankAccount.CurrencyId > Currency.CurrencyId
// Nota: BankAccount tiene FKs a 'Bank' y 'AccountType', pero esas tablas no fueron incluidas.

// --- Relaciones Core ---
Ref: Company.MembershipId > Membership.MembershipId