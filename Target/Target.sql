USE [master]
GO

if exists (select 1
           from  sysdatabases
           where  name IN ('target'))
   DROP DATABASE target
go

CREATE DATABASE [target]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'target', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\target.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'target_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\target_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [target] SET COMPATIBILITY_LEVEL = 140
GO
ALTER DATABASE [target] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [target] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [target] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [target] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [target] SET ARITHABORT OFF 
GO
ALTER DATABASE [target] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [target] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [target] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [target] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [target] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [target] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [target] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [target] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [target] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [target] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [target] SET  DISABLE_BROKER 
GO
ALTER DATABASE [target] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [target] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [target] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [target] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [target] SET  READ_WRITE 
GO
ALTER DATABASE [target] SET RECOVERY FULL 
GO
ALTER DATABASE [target] SET  MULTI_USER 
GO
ALTER DATABASE [target] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [target] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [target] SET DELAYED_DURABILITY = DISABLED 
GO
USE [target]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO

Use [target]
GO


/*============*/
/*    KEY     */
/*============*/
if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_KEY')
            and   type = 'U')
   drop table Egzemplarz_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska_KEY')
            and   type = 'U')
   drop table Firma_kurierska_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia_KEY')
            and   type = 'U')
   drop table Hurtownia_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient_KEY')
            and   type = 'U')
   drop table Klient_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_KEY')
            and   type = 'U')
   drop table Magazyn_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_KEY')
            and   type = 'U')
   drop table Pracownik_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_KEY')
            and   type = 'U')
   drop table Produkt_KEY
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka_KEY')
            and   type = 'U')
   drop table Przesylka_KEY
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_KEY')
            and   type = 'U')
   drop table Reklamacja_KEY
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz_KEY')
            and   type = 'U')
   drop table Sprzedaz_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka_KEY')
            and   type = 'U')
   drop table Wysylka_KEY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup_KEY')
            and   type = 'U')
   drop table Zakup_KEY
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie_KEY')
            and   type = 'U')
   drop table Zamowienie_KEY
go


/*==============*/
/*    TARGET    */
/*==============*/
if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_TARGET')
            and   type = 'U')
   drop table Egzemplarz_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska_TARGET')
            and   type = 'U')
   drop table Firma_kurierska_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia_TARGET')
            and   type = 'U')
   drop table Hurtownia_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient_TARGET')
            and   type = 'U')
   drop table Klient_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_TARGET')
            and   type = 'U')
   drop table Magazyn_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_TARGET')
            and   type = 'U')
   drop table Pracownik_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_TARGET')
            and   type = 'U')
   drop table Produkt_TARGET
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka_TARGET')
            and   type = 'U')
   drop table Przesylka_TARGET
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_TARGET')
            and   type = 'U')
   drop table Reklamacja_TARGET
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz_TARGET')
            and   type = 'U')
   drop table Sprzedaz_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka_TARGET')
            and   type = 'U')
   drop table Wysylka_TARGET
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup_TARGET')
            and   type = 'U')
   drop table Zakup_TARGET
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie_TARGET')
            and   type = 'U')
   drop table Zamowienie_TARGET
go


/*============*/
/*    HST     */
/*============*/
if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_HST')
            and   type = 'U')
   drop table Egzemplarz_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska_HST')
            and   type = 'U')
   drop table Firma_kurierska_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia_HST')
            and   type = 'U')
   drop table Hurtownia_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient_HST')
            and   type = 'U')
   drop table Klient_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_HST')
            and   type = 'U')
   drop table Magazyn_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_HST')
            and   type = 'U')
   drop table Pracownik_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_HST')
            and   type = 'U')
   drop table Produkt_HST
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka_HST')
            and   type = 'U')
   drop table Przesylka_HST
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_HST')
            and   type = 'U')
   drop table Reklamacja_HST
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz_HST')
            and   type = 'U')
   drop table Sprzedaz_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka_HST')
            and   type = 'U')
   drop table Wysylka_HST
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup_HST')
            and   type = 'U')
   drop table Zakup_HST
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie_HST')
            and   type = 'U')
   drop table Zamowienie_HST
go


/*============*/
/*    KEY     */
/*============*/
/*==============================================================*/
/* Table: Egzemplarz_KEY                                        */
/*==============================================================*/
create table Egzemplarz_KEY (
   Egzemplarz_Key		numeric 			 IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_EGZEMPLARZ_KEY primary key nonclustered (Egzemplarz_Key)
) 
go

/*==============================================================*/
/* Table: Firma_kurierska_KEY                                   */
/*==============================================================*/
create table Firma_kurierska_KEY (
   Firma_kurierska_Key	numeric				 IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_FIRMA_KURIERSKA_KEY primary key nonclustered (Firma_kurierska_Key)
) 
go

/*==============================================================*/
/* Table: Hurtownia_KEY                                         */
/*==============================================================*/
create table Hurtownia_KEY (
   Hurtownia_Key		numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_HURTOWNIA_KEY primary key nonclustered (Hurtownia_Key)
) 
go

/*==============================================================*/
/* Table: Klient_KEY                                            */
/*==============================================================*/
create table Klient_KEY (
   Klient_Key	        numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_KLIENT_KEY primary key nonclustered (Klient_Key)
) 
go

