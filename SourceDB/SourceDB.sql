/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     30.05.2019 12:01:59                          */
/*==============================================================*/

USE [master]
GO

if exists (select 1
           from  sysdatabases
           where  name IN ('sourceDB'))
   DROP DATABASE sourceDB
go


CREATE DATABASE [sourceDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sourceDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\sourceDB.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sourceDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\sourceDB_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sourceDB] SET COMPATIBILITY_LEVEL = 140
GO
ALTER DATABASE [sourceDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sourceDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sourceDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sourceDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sourceDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [sourceDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sourceDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sourceDB] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [sourceDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sourceDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sourceDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sourceDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sourceDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sourceDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sourceDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sourceDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sourceDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sourceDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sourceDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sourceDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sourceDB] SET  READ_WRITE 
GO
ALTER DATABASE [sourceDB] SET RECOVERY FULL 
GO
ALTER DATABASE [sourceDB] SET  MULTI_USER 
GO
ALTER DATABASE [sourceDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sourceDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sourceDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sourceDB]
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
USE [sourceDB]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [sourceDB] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO


USE [sourceDB]
GO

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Egzemplarz') and o.name = 'FK_EGZEMPLA_RELATIONS_PRODUKT')
alter table Egzemplarz
   drop constraint FK_EGZEMPLA_RELATIONS_PRODUKT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Egzemplarz') and o.name = 'FK_EGZEMPLA_RELATIONS_MAGAZYN')
alter table Egzemplarz
   drop constraint FK_EGZEMPLA_RELATIONS_MAGAZYN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pracownik') and o.name = 'FK_PRACOWNI_RELATIONS_MAGAZYN')
alter table Pracownik
   drop constraint FK_PRACOWNI_RELATIONS_MAGAZYN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Przesylka') and o.name = 'FK_PRZESYLK_RELATIONS_FIRMA_KU')
alter table Przesylka
   drop constraint FK_PRZESYLK_RELATIONS_FIRMA_KU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Reklamacja') and o.name = 'FK_REKLAMAC_RELATIONS_PRACOWNI')
alter table Reklamacja
   drop constraint FK_REKLAMAC_RELATIONS_PRACOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Reklamacja') and o.name = 'FK_REKLAMAC_RELATIONS_EGZEMPLA')
alter table Reklamacja
   drop constraint FK_REKLAMAC_RELATIONS_EGZEMPLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Reklamacja') and o.name = 'FK_REKLAMAC_RELATIONS_KLIENT')
alter table Reklamacja
   drop constraint FK_REKLAMAC_RELATIONS_KLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sprzedaz') and o.name = 'FK_SPRZEDAZ_RELATIONS_EGZEMPLA')
alter table Sprzedaz
   drop constraint FK_SPRZEDAZ_RELATIONS_EGZEMPLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sprzedaz') and o.name = 'FK_SPRZEDAZ_RELATIONS_KLIENT')
alter table Sprzedaz
   drop constraint FK_SPRZEDAZ_RELATIONS_KLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Sprzedaz') and o.name = 'FK_SPRZEDAZ_RELATIONS_PRACOWNI')
alter table Sprzedaz
   drop constraint FK_SPRZEDAZ_RELATIONS_PRACOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wysylka') and o.name = 'FK_WYSYLKA_RELATIONS_PRZESYLK')
alter table Wysylka
   drop constraint FK_WYSYLKA_RELATIONS_PRZESYLK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wysylka') and o.name = 'FK_WYSYLKA_RELATIONS_EGZEMPLA')
alter table Wysylka
   drop constraint FK_WYSYLKA_RELATIONS_EGZEMPLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wysylka') and o.name = 'FK_WYSYLKA_RELATIONS_KLIENT')
alter table Wysylka
   drop constraint FK_WYSYLKA_RELATIONS_KLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wysylka') and o.name = 'FK_WYSYLKA_RELATIONS_PRACOWNI')
alter table Wysylka
   drop constraint FK_WYSYLKA_RELATIONS_PRACOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zakup') and o.name = 'FK_ZAKUP_KLIENT_ZA_KLIENT')
alter table Zakup
   drop constraint FK_ZAKUP_KLIENT_ZA_KLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zakup') and o.name = 'FK_ZAKUP_RELATIONS_EGZEMPLA')
alter table Zakup
   drop constraint FK_ZAKUP_RELATIONS_EGZEMPLA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zakup') and o.name = 'FK_ZAKUP_RELATIONS_HURTOWNI')
alter table Zakup
   drop constraint FK_ZAKUP_RELATIONS_HURTOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zakup') and o.name = 'FK_ZAKUP_RELATIONS_PRACOWNI')
alter table Zakup
   drop constraint FK_ZAKUP_RELATIONS_PRACOWNI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zamowienie') and o.name = 'FK_ZAMOWIEN_RELATIONS_PRODUKT')
alter table Zamowienie
   drop constraint FK_ZAMOWIEN_RELATIONS_PRODUKT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zamowienie') and o.name = 'FK_ZAMOWIEN_RELATIONS_KLIENT')
alter table Zamowienie
   drop constraint FK_ZAMOWIEN_RELATIONS_KLIENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Zamowienie') and o.name = 'FK_ZAMOWIEN_RELATIONS_PRACOWNI')
alter table Zamowienie
   drop constraint FK_ZAMOWIEN_RELATIONS_PRACOWNI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Egzemplarz')
            and   name  = 'Relationship_22_FK'
            and   indid > 0
            and   indid < 255)
   drop index Egzemplarz.Relationship_22_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Egzemplarz')
            and   name  = 'Relationship_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index Egzemplarz.Relationship_18_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz')
            and   type = 'U')
   drop table Egzemplarz
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Firma_kurierska')
            and   type = 'U')
   drop table Firma_kurierska
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Hurtownia')
            and   type = 'U')
   drop table Hurtownia
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klient')
            and   type = 'U')
   drop table Klient
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn')
            and   type = 'U')
   drop table Magazyn
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik')
            and   type = 'U')
   drop table Pracownik
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt')
            and   type = 'U')
   drop table Produkt
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Przesylka')
            and   name  = 'Relationship_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index Przesylka.Relationship_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka')
            and   type = 'U')
   drop table Przesylka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reklamacja')
            and   name  = 'Relationship_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reklamacja.Relationship_15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reklamacja')
            and   name  = 'Relationship_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reklamacja.Relationship_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reklamacja')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reklamacja.Relationship_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja')
            and   type = 'U')
   drop table Reklamacja
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sprzedaz')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sprzedaz.Relationship_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sprzedaz')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sprzedaz.Relationship_8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sprzedaz')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sprzedaz.Relationship_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz')
            and   type = 'U')
   drop table Sprzedaz
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wysylka')
            and   name  = 'Relationship_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wysylka.Relationship_16_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wysylka')
            and   name  = 'Relationship_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wysylka.Relationship_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wysylka')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wysylka.Relationship_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wysylka')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wysylka.Relationship_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka')
            and   type = 'U')
   drop table Wysylka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zakup')
            and   name  = 'Relationship_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zakup.Relationship_20_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zakup')
            and   name  = 'Relationship_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zakup.Relationship_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zakup')
            and   name  = 'Relationship_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zakup.Relationship_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zakup')
            and   name  = 'Klient_zakup_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zakup.Klient_zakup_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup')
            and   type = 'U')
   drop table Zakup
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zamowienie')
            and   name  = 'Relationship_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zamowienie.Relationship_17_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zamowienie')
            and   name  = 'Relationship_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zamowienie.Relationship_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Zamowienie')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index Zamowienie.Relationship_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zamowienie')
            and   type = 'U')
   drop table Zamowienie
