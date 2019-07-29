USE [master]
GO

if exists (select 1
           from  sysdatabases
           where  name IN ('temp'))
   DROP DATABASE temp
go

CREATE DATABASE [temp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'temp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\temp.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'temp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\temp_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [temp] SET COMPATIBILITY_LEVEL = 140
GO
ALTER DATABASE [temp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [temp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [temp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [temp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [temp] SET ARITHABORT OFF 
GO
ALTER DATABASE [temp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [temp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [temp] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [temp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [temp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [temp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [temp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [temp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [temp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [temp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [temp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [temp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [temp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [temp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [temp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [temp] SET  READ_WRITE 
GO
ALTER DATABASE [temp] SET RECOVERY FULL 
GO
ALTER DATABASE [temp] SET  MULTI_USER 
GO
ALTER DATABASE [temp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [temp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [temp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [temp]
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

Use [temp]
GO


/*============*/
/*    TMP     */
/*============*/
if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_TMP')
            and   type = 'U')
   drop table Egzemplarz_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska_TMP')
            and   type = 'U')
   drop table Firma_kurierska_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia_TMP')
            and   type = 'U')
   drop table Hurtownia_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient_TMP')
            and   type = 'U')
   drop table Klient_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_TMP')
            and   type = 'U')
   drop table Magazyn_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_TMP')
            and   type = 'U')
   drop table Pracownik_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_TMP')
            and   type = 'U')
   drop table Produkt_TMP
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka_TMP')
            and   type = 'U')
   drop table Przesylka_TMP
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_TMP')
            and   type = 'U')
   drop table Reklamacja_TMP
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz_TMP')
            and   type = 'U')
   drop table Sprzedaz_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka_TMP')
            and   type = 'U')
   drop table Wysylka_TMP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup_TMP')
            and   type = 'U')
   drop table Zakup_TMP
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie_TMP')
            and   type = 'U')
   drop table Zamowienie_TMP
go


/*============*/
/*    STG     */
/*============*/
if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_STG')
            and   type = 'U')
   drop table Egzemplarz_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska_STG')
            and   type = 'U')
   drop table Firma_kurierska_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia_STG')
            and   type = 'U')
   drop table Hurtownia_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient_STG')
            and   type = 'U')
   drop table Klient_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_STG')
            and   type = 'U')
   drop table Magazyn_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_STG')
            and   type = 'U')
   drop table Pracownik_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_STG')
            and   type = 'U')
   drop table Produkt_STG
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka_STG')
            and   type = 'U')
   drop table Przesylka_STG
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_STG')
            and   type = 'U')
   drop table Reklamacja_STG
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz_STG')
            and   type = 'U')
   drop table Sprzedaz_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka_STG')
            and   type = 'U')
   drop table Wysylka_STG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup_STG')
            and   type = 'U')
   drop table Zakup_STG
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie_STG')
            and   type = 'U')
   drop table Zamowienie_STG
go


/*============*/
/*    BAD     */
/*============*/
if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_BAD')
            and   type = 'U')
   drop table Egzemplarz_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska_BAD')
            and   type = 'U')
   drop table Firma_kurierska_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia_BAD')
            and   type = 'U')
   drop table Hurtownia_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient_BAD')
            and   type = 'U')
   drop table Klient_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_BAD')
            and   type = 'U')
   drop table Magazyn_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_BAD')
            and   type = 'U')
   drop table Pracownik_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_BAD')
            and   type = 'U')
   drop table Produkt_BAD
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka_BAD')
            and   type = 'U')
   drop table Przesylka_BAD
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_BAD')
            and   type = 'U')
   drop table Reklamacja_BAD
go



if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz_BAD')
            and   type = 'U')
   drop table Sprzedaz_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka_BAD')
            and   type = 'U')
   drop table Wysylka_BAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup_BAD')
            and   type = 'U')
   drop table Zakup_BAD
go


if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie_BAD')
            and   type = 'U')
   drop table Zamowienie_BAD
go