/*==============================================================*/
/* Table: Magazyn_KEY                                           */
/*==============================================================*/
create table Magazyn_KEY (
   Magazyn_Key	        numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_MAGAZYN_KEY primary key nonclustered (Magazyn_Key)
) 
go

/*==============================================================*/
/* Table: Pracownik_KEY                                         */
/*==============================================================*/
create table Pracownik_KEY (
   Pracownik_Key	    numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_PRACOWNIK_KEY primary key nonclustered (Pracownik_Key)
) 
go

/*==============================================================*/
/* Table: Produkt_KEY                                           */
/*==============================================================*/
create table Produkt_KEY (
   Produkt_Key	        numeric				 IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_PRODUKT_KEY primary key nonclustered (Produkt_Key)
) 
go

/*==============================================================*/
/* Table: Przesylka_KEY                                         */
/*==============================================================*/
create table Przesylka_KEY (
   Przesylka_Key	    numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_PRZESYLKA_KEY primary key nonclustered (Przesylka_Key)
) 
go

/*==============================================================*/
/* Table: Reklamacja_KEY                                        */
/*==============================================================*/
create table Reklamacja_KEY (
   Reklamacja_Key		numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_REKLAMACJA_KEY primary key nonclustered (Reklamacja_Key)
) 
go

/*==============================================================*/
/* Table: Sprzedaz_KEY                                          */
/*==============================================================*/
create table Sprzedaz_KEY (
   Sprzedaz_Key         numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_SPRZEDAZ_KEY primary key nonclustered (Sprzedaz_Key)
) 
go

/*==============================================================*/
/* Table: Wysylka_KEY                                           */
/*==============================================================*/
create table Wysylka_KEY  (
   Wysylka_Key	        numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_WYSYLKA_KEY primary key nonclustered (Wysylka_Key)
) 
go

/*==============================================================*/
/* Table: Zakup_KEY                                             */
/*==============================================================*/
create table Zakup_KEY (
   Zakup_Key            numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_ZAKUP_KEY primary key nonclustered (Zakup_Key)
) 
go

/*==============================================================*/
/* Table: Zamowienie_KEY                                        */
/*==============================================================*/
create table Zamowienie_KEY (
   Zamowienie_Key       numeric              IDENTITY(0,1) not null,
   Source_TD			numeric				 not null,		
   Source_cd			varchar(100)		 not null,
   constraint PK_ZAMOWIENIE_KEY primary key nonclustered (Zamowienie_Key)
) 
go