go

/*==============================================================*/
/* Table: Egzemplarz                                            */
/*==============================================================*/
create table Egzemplarz (
   Egzemplarz_ID        numeric              IDENTITY(0,1)		not null,
   Produkt_ID           numeric              not null,
   Magazyn_ID           numeric              not null,
   constraint PK_EGZEMPLARZ primary key nonclustered (Egzemplarz_ID)
)
go

/*==============================================================*/
/* Index: Relationship_18_FK                                    */
/*==============================================================*/
create index Relationship_18_FK on Egzemplarz (
Produkt_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_22_FK                                    */
/*==============================================================*/
create index Relationship_22_FK on Egzemplarz (
Magazyn_ID ASC
)
go

/*==============================================================*/
/* Table: Firma_kurierska                                       */
/*==============================================================*/
create table Firma_kurierska (
   Firma_kurierska_ID   numeric              IDENTITY(0,1)		not null,
   Nazwa                varchar(100)         not null,
   constraint PK_FIRMA_KURIERSKA primary key nonclustered (Firma_kurierska_ID)
)
go

/*==============================================================*/
/* Table: Hurtownia                                             */
/*==============================================================*/
create table Hurtownia (
   Hurtownia_ID        numeric              IDENTITY(0,1)		not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Nr_mieszkania        varchar(10)          not null,
   Kod_pocztowy         varchar(6)           not null,
   constraint PK_HURTOWNIA primary key nonclustered (Hurtownia_ID)
)
go

/*==============================================================*/
/* Table: Klient                                                */
/*==============================================================*/
create table Klient (
   Klient_ID            numeric              IDENTITY(0,1)		not null,
   Pesel                varchar(11)          not null,
   Imie                 varchar(30)          not null,
   Nazwisko             varchar(30)          not null,
   Numer_konta          varchar(26)          not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   constraint PK_KLIENT primary key nonclustered (Klient_ID)
)
go

/*==============================================================*/
/* Table: Magazyn                                               */
/*==============================================================*/
create table Magazyn (
   Magazyn_ID           numeric              IDENTITY(0,1)		not null,
   Nazwa                varchar(100)         not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Kod_pocztowy         varchar(6)           not null,
   constraint PK_MAGAZYN primary key nonclustered (Magazyn_ID)
)
go

/*==============================================================*/
/* Table: Pracownik                                             */
/*==============================================================*/
create table Pracownik (
   Pracownik_ID         numeric              IDENTITY(0,1)		not null,
   Magazyn_ID           numeric              not null,
   Pesel                varchar(11)          not null,
   Imie                 varchar(30)          not null,
   Nazwisko             varchar(30)          not null,
   Numer_konta          varchar(26)          not null,
   Miejscowosc          varchar(50)          not null,
   Ulica                varchar(100)         not null,
   Nr_domu              varchar(10)          not null,
   Stanowisko           varchar(100)         not null,
   constraint PK_PRACOWNIK primary key nonclustered (Pracownik_ID)
)
go

/*==============================================================*/
/* Table: Produkt                                               */
/*==============================================================*/
create table Produkt (
   Produkt_ID           numeric              IDENTITY(0,1)		not null,
   Nazwa                varchar(100)         not null,
   Kategoria            varchar(100)         not null,
   Cena                 decimal              not null,
   constraint PK_PRODUKT primary key nonclustered (Produkt_ID)
)
go

/*==============================================================*/
/* Table: Przesylka                                             */
/*==============================================================*/
create table Przesylka (
   Przesylka_ID         numeric              IDENTITY(0,1)		not null,
   Firma_kurierska_ID   numeric              not null,
   Waga                 decimal              not null,
   constraint PK_PRZESYLKA primary key nonclustered (Przesylka_ID)
)
go

/*==============================================================*/
/* Index: Relationship_12_FK                                    */
/*==============================================================*/
create index Relationship_12_FK on Przesylka (
Firma_kurierska_ID ASC
)
go

/*==============================================================*/
/* Table: Reklamacja                                            */
/*==============================================================*/
create table Reklamacja (
   Reklamacja_ID        numeric              IDENTITY(0,1)		not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   constraint PK_REKLAMACJA primary key nonclustered (Reklamacja_ID)
)
go

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on Reklamacja (
Klient_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create index Relationship_10_FK on Reklamacja (
Pracownik_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_15_FK                                    */
/*==============================================================*/
create index Relationship_15_FK on Reklamacja (
Egzemplarz_ID ASC
)
go

/*==============================================================*/
/* Table: Sprzedaz                                              */
/*==============================================================*/
create table Sprzedaz (
   Sprzedaz_ID          numeric              IDENTITY(0,1)		not null,
   Klient_ID            numeric              not null,
   Pracownik_ID         numeric              not null,
   Egzemplarz_ID        numeric              not null,
   constraint PK_SPRZEDAZ primary key nonclustered (Sprzedaz_ID)
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on Sprzedaz (
Klient_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on Sprzedaz (
Pracownik_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create index Relationship_14_FK on Sprzedaz (
Egzemplarz_ID ASC
)
go

/*==============================================================*/
/* Table: Wysylka                                               */
/*==============================================================*/
create table Wysylka (
   Wysylka_ID           numeric              IDENTITY(0,1)		not null,
   Egzemplarz_ID        numeric              not null,
   Klient_ID            numeric              not null,
   Przesylka_ID         numeric              not null,
   Pracownik_ID         numeric              not null,
   constraint PK_WYSYLKA primary key nonclustered (Wysylka_ID)
)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on Wysylka (
Klient_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on Wysylka (
Pracownik_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on Wysylka (
Przesylka_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_16_FK                                    */
/*==============================================================*/
create index Relationship_16_FK on Wysylka (
Egzemplarz_ID ASC
)
go

/*==============================================================*/
/* Table: Zakup                                                 */
/*==============================================================*/
create table Zakup (
   Zakup_ID             numeric              IDENTITY(0,1)		not null,
   Egzemplarz_ID        numeric              not null,
   Hurtownia_ID        numeric               not null,
   Pracownik_ID         numeric              not null,
   constraint PK_ZAKUP primary key nonclustered (Zakup_ID)
)
go


/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on Zakup (
Pracownik_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create index Relationship_13_FK on Zakup (
Egzemplarz_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_20_FK                                    */
/*==============================================================*/
create index Relationship_20_FK on Zakup (
Hurtownia_ID ASC
)
go

/*==============================================================*/
/* Table: Zamowienie                                            */
/*==============================================================*/
create table Zamowienie (
   Zamowienie_ID        numeric              IDENTITY(0,1)		not null,
   Produkt_ID           numeric              not null,
   Pracownik_ID         numeric              not null,
   Klient_ID            numeric              not null,
   L_sztuk              int                  not null,
   constraint PK_ZAMOWIENIE primary key nonclustered (Zamowienie_ID)
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/
create index Relationship_4_FK on Zamowienie (
Klient_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on Zamowienie (
Pracownik_ID ASC
)
go

/*==============================================================*/
/* Index: Relationship_17_FK                                    */
/*==============================================================*/
create index Relationship_17_FK on Zamowienie (
Produkt_ID ASC
)
go

alter table Egzemplarz
   add constraint FK_EGZEMPLA_RELATIONS_PRODUKT foreign key (Produkt_ID)
      references Produkt (Produkt_ID)
go

alter table Egzemplarz
   add constraint FK_EGZEMPLA_RELATIONS_MAGAZYN foreign key (Magazyn_ID)
      references Magazyn (Magazyn_ID)
go

alter table Pracownik
   add constraint FK_PRACOWNI_RELATIONS_MAGAZYN foreign key (Magazyn_ID)
      references Magazyn (Magazyn_ID)
go

alter table Przesylka
   add constraint FK_PRZESYLK_RELATIONS_FIRMA_KU foreign key (Firma_kurierska_ID)
      references Firma_kurierska (Firma_kurierska_ID)
go

alter table Reklamacja
   add constraint FK_REKLAMAC_RELATIONS_PRACOWNI foreign key (Pracownik_ID)
      references Pracownik (Pracownik_ID)
go

alter table Reklamacja
   add constraint FK_REKLAMAC_RELATIONS_EGZEMPLA foreign key (Egzemplarz_ID)
      references Egzemplarz (Egzemplarz_ID)
go

alter table Reklamacja
   add constraint FK_REKLAMAC_RELATIONS_KLIENT foreign key (Klient_ID)
      references Klient (Klient_ID)
go

alter table Sprzedaz
   add constraint FK_SPRZEDAZ_RELATIONS_EGZEMPLA foreign key (Egzemplarz_ID)
      references Egzemplarz (Egzemplarz_ID)
go

alter table Sprzedaz
   add constraint FK_SPRZEDAZ_RELATIONS_KLIENT foreign key (Klient_ID)
      references Klient (Klient_ID)
go

alter table Sprzedaz
   add constraint FK_SPRZEDAZ_RELATIONS_PRACOWNI foreign key (Pracownik_ID)
      references Pracownik (Pracownik_ID)
go

alter table Wysylka
   add constraint FK_WYSYLKA_RELATIONS_PRZESYLK foreign key (Przesylka_ID)
      references Przesylka (Przesylka_ID)
go

alter table Wysylka
   add constraint FK_WYSYLKA_RELATIONS_EGZEMPLA foreign key (Egzemplarz_ID)
      references Egzemplarz (Egzemplarz_ID)
go

alter table Wysylka
   add constraint FK_WYSYLKA_RELATIONS_KLIENT foreign key (Klient_ID)
      references Klient (Klient_ID)
go

alter table Wysylka
   add constraint FK_WYSYLKA_RELATIONS_PRACOWNI foreign key (Pracownik_ID)
      references Pracownik (Pracownik_ID)
go

alter table Zakup
   add constraint FK_ZAKUP_RELATIONS_EGZEMPLA foreign key (Egzemplarz_ID)
      references Egzemplarz (Egzemplarz_ID)
go

alter table Zakup
   add constraint FK_ZAKUP_RELATIONS_HURTOWNI foreign key (Hurtownia_ID)
      references Hurtownia (Hurtownia_ID)
go

alter table Zakup
   add constraint FK_ZAKUP_RELATIONS_PRACOWNI foreign key (Pracownik_ID)
      references Pracownik (Pracownik_ID)
go

alter table Zamowienie
   add constraint FK_ZAMOWIEN_RELATIONS_PRODUKT foreign key (Produkt_ID)
      references Produkt (Produkt_ID)
go

alter table Zamowienie
   add constraint FK_ZAMOWIEN_RELATIONS_KLIENT foreign key (Klient_ID)
      references Klient (Klient_ID)
go

alter table Zamowienie
   add constraint FK_ZAMOWIEN_RELATIONS_PRACOWNI foreign key (Pracownik_ID)
      references Pracownik (Pracownik_ID)
go

USE [master]
go