/*============*/
/*    TMP     */
/*============*/
/*==============================================================*/
/* Table: Egzemplarz_TMP                                        */
/*==============================================================*/
create table Egzemplarz_TMP (
   Egzemplarz_Key		numeric              not null,
   Produkt_ID           numeric              not null,
   Magazyn_ID           numeric              not null,
   Egze_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Egze_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Firma_kurierska_TMP                                   */
/*==============================================================*/
create table Firma_kurierska_TMP (
   Firma_kurierska_Key	numeric				 not null,
   Nazwa                varchar(100)         not null,
   Firm_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Firm_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Hurtownia_TMP                                         */
/*==============================================================*/
create table Hurtownia_TMP (
   Hurtownia_Key		numeric              not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Nr_mieszkania        varchar(10)          null,
   Kod_pocztowy         varchar(6)           not null,
   Hurt_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Hurt_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Klient_TMP                                            */
/*==============================================================*/
create table Klient_TMP (
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
/* Table: Magazyn_TMP                                           */
/*==============================================================*/
create table Magazyn_TMP (
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
/* Table: Pracownik_TMP                                         */
/*==============================================================*/
create table Pracownik_TMP (
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
/* Table: Produkt_TMP                                           */
/*==============================================================*/
create table Produkt_TMP (
   Produkt_Key	        numeric				 not null,
   Nazwa                varchar(100)         not null,
   Kategoria            varchar(100)         not null,
   Cena                 decimal              not null,
   Prod_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prod_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Przesylka_TMP                                         */
/*==============================================================*/
create table Przesylka_TMP (
   Przesylka_Key	    numeric              not null,
   Firma_kurierska_ID   numeric              not null,
   Waga                 decimal              not null,
   Prze_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prze_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Reklamacja_TMP                                        */
/*==============================================================*/
create table Reklamacja_TMP (
   Reklamacja_Key		numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Rekl_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Rekl_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Sprzedaz_TMP                                          */
/*==============================================================*/
create table Sprzedaz_TMP (
   Sprzedaz_Key         numeric              not null,
   Klient_ID            numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Sprz_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Sprz_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Wysylka_TMP                                           */
/*==============================================================*/
create table Wysylka_TMP  (
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
/* Table: Zakup_TMP                                             */
/*==============================================================*/
create table Zakup_TMP (
   Zakup_Key            numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Hurtownia_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   Zaku_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Zaku_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zamowienie_TMP                                        */
/*==============================================================*/
create table Zamowienie_TMP (
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
/*    STG     */
/*============*/
/*==============================================================*/
/* Table: Egzemplarz_STG                                        */
/*==============================================================*/
create table Egzemplarz_STG (
   Egzemplarz_Key		numeric              not null,
   Produkt_ID           numeric              not null,
   Magazyn_ID           numeric              not null,
   Egze_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Egze_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Firma_kurierska_STG                                   */
/*==============================================================*/
create table Firma_kurierska_STG (
   Firma_kurierska_Key	numeric				 not null,
   Nazwa                varchar(100)         not null,
   Firm_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Firm_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Hurtownia_STG                                         */
/*==============================================================*/
create table Hurtownia_STG (
   Hurtownia_Key		numeric              not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Nr_mieszkania        varchar(10)          null,
   Kod_pocztowy         varchar(6)           not null,
   Hurt_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Hurt_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Klient_STG                                            */
/*==============================================================*/
create table Klient_STG (
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
/* Table: Magazyn_STG                                           */
/*==============================================================*/
create table Magazyn_STG (
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
/* Table: Pracownik_STG                                         */
/*==============================================================*/
create table Pracownik_STG (
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
/* Table: Produkt_STG                                           */
/*==============================================================*/
create table Produkt_STG (
   Produkt_Key	        numeric				 not null,
   Nazwa                varchar(100)         not null,
   Kategoria            varchar(100)         not null,
   Cena                 decimal              not null,
   Prod_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prod_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Przesylka_STG                                         */
/*==============================================================*/
create table Przesylka_STG (
   Przesylka_Key	    numeric              not null,
   Firma_kurierska_ID   numeric              not null,
   Waga                 decimal              not null,
   Prze_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Prze_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Reklamacja_STG                                        */
/*==============================================================*/
create table Reklamacja_STG (
   Reklamacja_Key		numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Rekl_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Rekl_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Sprzedaz_STG                                          */
/*==============================================================*/
create table Sprzedaz_STG (
   Sprzedaz_Key         numeric              not null,
   Klient_ID            numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Sprz_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Sprz_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Wysylka_STG                                           */
/*==============================================================*/
create table Wysylka_STG  (
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
/* Table: Zakup_STG                                             */
/*==============================================================*/
create table Zakup_STG (
   Zakup_Key            numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Hurtownia_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   Zaku_Start_DTTM		DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
   Zaku_End_DTTM		DateTime	DEFAULT('9999-12-31 23:59:59')	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zamowienie_STG                                        */
/*==============================================================*/
create table Zamowienie_STG (
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
/*    BAD     */
/*============*/
/*==============================================================*/
/* Table: Egzemplarz_BAD                                        */
/*==============================================================*/
create table Egzemplarz_BAD (
   Egzemplarz_PK	    numeric              null,
   Produkt_ID           numeric              null,
   Magazyn_ID           numeric              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Firma_kurierska_BAD                                   */
/*==============================================================*/
create table Firma_kurierska_BAD (
   Firma_kurierska_PK   numeric				 null,
   Nazwa                varchar(100)         null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Hurtownia_BAD                                         */
/*==============================================================*/
create table Hurtownia_BAD (
   Hurtownia_PK		    numeric              null,
   Nazwa                varchar(100)         null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Nr_mieszkania        varchar(10)          null,
   Kod_pocztowy         varchar(6)           null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Klient_BAD                                            */
/*==============================================================*/
create table Klient_BAD (
   Klient_PK	        numeric              null,
   Pesel                varchar(11)          null,
   Imie                 varchar(30)          null,
   Nazwisko             varchar(30)          null,
   Numer_konta          varchar(26)          null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Magazyn_BAD                                           */
/*==============================================================*/
create table Magazyn_BAD (
   Magazyn_PK	        numeric              null,
   Nazwa                varchar(100)         null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Kod_pocztowy         varchar(6)           null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Pracownik_BAD                                         */
/*==============================================================*/
create table Pracownik_BAD (
   Pracownik_PK	        numeric              null,
   Magazyn_ID           numeric              null,
   Pesel                varchar(11)          null,
   Imie                 varchar(30)          null,
   Nazwisko             varchar(30)          null,
   Numer_konta          varchar(26)          null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Stanowisko           varchar(100)         null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Produkt_BAD                                           */
/*==============================================================*/
create table Produkt_BAD (
   Produkt_PK           numeric				 null,
   Nazwa                varchar(100)         null,
   Kategoria            varchar(100)         null,
   Cena                 decimal              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Przesylka_BAD                                         */
/*==============================================================*/
create table Przesylka_BAD (
   Przesylka_PK         numeric              null,
   Firma_kurierska_ID   numeric              null,
   Waga                 decimal              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Reklamacja_BAD                                        */
/*==============================================================*/
create table Reklamacja_BAD (
   Reklamacja_PK        numeric              null,
   Pracownik_ID         numeric              null,
   Egzemplarz_ID        numeric              null,
   Klient_ID            numeric              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Sprzedaz_BAD                                          */
/*==============================================================*/
create table Sprzedaz_BAD (
   Sprzedaz_PK          numeric              null,
   Klient_ID            numeric              null,
   Pracownik_ID         numeric              null,
   Egzemplarz_ID        numeric              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Wysylka_BAD                                           */
/*==============================================================*/
create table Wysylka_BAD  (
   Wysylka_PK	        numeric              null,
   Egzemplarz_ID        numeric              null,
   Klient_ID            numeric              null,
   Przesylka_ID         numeric              null,
   Pracownik_ID         numeric              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zakup_BAD                                             */
/*==============================================================*/
create table Zakup_BAD (
   Zakup_PK             numeric              null,
   Egzemplarz_ID        numeric              null,
   Hurtownia_ID         numeric              null,
   Pracownik_ID         numeric              null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go

/*==============================================================*/
/* Table: Zamowienie_BAD                                        */
/*==============================================================*/
create table Zamowienie_BAD (
   Zamowienie_PK  	    numeric              null,
   Produkt_ID           numeric              null,
   Pracownik_ID         numeric              null,
   Klient_ID            numeric              null,
   L_sztuk              int                  null,
   Source				varchar(100)		 not null,
   Date_BAD				DateTime	DEFAULT(convert(varchar(25), getdate(), 120))	not null,
) ON [PRIMARY]
go







/*==============================================================*/
/* Procedure Insert Stage to Temp                               */
/*==============================================================*/
CREATE PROCEDURE [dbo].[InsertKlient] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Klient_Key,a.Pesel,a.Imie,a.Nazwisko,a.Numer_konta,a.Miejscowosc,a.Ulica,a.Nr_domu from stage.dbo.' + @t_Stage + ' as a 
			inner join target.dbo.' + @t_Target + '_KEY as k' + ' 
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''')	

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null')	

	
END
GO

CREATE PROCEDURE [dbo].[InsertMagazyn] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Magazyn_Key,a.Nazwa,a.Miejscowosc,a.Ulica,a.Nr_domu,a.Kod_pocztowy from stage.dbo.' + @t_Stage + ' as a 
			inner join target.dbo.' + @t_Target + '_KEY as k' + ' 
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''')	

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null')	
	
END
GO

CREATE PROCEDURE [dbo].[InsertProdukt] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Produkt_Key,a.Nazwa,a.Kategoria,a.Cena from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as k' + ' 
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''')	

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null')	
	
END
GO

CREATE PROCEDURE [dbo].[InsertHurtownia] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Hurtownia_Key,a.Nazwa,Miejscowosc,a.Ulica,a.Nr_domu,a.Nr_mieszkania,a.Kod_pocztowy from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as k' + ' 
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''')	

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null')	
	
END
GO

CREATE PROCEDURE [dbo].[InsertFirma_kurierska] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Firma_kurierska_Key,a.Nazwa from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as k' + ' 
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''')	

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null')	
	
END
GO

CREATE PROCEDURE [dbo].[InsertEgzemplarz] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Produkt_KEY 
							where Source_TD = a.Produkt_ID and Source_cd=''' + @System + ''') and 
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Magazyn_KEY 
							where Source_TD = a.Magazyn_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Egzemplarz_Key,p.Produkt_Key,m.Magazyn_Key from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as k
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''
					inner join target.dbo.Produkt_KEY as p 
						on p.Source_TD = a.Produkt_ID and p.Source_cd=''' + @System + '''
							inner join target.dbo.Magazyn_KEY as m' + ' 
								on m.Source_TD = a.Magazyn_ID and m.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Produkt_KEY 
						where Source_TD = a.Produkt_ID and Source_cd=''' + @System + ''') or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Magazyn_KEY 
						where Source_TD = a.Magazyn_ID and Source_cd=''' + @System + ''')')	
	
END
GO



CREATE PROCEDURE [dbo].[InsertPrzesylka] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

		/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Firma_kurierska_KEY 
							where Source_TD = a.Firma_kurierska_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Przesylka_Key,f.Firma_kurierska_Key,a.Waga from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as k
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''
					inner join target.dbo.Firma_kurierska_KEY as f 
						on f.Source_TD = a.Firma_kurierska_ID and f.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Firma_kurierska_KEY 
						where Source_TD = a.Firma_kurierska_ID and Source_cd=''' + @System + ''')')	
END
GO


CREATE PROCEDURE [dbo].[InsertPracownik] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

		/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Magazyn_KEY 
							where Source_TD = a.Magazyn_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select k.Pracownik_Key,m.Magazyn_Key,a.Pesel,a.Imie,a.Nazwisko,a.Numer_konta,a.Miejscowosc,a.Ulica,a.Nr_domu,a.Stanowisko from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as k
				on k.Source_TD = a.'+ @t_Target + '_PK and k.Source_cd=''' + @System + '''
					inner join target.dbo.Magazyn_KEY as m 
						on m.Source_TD = a.Magazyn_ID and m.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Magazyn_KEY 
						where Source_TD = a.Magazyn_ID and Source_cd=''' + @System + ''')')	
	
END
GO


CREATE PROCEDURE [dbo].[InsertWysylka] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
							where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''') and 
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
							where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Przesylka_KEY 
							where Source_TD = a.Przesylka_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
							where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select w.Wysylka_Key,e.Egzemplarz_Key,k.Klient_Key,ps.Przesylka_Key,pc.Pracownik_Key from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as w
				on w.Source_TD = a.'+ @t_Target + '_PK and w.Source_cd=''' + @System + '''
					inner join target.dbo.Egzemplarz_KEY as e 
						on e.Source_TD = a.Egzemplarz_ID and e.Source_cd=''' + @System + '''
							inner join target.dbo.Klient_KEY as k
								on k.Source_TD = a.Klient_ID and k.Source_cd=''' + @System + '''
									inner join target.dbo.Przesylka_KEY as ps
										on ps.Source_TD = a.Przesylka_ID and ps.Source_cd=''' + @System + '''
											inner join target.dbo.Pracownik_KEY as pc 
												on pc.Source_TD = a.Pracownik_ID and pc.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
						where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''') or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
						where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''') or
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Przesylka_KEY 
						where Source_TD = a.Przesylka_ID and Source_cd=''' + @System + ''') or
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
						where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''')')
END
GO


CREATE PROCEDURE [dbo].[InsertZamowienie] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Produkt_KEY 
							where Source_TD = a.Produkt_ID and Source_cd=''' + @System + ''') and 
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
							where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
							where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select z.Zamowienie_Key,p.Produkt_Key,pc.Pracownik_Key,k.Klient_Key,a.L_sztuk from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as z
				on z.Source_TD = a.'+ @t_Target + '_PK and z.Source_cd=''' + @System + '''
					inner join target.dbo.Produkt_KEY as p 
						on p.Source_TD = a.Produkt_ID and p.Source_cd=''' + @System + '''
							inner join target.dbo.Pracownik_KEY as pc
								on pc.Source_TD = a.Pracownik_ID and pc.Source_cd=''' + @System + '''
									inner join target.dbo.Klient_KEY as k
										on k.Source_TD = a.Klient_ID and k.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Produkt_KEY 
						where Source_TD = a.Produkt_ID and Source_cd=''' + @System + ''') or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
						where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''') or
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
						where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''')')
	
END
GO


CREATE PROCEDURE [dbo].[InsertReklamacja] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
							where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''') and 
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
							where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
							where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select r.Reklamacja_Key,pc.Pracownik_Key,e.Egzemplarz_Key,k.Klient_Key from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as r
				on r.Source_TD = a.'+ @t_Target + '_PK and r.Source_cd=''' + @System + '''
					inner join target.dbo.Pracownik_KEY as pc 
						on pc.Source_TD = a.Pracownik_ID and pc.Source_cd=''' + @System + '''
							inner join target.dbo.Egzemplarz_KEY as e
								on e.Source_TD = a.Egzemplarz_ID and e.Source_cd=''' + @System + '''
									inner join target.dbo.Klient_KEY as k
										on k.Source_TD = a.Klient_ID and k.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
						where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''') or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
						where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''') or
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
						where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''')')
	
END
GO

CREATE PROCEDURE [dbo].[InsertZakup] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
							where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Hurtownia_KEY 
							where Source_TD = a.Hurtownia_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
							where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select z.Zakup_Key,e.Egzemplarz_Key,h.Hurtownia_Key,pc.Pracownik_Key from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as z
				on z.Source_TD = a.'+ @t_Target + '_PK and z.Source_cd=''' + @System + '''
					inner join target.dbo.Egzemplarz_KEY as e 
						on e.Source_TD = a.Egzemplarz_ID and e.Source_cd=''' + @System + '''
								inner join target.dbo.Hurtownia_KEY as h
									on h.Source_TD = a.Hurtownia_ID and h.Source_cd=''' + @System + '''
										inner join target.dbo.Pracownik_KEY as pc 
											on pc.Source_TD = a.Pracownik_ID and pc.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
						where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''') or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Hurtownia_KEY 
						where Source_TD = a.Hurtownia_ID and Source_cd=''' + @System + ''') or
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
						where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''')')
	
END
GO


CREATE PROCEDURE [dbo].[InsertSprzedaz] @System varchar(100), @t_Stage varchar(100), @p_Stage varchar(1000), @t_Target varchar(100), @p_Target varchar(1000)
as
declare @where_Bad                varchar(1200)
BEGIN

	/*Key*/
	EXEC('insert into target.dbo.' + @t_Target + '_KEY' + '(Source_TD, Source_cd)
		select ' + @t_Target + '_PK, ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a where not exists
			(select Source_TD, Source_cd from ' + 'target.dbo.' + @t_Target +  '_KEY 
				where Source_TD = a.' + @t_Target + '_PK and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
							where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''') and 
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
							where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''') and
					exists
						(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
							where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''')')	
	
	/*TMP*/
	EXEC('insert into temp.dbo.' + @t_Target + '_TMP' + '('+@p_Target+')
		select s.Sprzedaz_Key,k.Klient_Key,pc.Pracownik_Key,e.Egzemplarz_Key from stage.dbo.' + @t_Stage + ' as a
			inner join target.dbo.' + @t_Target + '_KEY as s
				on s.Source_TD = a.'+ @t_Target + '_PK and s.Source_cd=''' + @System + '''
					inner join target.dbo.Klient_KEY as k 
						on k.Source_TD = a.Klient_ID and k.Source_cd=''' + @System + '''
							inner join target.dbo.Pracownik_KEY as pc
								on pc.Source_TD = a.Pracownik_ID and pc.Source_cd=''' + @System + '''
									inner join target.dbo.Egzemplarz_KEY as e
										on e.Source_TD = a.Egzemplarz_ID and e.Source_cd=''' + @System + '''')

	/*BAD*/
	SELECT @where_Bad = REPLACE ( @p_Stage, ',', '=null or ' ) 
	EXEC('insert into temp.dbo.' + @t_Target + '_BAD' + '('+@p_Stage+', Source)
		select ' + @p_Stage + ', ''' + @System + ''' from stage.dbo.' + @t_Stage + ' as a' + ' 
			where ' + @where_Bad + '=null or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Klient_KEY 
						where Source_TD = a.Klient_ID and Source_cd=''' + @System + ''') or 
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Pracownik_KEY 
						where Source_TD = a.Pracownik_ID and Source_cd=''' + @System + ''') or
				not exists
					(select Source_TD, Source_cd from ' + 'target.dbo.Egzemplarz_KEY 
						where Source_TD = a.Egzemplarz_ID and Source_cd=''' + @System + ''')')
	
END
GO


CREATE PROCEDURE [dbo].[InsertStage] as
declare @dane_order numeric
declare @system varchar(100)
declare @t_Stage varchar(100)
declare @p_Stage varchar(1000)
declare @t_Target varchar(100)
declare @p_Target varchar(1000)
declare cur_Meta CURSOR LOCAL for
    select Dane_order, System, T_Stage, P_Stage, T_Target, P_Target from [metadata].[dbo].Meta_dane order by 'Dane_order'
declare @name varchar(100)
begin

EXEC sp_MSforeachtable '
	IF RIGHT(''?'', 4) = ''TMP]''
		DELETE FROM ?'

open cur_Meta

fetch next from cur_Meta into @dane_order, @system, @t_Stage, @p_Stage, @t_Target, @p_Target

while @@FETCH_STATUS = 0 
BEGIN
	EXECUTE('EXEC Insert'+@t_Target+' @System='''+@system+''' , @t_Stage='''+@t_Stage+''', @p_Stage='''+@p_Stage+''', @t_Target='''+@t_Target+''', @p_Target='''+@p_Target+'''')
	
	
	fetch next from cur_Meta into @dane_order, @system, @t_Stage, @p_Stage, @t_Target, @p_Target
END

close cur_Meta
deallocate cur_Meta

end
go







/*==============================================================*/
/* Procedure Insert TMP to STG                                  */
/*==============================================================*/
CREATE PROCEDURE [dbo].[InsertKlientTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Klient_STG 
		SELECT tmp.Klient_Key,tmp.Pesel,tmp.Imie,tmp.Nazwisko,tmp.Numer_konta,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu, tmp.Klie_Start_DTTM, tmp.Klie_End_DTTM 
			FROM temp.dbo.Klient_TMP AS tmp 
				INNER JOIN target.dbo.Klient_TARGET AS tar ON tmp.Klient_Key=tar.Klient_Key 
					WHERE
						tmp.Pesel!=tar.Pesel or
						tmp.Imie!=tar.Imie or
						tmp.Nazwisko!=tar.Nazwisko or
						tmp.Numer_konta!=tar.Numer_konta or
						tmp.Miejscowosc!=tar.Miejscowosc or
						tmp.Ulica!=tar.Ulica or
						tmp.Nr_domu!=tar.Nr_domu

	INSERT INTO temp.dbo.Klient_STG 
		SELECT tmp.Klient_Key,tmp.Pesel,tmp.Imie,tmp.Nazwisko,tmp.Numer_konta,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu, tmp.Klie_Start_DTTM, tmp.Klie_End_DTTM 
			FROM temp.dbo.Klient_TMP AS tmp
				WHERE not exists(
					SELECT * FROM target.dbo.Klient_TARGET as t
						WHERE tmp.Klient_Key=t.Klient_Key
					)

end
go

CREATE PROCEDURE [dbo].[InsertMagazynTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Magazyn_STG 
		SELECT tmp.Magazyn_Key,tmp.Nazwa,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu,tmp.Kod_pocztowy, tmp.Maga_Start_DTTM, tmp.Maga_End_DTTM 
			FROM temp.dbo.Magazyn_TMP AS tmp 
				INNER JOIN target.dbo.Magazyn_TARGET AS tar ON tmp.Magazyn_Key=tar.Magazyn_Key 
					WHERE
						tmp.Nazwa!=tar.Nazwa or
						tmp.Miejscowosc!=tar.Miejscowosc or
						tmp.Ulica!=tar.Ulica or
						tmp.Nr_domu!=tar.Nr_domu or
						tmp.Kod_pocztowy!=tar.Kod_pocztowy

	INSERT INTO temp.dbo.Magazyn_STG 
		SELECT tmp.Magazyn_Key,tmp.Nazwa,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu,tmp.Kod_pocztowy, tmp.Maga_Start_DTTM, tmp.Maga_End_DTTM 
			FROM temp.dbo.Magazyn_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Magazyn_TARGET as t
						WHERE tmp.Magazyn_Key=t.Magazyn_Key
					)

end
go

CREATE PROCEDURE [dbo].[InsertProduktTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Produkt_STG 
		SELECT tmp.Produkt_Key,tmp.Nazwa,tmp.Kategoria,tmp.Cena, tmp.Prod_Start_DTTM, tmp.Prod_End_DTTM 
			FROM temp.dbo.Produkt_TMP AS tmp 
				INNER JOIN target.dbo.Produkt_TARGET AS tar ON tmp.Produkt_Key=tar.Produkt_Key 
					WHERE
						tmp.Nazwa!=tar.Nazwa or
						tmp.Kategoria!=tar.Kategoria or
						tmp.Cena!=tar.Cena 

	INSERT INTO temp.dbo.Produkt_STG 
		SELECT tmp.Produkt_Key,tmp.Nazwa,tmp.Kategoria,tmp.Cena, tmp.Prod_Start_DTTM, tmp.Prod_End_DTTM 
			FROM temp.dbo.Produkt_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Produkt_TARGET as t
						WHERE tmp.Produkt_Key=t.Produkt_Key
					)

end
go

CREATE PROCEDURE [dbo].[InsertEgzemplarzTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Egzemplarz_STG 
		SELECT tmp.Egzemplarz_Key,tmp.Produkt_ID,tmp.Magazyn_ID, tmp.Egze_Start_DTTM, tmp.Egze_End_DTTM 
			FROM temp.dbo.Egzemplarz_TMP AS tmp 
				INNER JOIN target.dbo.Egzemplarz_TARGET AS tar ON tmp.Egzemplarz_Key=tar.Egzemplarz_Key 
					WHERE
						tmp.Produkt_ID!=tar.Produkt_ID or
						tmp.Magazyn_ID!=tar.Magazyn_ID 

	INSERT INTO temp.dbo.Egzemplarz_STG 
		SELECT tmp.Egzemplarz_Key,tmp.Produkt_ID,tmp.Magazyn_ID, tmp.Egze_Start_DTTM, tmp.Egze_End_DTTM 
			FROM temp.dbo.Egzemplarz_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Egzemplarz_TARGET as t
						WHERE tmp.Egzemplarz_Key=t.Egzemplarz_Key
					)

end
go


CREATE PROCEDURE [dbo].[InsertHurtowniaTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Hurtownia_STG 
		SELECT tmp.Hurtownia_Key,tmp.Nazwa,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu,tmp.Nr_mieszkania,tmp.Kod_pocztowy, tmp.Hurt_Start_DTTM, tmp.Hurt_End_DTTM 
			FROM temp.dbo.Hurtownia_TMP AS tmp 
				INNER JOIN target.dbo.Hurtownia_TARGET AS tar ON tmp.Hurtownia_Key=tar.Hurtownia_Key 
					WHERE
						tmp.Nazwa!=tar.Nazwa or
						tmp.Miejscowosc!=tar.Miejscowosc or
						tmp.Ulica!=tar.Ulica or
						tmp.Nr_domu!=tar.Nr_domu or
						tmp.Nr_mieszkania!=tar.Nr_mieszkania or
						tmp.Kod_pocztowy!=tar.Kod_pocztowy

	INSERT INTO temp.dbo.Hurtownia_STG 
		SELECT tmp.Hurtownia_Key,tmp.Nazwa,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu,tmp.Nr_mieszkania,tmp.Kod_pocztowy, tmp.Hurt_Start_DTTM, tmp.Hurt_End_DTTM 
			FROM temp.dbo.Hurtownia_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Hurtownia_TARGET as t
						WHERE tmp.Hurtownia_Key=t.Hurtownia_Key
					)

end
go


CREATE PROCEDURE [dbo].[InsertFirma_kurierskaTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Firma_kurierska_STG 
		SELECT tmp.Firma_kurierska_Key,tmp.Nazwa,tmp.Firm_Start_DTTM, tmp.Firm_End_DTTM 
			FROM temp.dbo.Firma_kurierska_TMP AS tmp 
				INNER JOIN target.dbo.Firma_kurierska_TARGET AS tar ON tmp.Firma_kurierska_Key=tar.Firma_kurierska_Key 
					WHERE
						tmp.Nazwa!=tar.Nazwa

	INSERT INTO temp.dbo.Firma_kurierska_STG 
		SELECT tmp.Firma_kurierska_Key,tmp.Nazwa,tmp.Firm_Start_DTTM, tmp.Firm_End_DTTM 
			FROM temp.dbo.Firma_kurierska_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Firma_kurierska_TARGET as t
						WHERE tmp.Firma_kurierska_Key=t.Firma_kurierska_Key
					)

end
go

CREATE PROCEDURE [dbo].[InsertPrzesylkaTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Przesylka_STG 
		SELECT tmp.Przesylka_Key,tmp.Firma_kurierska_ID,tmp.Waga, tmp.Prze_Start_DTTM, tmp.Prze_End_DTTM 
			FROM temp.dbo.Przesylka_TMP AS tmp 
				INNER JOIN target.dbo.Przesylka_TARGET AS tar ON tmp.Przesylka_Key=tar.Przesylka_Key 
					WHERE
						tmp.Firma_kurierska_ID!=tar.Firma_kurierska_ID or
						tmp.Waga!=tar.Waga

	INSERT INTO temp.dbo.Przesylka_STG 
		SELECT tmp.Przesylka_Key,tmp.Firma_kurierska_ID,tmp.Waga, tmp.Prze_Start_DTTM, tmp.Prze_End_DTTM 
			FROM temp.dbo.Przesylka_TMP AS tmp  
				WHERE not exists(
					SELECT * FROM target.dbo.Przesylka_TARGET as t
						WHERE tmp.Przesylka_Key=t.Przesylka_Key
					)

end
go

CREATE PROCEDURE [dbo].[InsertPracownikTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Pracownik_STG 
		SELECT tmp.Pracownik_Key,tmp.Magazyn_ID,tmp.Pesel,tmp.Imie,tmp.Nazwisko,tmp.Numer_konta,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu,tmp.Stanowisko, tmp.Prac_Start_DTTM, tmp.Prac_End_DTTM 
			FROM temp.dbo.Pracownik_TMP AS tmp 
				INNER JOIN target.dbo.Pracownik_TARGET AS tar ON tmp.Pracownik_Key=tar.Pracownik_Key 
					WHERE
						tmp.Magazyn_ID!=tar.Magazyn_ID or
						tmp.Pesel!=tar.Pesel or
						tmp.Imie!=tar.Imie or
						tmp.Nazwisko!=tar.Nazwisko or
						tmp.Numer_konta!=tar.Numer_konta or
						tmp.Miejscowosc!=tar.Miejscowosc or
						tmp.Ulica!=tar.Ulica or
						tmp.Nr_domu!=tar.Nr_domu or
						tmp.Stanowisko!=tar.Stanowisko

	INSERT INTO temp.dbo.Pracownik_STG 
		SELECT tmp.Pracownik_Key,tmp.Magazyn_ID,tmp.Pesel,tmp.Imie,tmp.Nazwisko,tmp.Numer_konta,tmp.Miejscowosc,tmp.Ulica,tmp.Nr_domu,tmp.Stanowisko, tmp.Prac_Start_DTTM, tmp.Prac_End_DTTM 
			FROM temp.dbo.Pracownik_TMP AS tmp
				WHERE not exists(
					SELECT * FROM target.dbo.Pracownik_TARGET as t
						WHERE tmp.Pracownik_Key=t.Pracownik_Key
					)

end
go


CREATE PROCEDURE [dbo].[InsertWysylkaTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Wysylka_STG 
		SELECT tmp.Wysylka_Key,tmp.Egzemplarz_ID,tmp.Klient_ID,tmp.Przesylka_ID,tmp.Pracownik_ID, tmp.Wysy_Start_DTTM, tmp.Wysy_End_DTTM 
			FROM temp.dbo.Wysylka_TMP AS tmp 
				INNER JOIN target.dbo.Wysylka_TARGET AS tar ON tmp.Wysylka_Key=tar.Wysylka_Key 
					WHERE
						tmp.Egzemplarz_ID!=tar.Egzemplarz_ID or
						tmp.Klient_ID!=tar.Klient_ID or
						tmp.Przesylka_ID!=tar.Przesylka_ID or
						tmp.Pracownik_ID!=tar.Pracownik_ID 

	INSERT INTO temp.dbo.Wysylka_STG 
		SELECT tmp.Wysylka_Key,tmp.Egzemplarz_ID,tmp.Klient_ID,tmp.Przesylka_ID,tmp.Pracownik_ID, tmp.Wysy_Start_DTTM, tmp.Wysy_End_DTTM 
			FROM temp.dbo.Wysylka_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Wysylka_TARGET as t
						WHERE tmp.Wysylka_Key=t.Wysylka_Key
					)

end
go

CREATE PROCEDURE [dbo].[InsertZamowienieTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Zamowienie_STG 
		SELECT tmp.Zamowienie_Key,tmp.Produkt_ID,tmp.Pracownik_ID,tmp.Klient_ID,tmp.L_sztuk, tmp.Zamo_Start_DTTM, tmp.Zamo_End_DTTM 
			FROM temp.dbo.Zamowienie_TMP AS tmp 
				INNER JOIN target.dbo.Zamowienie_TARGET AS tar ON tmp.Zamowienie_Key=tar.Zamowienie_Key 
					WHERE
						tmp.Produkt_ID!=tar.Produkt_ID or
						tmp.Pracownik_ID!=tar.Pracownik_ID or
						tmp.Klient_ID!=tar.Klient_ID or
						tmp.L_sztuk!=tar.L_sztuk 

	INSERT INTO temp.dbo.Zamowienie_STG 
		SELECT tmp.Zamowienie_Key,tmp.Produkt_ID,tmp.Pracownik_ID,tmp.Klient_ID,tmp.L_sztuk, tmp.Zamo_Start_DTTM, tmp.Zamo_End_DTTM 
			FROM temp.dbo.Zamowienie_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Zamowienie_TARGET as t
						WHERE tmp.Zamowienie_Key=t.Zamowienie_Key
					)

end
go	


CREATE PROCEDURE [dbo].[InsertReklamacjaTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Reklamacja_STG 
		SELECT tmp.Reklamacja_Key,tmp.Pracownik_ID,tmp.Egzemplarz_ID,tmp.Klient_ID, tmp.Rekl_Start_DTTM, tmp.Rekl_End_DTTM 
			FROM temp.dbo.Reklamacja_TMP AS tmp 
				INNER JOIN target.dbo.Reklamacja_TARGET AS tar ON tmp.Reklamacja_Key=tar.Reklamacja_Key 
					WHERE
						tmp.Pracownik_ID!=tar.Pracownik_ID or
						tmp.Egzemplarz_ID!=tar.Egzemplarz_ID or
						tmp.Klient_ID!=tar.Klient_ID

	INSERT INTO temp.dbo.Reklamacja_STG 
		SELECT tmp.Reklamacja_Key,tmp.Pracownik_ID,tmp.Egzemplarz_ID,tmp.Klient_ID, tmp.Rekl_Start_DTTM, tmp.Rekl_End_DTTM 
			FROM temp.dbo.Reklamacja_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Reklamacja_TARGET as t
						WHERE tmp.Reklamacja_Key=t.Reklamacja_Key
					)

end
go	


CREATE PROCEDURE [dbo].[InsertZakupTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Zakup_STG 
		SELECT tmp.Zakup_Key,tmp.Egzemplarz_ID,tmp.Hurtownia_ID,tmp.Pracownik_ID, tmp.Zaku_Start_DTTM, tmp.Zaku_End_DTTM 
			FROM temp.dbo.Zakup_TMP AS tmp 
				INNER JOIN target.dbo.Zakup_TARGET AS tar ON tmp.Zakup_Key=tar.Zakup_Key 
					WHERE
						tmp.Egzemplarz_ID!=tar.Egzemplarz_ID or
						tmp.Hurtownia_ID!=tar.Hurtownia_ID or
						tmp.Pracownik_ID!=tar.Pracownik_ID 

	INSERT INTO temp.dbo.Zakup_STG 
		SELECT tmp.Zakup_Key,tmp.Egzemplarz_ID,tmp.Hurtownia_ID,tmp.Pracownik_ID, tmp.Zaku_Start_DTTM, tmp.Zaku_End_DTTM 
			FROM temp.dbo.Zakup_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Zakup_TARGET as t
						WHERE tmp.Zakup_Key=t.Zakup_Key
					)

end
go


CREATE PROCEDURE [dbo].[InsertSprzedazTMPtoSTG] as

begin
	INSERT INTO temp.dbo.Sprzedaz_STG 
		SELECT tmp.Sprzedaz_Key,tmp.Klient_ID,tmp.Pracownik_ID,tmp.Egzemplarz_ID, tmp.Sprz_Start_DTTM, tmp.Sprz_End_DTTM 
			FROM temp.dbo.Sprzedaz_TMP AS tmp 
				INNER JOIN target.dbo.Sprzedaz_TARGET AS tar ON tmp.Sprzedaz_Key=tar.Sprzedaz_Key 
					WHERE
						tmp.Klient_ID!=tar.Klient_ID or
						tmp.Pracownik_ID!=tar.Pracownik_ID or
						tmp.Egzemplarz_ID!=tar.Egzemplarz_ID

	INSERT INTO temp.dbo.Sprzedaz_STG 
		SELECT tmp.Sprzedaz_Key,tmp.Klient_ID,tmp.Pracownik_ID,tmp.Egzemplarz_ID, tmp.Sprz_Start_DTTM, tmp.Sprz_End_DTTM 
			FROM temp.dbo.Sprzedaz_TMP AS tmp 
				WHERE not exists(
					SELECT * FROM target.dbo.Sprzedaz_TARGET as t
						WHERE tmp.Sprzedaz_Key=t.Sprzedaz_Key
					)

end
go


CREATE PROCEDURE [dbo].[InsertTMPtoSTG] 
AS
declare @dane_order numeric
declare @t_Target varchar(100)
declare cur_Meta CURSOR LOCAL for
    select distinct T_Target, max(Dane_order) 
		from [metadata].[dbo].Meta_dane 
		group by T_Target	
		order by max(Dane_order)
begin

EXEC sp_MSforeachtable '
	IF RIGHT( ''?'', 4) = ''STG]''
		DELETE FROM ?'

open cur_Meta

fetch next from cur_Meta into @t_Target, @dane_order

while @@FETCH_STATUS = 0 
BEGIN
	EXECUTE('EXEC Insert'+@t_Target+'TMPtoSTG')
	
	fetch next from cur_Meta into @t_Target, @dane_order
END

close cur_Meta
deallocate cur_Meta
end
go