/*============*/
/*    TARGET     */
/*============*/
/*==============================================================*/
/* Table: Egzemplarz_TARGET                                        */
/*==============================================================*/
create table Egzemplarz_TARGET (
   Egzemplarz_Key		        numeric              not null,
   Produkt_ID           numeric              not null,
   Magazyn_ID           numeric              not null,
   Egze_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Egze_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Firma_kurierska_TARGET                                   */
/*==============================================================*/
create table Firma_kurierska_TARGET (
   Firma_kurierska_Key	numeric				 not null,
   Nazwa                varchar(100)         not null,
   Firm_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Firm_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Hurtownia_TARGET                                         */
/*==============================================================*/
create table Hurtownia_TARGET (
   Hurtownia_Key		numeric              not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Nr_mieszkania        varchar(10)          not null,
   Kod_pocztowy         varchar(6)           not null,
   Hurt_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Hurt_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Klient_TARGET                                            */
/*==============================================================*/
create table Klient_TARGET (
   Klient_Key	        numeric              not null,
   Pesel                varchar(11)          not null,
   Imie                 varchar(30)          not null,
   Nazwisko             varchar(30)          not null,
   Numer_konta          varchar(26)          not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Klie_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Klie_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Magazyn_TARGET                                           */
/*==============================================================*/
create table Magazyn_TARGET (
   Magazyn_Key	        numeric              not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Kod_pocztowy         varchar(6)           not null,
   Maga_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Maga_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Pracownik_TARGET                                      */
/*==============================================================*/
create table Pracownik_TARGET (
   Pracownik_Key	    numeric              not null,
   Magazyn_ID           numeric              not null,
   Pesel                varchar(11)          not null,
   Imie                 varchar(30)          not null,
   Nazwisko             varchar(30)          not null,
   Numer_konta          varchar(26)          not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Stanowisko           varchar(100)         not null,
   Prac_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prac_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Produkt_TARGET                                        */
/*==============================================================*/
create table Produkt_TARGET (
   Produkt_Key	        numeric				 not null,
   Nazwa                varchar(100)         not null,
   Kategoria            varchar(100)         not null,
   Cena                 decimal              not null,
   Prod_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prod_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Przesylka_TARGET                                         */
/*==============================================================*/
create table Przesylka_TARGET (
   Przesylka_Key	    numeric              not null,
   Firma_kurierska_ID   numeric              not null,
   Waga                 decimal              not null,
   Prze_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prze_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Reklamacja_TARGET                                        */
/*==============================================================*/
create table Reklamacja_TARGET (
   Reklamacja_Key		numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Rekl_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Rekl_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Sprzedaz_TARGET                                          */
/*==============================================================*/
create table Sprzedaz_TARGET (
   Sprzedaz_Key         numeric              not null,
   Klient_ID            numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Sprz_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Sprz_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Wysylka_TARGET                                           */
/*==============================================================*/
create table Wysylka_TARGET  (
   Wysylka_Key	        numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Przesylka_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   Wysy_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Wysy_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zakup_TARGET                                             */
/*==============================================================*/
create table Zakup_TARGET (
   Zakup_Key            numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Hurtownia_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   Zaku_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Zaku_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zamowienie_TARGET                                     */
/*==============================================================*/
create table Zamowienie_TARGET (
   Zamowienie_Key       numeric              not null,
   Produkt_ID           numeric              not null,
   Pracownik_ID         numeric              not null,
   Klient_ID            numeric              not null,
   L_sztuk              int                  not null,
   Zamo_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Zamo_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go


/*============*/
/*    HST     */
/*============*/
/*==============================================================*/
/* Table: Egzemplarz_HST                                        */
/*==============================================================*/
create table Egzemplarz_HST (
   Egzemplarz_Key	    numeric              not null,
   Produkt_ID           numeric              not null,
   Magazyn_ID           numeric              not null,
   Egze_Start_DTTM		DateTime			 not null,
   Egze_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Firma_kurierska_HST                                   */
/*==============================================================*/
create table Firma_kurierska_HST (
   Firma_kurierska_Key  numeric				 not null,
   Nazwa                varchar(100)         not null,
   Firm_Start_DTTM		DateTime			 not null,
   Firm_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Hurtownia_HST                                         */
/*==============================================================*/
create table Hurtownia_HST (
   Hurtownia_Key        numeric              not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Nr_mieszkania        varchar(10)          not null,
   Kod_pocztowy         varchar(6)           not null,
   Hurt_Start_DTTM		DateTime			 not null,
   Hurt_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Klient_HST                                            */
/*==============================================================*/
create table Klient_HST (
   Klient_Key           numeric              not null,
   Pesel                varchar(11)          not null,
   Imie                 varchar(30)          not null,
   Nazwisko             varchar(30)          not null,
   Numer_konta          varchar(26)          not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Klie_Start_DTTM		DateTime			 not null,
   Klie_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Magazyn_HST                                           */
/*==============================================================*/
create table Magazyn_HST (
   Magazyn_Key	        numeric              not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Kod_pocztowy         varchar(6)           not null,
   Maga_Start_DTTM		DateTime			 not null,
   Maga_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Pracownik_HST                                         */
/*==============================================================*/
create table Pracownik_HST (
   Pracownik_Key	    numeric              not null,
   Magazyn_ID           numeric              not null,
   Pesel                varchar(11)          not null,
   Imie                 varchar(30)          not null,
   Nazwisko             varchar(30)          not null,
   Numer_konta          varchar(26)          not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Stanowisko           varchar(100)         not null,
   Prac_Start_DTTM		DateTime			 not null,
   Prac_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Produkt_HST                                           */
/*==============================================================*/
create table Produkt_HST (
   Produkt_Key	        numeric				 not null,
   Nazwa                varchar(100)         not null,
   Kategoria            varchar(100)         not null,
   Cena                 decimal              not null,
   Prod_Start_DTTM		DateTime			 not null,
   Prod_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Przesylka_HST                                         */
/*==============================================================*/
create table Przesylka_HST (
   Przesylka_Key        numeric              not null,
   Firma_kurierska_ID   numeric              not null,
   Waga                 decimal              not null,
   Prze_Start_DTTM		DateTime			 not null,
   Prze_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Reklamacja_HST                                        */
/*==============================================================*/
create table Reklamacja_HST (
   Reklamacja_Key	    numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Rekl_Start_DTTM		DateTime			 not null,
   Rekl_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Sprzedaz_HST                                          */
/*==============================================================*/
create table Sprzedaz_HST (
   Sprzedaz_Key         numeric              not null,
   Klient_ID            numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Sprz_Start_DTTM		DateTime			 not null,
   Sprz_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Wysylka_HST                                           */
/*==============================================================*/
create table Wysylka_HST  (
   Wysylka_Key          numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Przesylka_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   Wysy_Start_DTTM		DateTime			 not null,
   Wysy_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zakup_HST                                             */
/*==============================================================*/
create table Zakup_HST (
   Zakup_Key            numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Hurtownia_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   Zaku_Start_DTTM		DateTime			 not null,
   Zaku_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zamowienie_HST                                        */
/*==============================================================*/
create table Zamowienie_HST (
   Zamowienie_Key 	    numeric              not null,
   Produkt_ID           numeric              not null,
   Pracownik_ID         numeric              not null,
   Klient_ID            numeric              not null,
   L_sztuk              int                  not null,
   Zamo_Start_DTTM		DateTime			 not null,
   Zamo_End_DTTM		DateTime		     not null,
) ON [PRIMARY]
go


/*==============================================================*/
/* Procedure Insert TEMP to TARGET                              */
/*==============================================================*/
CREATE PROCEDURE [dbo].[InsertKlientTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Klient_HST 
		SELECT tar.Klient_Key,tar.Pesel,tar.Imie,tar.Nazwisko,tar.Numer_konta,tar.Miejscowosc,tar.Ulica,tar.Nr_domu, tar.Klie_Start_DTTM, stg.Klie_Start_DTTM 
			FROM temp.dbo.Klient_STG AS stg 
				INNER JOIN target.dbo.Klient_TARGET AS tar ON stg.Klient_Key=tar.Klient_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Klient_HST 
		SELECT tar.Klient_Key,tar.Pesel,tar.Imie,tar.Nazwisko,tar.Numer_konta,tar.Miejscowosc,tar.Ulica,tar.Nr_domu, tar.Klie_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Klient_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Klient_TMP as tmp
				WHERE tmp.Klient_Key = tar.Klient_Key
			)

	DELETE FROM target.dbo.Klient_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Klient_TMP as tmp
				WHERE tmp.Klient_Key = target.dbo.Klient_TARGET.Klient_Key
			)


	/*TARGET*/
	MERGE target.dbo.Klient_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Klient_STG) AS stg
		ON tar.Klient_Key=stg.Klient_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Pesel=stg.Pesel,
			tar.Imie=stg.Imie,
			tar.Nazwisko=stg.Nazwisko,
			tar.Numer_konta=stg.Numer_konta,
			tar.Miejscowosc=stg.Miejscowosc,
			tar.Ulica=stg.Ulica,
			tar.Nr_domu=stg.Nr_domu,
			tar.Klie_Start_DTTM=stg.Klie_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Klient_Key,stg.Pesel,stg.Imie,stg.Nazwisko,stg.Numer_konta,stg.Miejscowosc,stg.Ulica,stg.Nr_domu, stg.Klie_Start_DTTM, stg.Klie_End_DTTM);

end
go

CREATE PROCEDURE [dbo].[InsertMagazynTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Magazyn_HST 
		SELECT tar.Magazyn_Key,tar.Nazwa,tar.Miejscowosc,tar.Ulica,tar.Nr_domu,tar.Kod_pocztowy, tar.Maga_Start_DTTM, stg.Maga_Start_DTTM 
			FROM temp.dbo.Magazyn_STG AS stg 
				INNER JOIN target.dbo.Magazyn_TARGET AS tar ON stg.Magazyn_Key=tar.Magazyn_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Magazyn_HST 
		SELECT tar.Magazyn_Key,tar.Nazwa,tar.Miejscowosc,tar.Ulica,tar.Nr_domu,tar.Kod_pocztowy, tar.Maga_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Magazyn_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Magazyn_TMP as tmp
				WHERE tmp.Magazyn_Key = tar.Magazyn_Key
			)

	DELETE FROM target.dbo.Magazyn_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Magazyn_TMP as tmp
				WHERE tmp.Magazyn_Key = target.dbo.Magazyn_TARGET.Magazyn_Key
			)
			
							
	/*TARGET*/
	MERGE target.dbo.Magazyn_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Magazyn_STG) AS stg
		ON tar.Magazyn_Key=stg.Magazyn_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Nazwa=stg.Nazwa,
			tar.Miejscowosc=stg.Miejscowosc,
			tar.Ulica=stg.Ulica,
			tar.Nr_domu=stg.Nr_domu,
			tar.Kod_pocztowy=stg.Kod_pocztowy,
			tar.Maga_Start_DTTM=stg.Maga_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Magazyn_Key,stg.Nazwa,stg.Miejscowosc,stg.Ulica,stg.Nr_domu,stg.Kod_pocztowy, stg.Maga_Start_DTTM, stg.Maga_End_DTTM);

	

end
go

CREATE PROCEDURE [dbo].[InsertProduktTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Produkt_HST 
		SELECT tar.Produkt_Key,tar.Nazwa,tar.Kategoria,tar.Cena, tar.Prod_Start_DTTM, stg.Prod_Start_DTTM 
			FROM temp.dbo.Produkt_STG AS stg 
				INNER JOIN target.dbo.Produkt_TARGET AS tar ON stg.Produkt_Key=tar.Produkt_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Produkt_HST 
		SELECT tar.Produkt_Key,tar.Nazwa,tar.Kategoria,tar.Cena, tar.Prod_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Produkt_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Produkt_TMP as tmp
				WHERE tmp.Produkt_Key = tar.Produkt_Key
			)

	DELETE FROM target.dbo.Produkt_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Produkt_TMP as tmp
				WHERE tmp.Produkt_Key = target.dbo.Produkt_TARGET.Produkt_Key
			)

	/*TARGET*/
	MERGE target.dbo.Produkt_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Produkt_STG) AS stg
		ON tar.Produkt_Key=stg.Produkt_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Nazwa=stg.Nazwa,
			tar.Kategoria=stg.Kategoria,
			tar.Cena=stg.Cena,
			tar.Prod_Start_DTTM=stg.Prod_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Produkt_Key,stg.Nazwa,stg.Kategoria,stg.Cena,stg.Prod_Start_DTTM, stg.Prod_End_DTTM);


end
go

CREATE PROCEDURE [dbo].[InsertEgzemplarzTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Egzemplarz_HST 
		SELECT tar.Egzemplarz_Key,tar.Produkt_ID,tar.Magazyn_ID, tar.Egze_Start_DTTM, stg.Egze_Start_DTTM 
			FROM temp.dbo.Egzemplarz_STG AS stg 
				INNER JOIN target.dbo.Egzemplarz_TARGET AS tar ON stg.Egzemplarz_Key=tar.Egzemplarz_Key 
				
	/*HST Deleted*/
	INSERT INTO target.dbo.Egzemplarz_HST 
		SELECT tar.Egzemplarz_Key,tar.Produkt_ID,tar.Magazyn_ID, tar.Egze_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Egzemplarz_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Egzemplarz_TMP as tmp
				WHERE tmp.Egzemplarz_Key = tar.Egzemplarz_Key
			)

	DELETE FROM target.dbo.Egzemplarz_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Egzemplarz_TMP as tmp
				WHERE tmp.Egzemplarz_Key = target.dbo.Egzemplarz_TARGET.Egzemplarz_Key
			)

	/*TARGET*/
	MERGE target.dbo.Egzemplarz_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Egzemplarz_STG) AS stg
		ON tar.Egzemplarz_Key=stg.Egzemplarz_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Produkt_ID=stg.Produkt_ID,
			tar.Magazyn_ID=stg.Magazyn_ID,
			tar.Egze_Start_DTTM=stg.Egze_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Egzemplarz_Key,stg.Produkt_ID,stg.Magazyn_ID,stg.Egze_Start_DTTM, stg.Egze_End_DTTM);

end
go


CREATE PROCEDURE [dbo].[InsertHurtowniaTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Hurtownia_HST 
		SELECT tar.Hurtownia_Key,tar.Nazwa,tar.Miejscowosc,tar.Ulica,tar.Nr_domu,tar.Nr_mieszkania,tar.Kod_pocztowy, tar.Hurt_Start_DTTM, stg.Hurt_Start_DTTM 
			FROM temp.dbo.Hurtownia_STG AS stg 
				INNER JOIN target.dbo.Hurtownia_TARGET AS tar ON stg.Hurtownia_Key=tar.Hurtownia_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Hurtownia_HST 
		SELECT tar.Hurtownia_Key,tar.Nazwa,tar.Miejscowosc,tar.Ulica,tar.Nr_domu,tar.Nr_mieszkania,tar.Kod_pocztowy, tar.Hurt_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Hurtownia_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Hurtownia_TMP as tmp
				WHERE tmp.Hurtownia_Key = tar.Hurtownia_Key
			)

	DELETE FROM target.dbo.Hurtownia_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Hurtownia_TMP as tmp
				WHERE tmp.Hurtownia_Key = target.dbo.Hurtownia_TARGET.Hurtownia_Key
			)

	/*TARGET*/
	MERGE target.dbo.Hurtownia_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Hurtownia_STG) AS stg
		ON tar.Hurtownia_Key=stg.Hurtownia_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Nazwa=stg.Nazwa,
			tar.Miejscowosc=stg.Miejscowosc,
			tar.Ulica=stg.Ulica,
			tar.Nr_domu=stg.Nr_domu,
			tar.Nr_mieszkania=stg.Nr_mieszkania,
			tar.Kod_pocztowy=stg.Kod_pocztowy,
			tar.Hurt_Start_DTTM=stg.Hurt_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Hurtownia_Key,stg.Nazwa,stg.Miejscowosc,stg.Ulica,stg.Nr_domu,stg.Nr_mieszkania,stg.Kod_pocztowy, stg.Hurt_Start_DTTM, stg.Hurt_End_DTTM);

end
go


CREATE PROCEDURE [dbo].[InsertFirma_kurierskaTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Firma_kurierska_HST 
		SELECT tar.Firma_kurierska_Key,tar.Nazwa,tar.Firm_Start_DTTM, stg.Firm_Start_DTTM 
			FROM temp.dbo.Firma_kurierska_STG AS stg 
				INNER JOIN target.dbo.Firma_kurierska_TARGET AS tar ON stg.Firma_kurierska_Key=tar.Firma_kurierska_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Firma_kurierska_HST 
		SELECT tar.Firma_kurierska_Key,tar.Nazwa,tar.Firm_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Firma_kurierska_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Firma_kurierska_TMP as tmp
				WHERE tmp.Firma_kurierska_Key = tar.Firma_kurierska_Key
			)

	DELETE FROM target.dbo.Firma_kurierska_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Firma_kurierska_TMP as tmp
				WHERE tmp.Firma_kurierska_Key = target.dbo.Firma_kurierska_TARGET.Firma_kurierska_Key
			)


	/*TARGET*/
	MERGE target.dbo.Firma_kurierska_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Firma_kurierska_STG) AS stg
		ON tar.Firma_kurierska_Key=stg.Firma_kurierska_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Nazwa=stg.Nazwa,
			tar.Firm_Start_DTTM=stg.Firm_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Firma_kurierska_Key,stg.Nazwa,stg.Firm_Start_DTTM, stg.Firm_End_DTTM);


end
go

CREATE PROCEDURE [dbo].[InsertPrzesylkaTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Przesylka_HST 
		SELECT tar.Przesylka_Key,tar.Firma_kurierska_ID,tar.Waga, tar.Prze_Start_DTTM, stg.Prze_Start_DTTM 
			FROM temp.dbo.Przesylka_STG AS stg 
				INNER JOIN target.dbo.Przesylka_TARGET AS tar ON stg.Przesylka_Key=tar.Przesylka_Key 
						
	/*HST Deleted*/
	INSERT INTO target.dbo.Przesylka_HST 
		SELECT tar.Przesylka_Key,tar.Firma_kurierska_ID,tar.Waga, tar.Prze_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Przesylka_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Przesylka_TMP as tmp
				WHERE tmp.Przesylka_Key = tar.Przesylka_Key
			)

	DELETE FROM target.dbo.Przesylka_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Przesylka_TMP as tmp
				WHERE tmp.Przesylka_Key = target.dbo.Przesylka_TARGET.Przesylka_Key
			)

	/*TARGET*/
	MERGE target.dbo.Przesylka_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Przesylka_STG) AS stg
		ON tar.Przesylka_Key=stg.Przesylka_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Firma_kurierska_ID=stg.Firma_kurierska_ID,
			tar.Waga=stg.Waga,
			tar.Prze_Start_DTTM=stg.Prze_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Przesylka_Key,stg.Firma_kurierska_ID,stg.Waga,stg.Prze_Start_DTTM, stg.Prze_End_DTTM);

end
go

CREATE PROCEDURE [dbo].[InsertPracownikTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Pracownik_HST 
		SELECT tar.Pracownik_Key,tar.Magazyn_ID,tar.Pesel,tar.Imie,tar.Nazwisko,tar.Numer_konta,tar.Miejscowosc,tar.Ulica,tar.Nr_domu,tar.Stanowisko, tar.Prac_Start_DTTM, stg.Prac_Start_DTTM 
			FROM temp.dbo.Pracownik_STG AS stg 
				INNER JOIN target.dbo.Pracownik_TARGET AS tar ON stg.Pracownik_Key=tar.Pracownik_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Pracownik_HST 
		SELECT tar.Pracownik_Key,tar.Magazyn_ID,tar.Pesel,tar.Imie,tar.Nazwisko,tar.Numer_konta,tar.Miejscowosc,tar.Ulica,tar.Nr_domu,tar.Stanowisko, tar.Prac_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Pracownik_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Pracownik_TMP as tmp
				WHERE tmp.Pracownik_Key = tar.Pracownik_Key
			)

	DELETE FROM target.dbo.Pracownik_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Pracownik_TMP as tmp
				WHERE tmp.Pracownik_Key = target.dbo.Pracownik_TARGET.Pracownik_Key
			)
						

	/*TARGET*/
	MERGE target.dbo.Pracownik_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Pracownik_STG) AS stg
		ON tar.Pracownik_Key=stg.Pracownik_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Magazyn_ID=stg.Magazyn_ID,
			tar.Pesel=stg.Pesel,
			tar.Imie=stg.Imie,
			tar.Nazwisko=stg.Nazwisko,
			tar.Numer_konta=stg.Numer_konta,
			tar.Miejscowosc=stg.Miejscowosc,
			tar.Ulica=stg.Ulica,
			tar.Nr_domu=stg.Nr_domu,
			tar.Stanowisko=stg.Stanowisko,
			tar.Prac_Start_DTTM=stg.Prac_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Pracownik_Key,stg.Magazyn_ID,stg.Pesel,stg.Imie,stg.Nazwisko,stg.Numer_konta,stg.Miejscowosc,stg.Ulica,stg.Nr_domu,stg.Stanowisko, stg.Prac_Start_DTTM, stg.Prac_End_DTTM);
		
end
go


CREATE PROCEDURE [dbo].[InsertWysylkaTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Wysylka_HST 
		SELECT tar.Wysylka_Key,tar.Egzemplarz_ID,tar.Klient_ID,tar.Przesylka_ID,tar.Pracownik_ID, tar.Wysy_Start_DTTM, stg.Wysy_Start_DTTM 
			FROM temp.dbo.Wysylka_STG AS stg 
				INNER JOIN target.dbo.Wysylka_TARGET AS tar ON stg.Wysylka_Key=tar.Wysylka_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Wysylka_HST 
		SELECT tar.Wysylka_Key,tar.Egzemplarz_ID,tar.Klient_ID,tar.Przesylka_ID,tar.Pracownik_ID, tar.Wysy_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Wysylka_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Wysylka_TMP as tmp
				WHERE tmp.Wysylka_Key = tar.Wysylka_Key
			)

	DELETE FROM target.dbo.Wysylka_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Wysylka_TMP as tmp
				WHERE tmp.Wysylka_Key = target.dbo.Wysylka_TARGET.Wysylka_Key
			)
						 

	/*TARGET*/
	MERGE target.dbo.Wysylka_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Wysylka_STG) AS stg
		ON tar.Wysylka_Key=stg.Wysylka_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Egzemplarz_ID=stg.Egzemplarz_ID,
			tar.Klient_ID=stg.Klient_ID,
			tar.Przesylka_ID=stg.Przesylka_ID,
			tar.Pracownik_ID=stg.Pracownik_ID,
			tar.Wysy_Start_DTTM=stg.Wysy_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Wysylka_Key,stg.Egzemplarz_ID,stg.Klient_ID,stg.Przesylka_ID,stg.Pracownik_ID, stg.Wysy_Start_DTTM, stg.Wysy_End_DTTM);

end
go

CREATE PROCEDURE [dbo].[InsertZamowienieTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Zamowienie_HST 
		SELECT tar.Zamowienie_Key,tar.Produkt_ID,tar.Pracownik_ID,tar.Klient_ID,tar.L_sztuk, tar.Zamo_Start_DTTM, stg.Zamo_Start_DTTM 
			FROM temp.dbo.Zamowienie_STG AS stg 
				INNER JOIN target.dbo.Zamowienie_TARGET AS tar ON stg.Zamowienie_Key=tar.Zamowienie_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Zamowienie_HST 
		SELECT tar.Zamowienie_Key,tar.Produkt_ID,tar.Pracownik_ID,tar.Klient_ID,tar.L_sztuk, tar.Zamo_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Zamowienie_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Zamowienie_TMP as tmp
				WHERE tmp.Zamowienie_Key = tar.Zamowienie_Key
			)

	DELETE FROM target.dbo.Zamowienie_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Zamowienie_TMP as tmp
				WHERE tmp.Zamowienie_Key = target.dbo.Zamowienie_TARGET.Zamowienie_Key
			)

	/*TARGET*/
	MERGE target.dbo.Zamowienie_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Zamowienie_STG) AS stg
		ON tar.Zamowienie_Key=stg.Zamowienie_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Produkt_ID=stg.Produkt_ID,
			tar.Pracownik_ID=stg.Pracownik_ID,
			tar.Klient_ID=stg.Klient_ID,
			tar.L_sztuk=stg.L_sztuk,
			tar.Zamo_Start_DTTM=stg.Zamo_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Zamowienie_Key,stg.Produkt_ID,stg.Pracownik_ID,stg.Klient_ID,stg.L_sztuk, stg.Zamo_Start_DTTM, stg.Zamo_End_DTTM);

end
go	


CREATE PROCEDURE [dbo].[InsertReklamacjaTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Reklamacja_HST 
		SELECT tar.Reklamacja_Key,tar.Pracownik_ID,tar.Egzemplarz_ID,tar.Klient_ID, tar.Rekl_Start_DTTM, stg.Rekl_Start_DTTM 
			FROM temp.dbo.Reklamacja_STG AS stg 
				INNER JOIN target.dbo.Reklamacja_TARGET AS tar ON stg.Reklamacja_Key=tar.Reklamacja_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Reklamacja_HST 
		SELECT tar.Reklamacja_Key,tar.Pracownik_ID,tar.Egzemplarz_ID,tar.Klient_ID, tar.Rekl_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Reklamacja_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Reklamacja_TMP as tmp
				WHERE tmp.Reklamacja_Key = tar.Reklamacja_Key
			)

	DELETE FROM target.dbo.Reklamacja_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Reklamacja_TMP as tmp
				WHERE tmp.Reklamacja_Key = target.dbo.Reklamacja_TARGET.Reklamacja_Key
			)


	/*TARGET*/
	MERGE target.dbo.Reklamacja_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Reklamacja_STG) AS stg
		ON tar.Reklamacja_Key=stg.Reklamacja_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Pracownik_ID=stg.Pracownik_ID,
			tar.Egzemplarz_ID=stg.Egzemplarz_ID,
			tar.Klient_ID=stg.Klient_ID,
			tar.Rekl_Start_DTTM=stg.Rekl_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Reklamacja_Key,stg.Pracownik_ID,stg.Egzemplarz_ID,stg.Klient_ID, stg.Rekl_Start_DTTM, stg.Rekl_End_DTTM)
;

end
go	


CREATE PROCEDURE [dbo].[InsertZakupTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Zakup_HST 
		SELECT tar.Zakup_Key,tar.Egzemplarz_ID,tar.Hurtownia_ID,tar.Pracownik_ID, tar.Zaku_Start_DTTM, stg.Zaku_Start_DTTM 
			FROM temp.dbo.Zakup_STG AS stg 
				INNER JOIN target.dbo.Zakup_TARGET AS tar ON stg.Zakup_Key=tar.Zakup_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Zakup_HST 
		SELECT tar.Zakup_Key,tar.Egzemplarz_ID,tar.Hurtownia_ID,tar.Pracownik_ID, tar.Zaku_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Zakup_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Zakup_TMP as tmp
				WHERE tmp.Zakup_Key = tar.Zakup_Key
			)

	DELETE FROM target.dbo.Zakup_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Zakup_TMP as tmp
				WHERE tmp.Zakup_Key = target.dbo.Zakup_TARGET.Zakup_Key
			)

	/*TARGET*/
	MERGE target.dbo.Zakup_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Zakup_STG) AS stg
		ON tar.Zakup_Key=stg.Zakup_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Egzemplarz_ID=stg.Egzemplarz_ID,
			tar.Hurtownia_ID=stg.Hurtownia_ID,
			tar.Pracownik_ID=stg.Pracownik_ID,
			tar.Zaku_Start_DTTM=stg.Zaku_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Zakup_Key,stg.Egzemplarz_ID,stg.Hurtownia_ID,stg.Pracownik_ID, stg.Zaku_Start_DTTM, stg.Zaku_End_DTTM);

end
go


CREATE PROCEDURE [dbo].[InsertSprzedazTEMPtoTARGET] as

begin
	/*HST*/
	INSERT INTO target.dbo.Sprzedaz_HST 
		SELECT tar.Sprzedaz_Key,tar.Klient_ID,tar.Pracownik_ID,tar.Egzemplarz_ID, tar.Sprz_Start_DTTM, stg.Sprz_Start_DTTM 
			FROM temp.dbo.Sprzedaz_STG AS stg 
				INNER JOIN target.dbo.Sprzedaz_TARGET AS tar ON stg.Sprzedaz_Key=tar.Sprzedaz_Key 

	/*HST Deleted*/
	INSERT INTO target.dbo.Sprzedaz_HST 
		SELECT tar.Sprzedaz_Key,tar.Klient_ID,tar.Pracownik_ID,tar.Egzemplarz_ID, tar.Sprz_Start_DTTM, convert(varchar(25), getdate(), 120)
			FROM target.dbo.Sprzedaz_TARGET AS tar
			WHERE not exists(
				SELECT * FROM temp.dbo.Sprzedaz_TMP as tmp
				WHERE tmp.Sprzedaz_Key = tar.Sprzedaz_Key
			)

	DELETE FROM target.dbo.Sprzedaz_TARGET
			WHERE not exists(
				SELECT * FROM temp.dbo.Sprzedaz_TMP as tmp
				WHERE tmp.Sprzedaz_Key = target.dbo.Sprzedaz_TARGET.Sprzedaz_Key
			)
						

	/*TARGET*/
	MERGE target.dbo.Sprzedaz_TARGET AS tar
	USING (SELECT * FROM temp.dbo.Sprzedaz_STG) AS stg
		ON tar.Sprzedaz_Key=stg.Sprzedaz_Key
	WHEN MATCHED THEN
		UPDATE SET
			tar.Klient_ID=stg.Klient_ID,
			tar.Pracownik_ID=stg.Pracownik_ID,
			tar.Egzemplarz_ID=stg.Egzemplarz_ID,
			tar.Sprz_Start_DTTM=stg.Sprz_Start_DTTM
	WHEN NOT MATCHED THEN
		INSERT VALUES(stg.Sprzedaz_Key,stg.Klient_ID,stg.Pracownik_ID,stg.Egzemplarz_ID, stg.Sprz_Start_DTTM, stg.Sprz_End_DTTM);

end
go


CREATE PROCEDURE [dbo].[InsertTEMPtoTARGET]
AS
declare @dane_order numeric
declare @t_Target varchar(100)
declare cur_Meta CURSOR LOCAL for
    select distinct T_Target, max(Dane_order) 
		from [metadata].[dbo].Meta_dane 
		group by T_Target	
		order by max(Dane_order)
begin

open cur_Meta

fetch next from cur_Meta into @t_Target, @dane_order

while @@FETCH_STATUS = 0 
BEGIN
	EXECUTE('EXEC Insert'+@t_Target+'TEMPtoTARGET')

	fetch next from cur_Meta into @t_Target, @dane_order
END

close cur_Meta
deallocate cur_Meta
end
go



/*==============================================================*/
/* View: Liczba_egzemplarzy_produktow                           */
/*==============================================================*/
CREATE VIEW [dbo].[Liczba_egzemplarzy_produktow]  
AS
	SELECT maga.Nazwa AS NazwaMagazynu, prod.Nazwa AS NazwaProduktu, COUNT(egze.Egzemplarz_Key) AS Liczba_egzemplarzy
		FROM target.dbo.Produkt_TARGET AS prod
			INNER JOIN target.dbo.Egzemplarz_TARGET AS egze
				ON egze.Produkt_ID=prod.Produkt_Key
					INNER JOIN target.dbo.Magazyn_TARGET AS maga
						ON maga.Magazyn_Key=egze.Magazyn_ID
		GROUP BY maga.Magazyn_Key, maga.Nazwa, prod.Produkt_Key, prod.Nazwa;
go

/*==============================================================*/
/* View: Wydatki_klientow                                       */
/*==============================================================*/
CREATE VIEW [dbo].[Wydatki_klientow] 
AS
	SELECT klie.Imie, klie.Nazwisko, klie.Pesel, SUM(prod.Cena) AS Suma_wydatkow
		FROM target.dbo.Klient_TARGET AS klie
			INNER JOIN target.dbo.Sprzedaz_TARGET AS sprze
				ON sprze.Klient_ID=klie.Klient_Key
					INNER JOIN target.dbo.Egzemplarz_TARGET AS egze
						ON egze.Egzemplarz_Key=sprze.Egzemplarz_ID
							INNER JOIN target.dbo.Produkt_TARGET AS prod
								ON prod.Produkt_Key=egze.Produkt_ID
		GROUP BY klie.Klient_Key, klie.Imie, klie.Nazwisko, klie.Pesel;
go


/*==============================================================*/
/* View: Liczba_reklamacji                                     */
/*==============================================================*/
CREATE VIEW [dbo].[Liczba_reklamacji] 
AS
	SELECT prod.Kategoria AS Kategoria_produktu, prod.Nazwa AS Nazwa_produktu, Count(prod.Produkt_Key) AS Liczba_reklamacji
		FROM target.dbo.Reklamacja_TARGET AS rekl
			INNER JOIN target.dbo.Egzemplarz_TARGET AS egze
				ON rekl.Egzemplarz_ID=egze.Egzemplarz_Key
					INNER JOIN target.dbo.Produkt_TARGET AS prod
						ON egze.Produkt_ID=prod.Produkt_Key
		GROUP BY prod.Produkt_Key, prod.Nazwa, prod.Kategoria;
go