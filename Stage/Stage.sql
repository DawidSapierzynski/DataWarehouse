/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     30.05.2019 12:01:59                          */
/*==============================================================*/

USE [master]
GO

if exists (select 1
           from  sysdatabases
           where  name IN ('stage'))
   DROP DATABASE stage
go

CREATE DATABASE [stage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'stage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\stage.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'stage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\stage_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [stage] SET COMPATIBILITY_LEVEL = 140
GO
ALTER DATABASE [stage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [stage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [stage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [stage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [stage] SET ARITHABORT OFF 
GO
ALTER DATABASE [stage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [stage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [stage] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [stage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [stage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [stage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [stage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [stage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [stage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [stage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [stage] SET  DISABLE_BROKER 
GO
ALTER DATABASE [stage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [stage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [stage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [stage] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [stage] SET  READ_WRITE 
GO
ALTER DATABASE [stage] SET RECOVERY FULL 
GO
ALTER DATABASE [stage] SET  MULTI_USER 
GO
ALTER DATABASE [stage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [stage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [stage] SET DELAYED_DURABILITY = DISABLED 
GO
USE [stage]
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

USE [stage]
GO


if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz')
            and   type = 'U')
   drop table Egzemplarz
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Egzemplarz_CSV')
            and   type = 'U')
   drop table Egzemplarz_CSV
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
           where  id = object_id('Klient_CSV')
            and   type = 'U')
   drop table Klient_CSV
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn')
            and   type = 'U')
   drop table Magazyn
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Magazyn_CSV')
            and   type = 'U')
   drop table Magazyn_CSV
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik')
            and   type = 'U')
   drop table Pracownik
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pracownik_CSV')
            and   type = 'U')
   drop table Pracownik_CSV
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt')
            and   type = 'U')
   drop table Produkt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Produkt_CSV')
            and   type = 'U')
   drop table Produkt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Przesylka')
            and   type = 'U')
   drop table Przesylka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja')
            and   type = 'U')
   drop table Reklamacja
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Reklamacja_CSV')
            and   type = 'U')
   drop table Reklamacja_CSV
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sprzedaz')
            and   type = 'U')
   drop table Sprzedaz
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wysylka')
            and   type = 'U')
   drop table Wysylka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Zakup')
            and   type = 'U')
   drop table Zakup
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
   Egzemplarz_PK        numeric              null,
   Produkt_ID           numeric              null,
   Magazyn_ID           numeric              null,
)
go

/*==============================================================*/
/* Table: Egzemplarz_CSV                                        */
/*==============================================================*/
create table Egzemplarz_CSV (
   Egzemplarz_PK        numeric              null,
   Produkt_ID           numeric              null,
   Magazyn_ID           numeric              null,
)
go

/*==============================================================*/
/* Table: Firma_kurierska                                       */
/*==============================================================*/
create table Firma_kurierska (
   Firma_kurierska_PK  numeric				 null,
   Nazwa                varchar(100)         null,
)
go

/*==============================================================*/
/* Table: Hurtownia                                             */
/*==============================================================*/
create table Hurtownia (
   Hurtownia_PK        numeric              null,
   Nazwa                varchar(100)         null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Nr_mieszkania        varchar(10)          null,
   Kod_pocztowy         varchar(6)           null,
)
go

/*==============================================================*/
/* Table: Klient                                                */
/*==============================================================*/
create table Klient (
   Klient_PK            numeric              null,
   Pesel                varchar(11)          null,
   Imie                 varchar(30)          null,
   Nazwisko             varchar(30)          null,
   Numer_konta          varchar(26)          null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
)
go

/*==============================================================*/
/* Table: Klient_CSV                                                */
/*==============================================================*/
create table Klient_CSV (
   Klient_PK            numeric              null,
   Pesel                varchar(11)          null,
   Imie                 varchar(30)          null,
   Nazwisko             varchar(30)          null,
   Numer_konta          varchar(26)          null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
)
go

/*==============================================================*/
/* Table: Magazyn                                               */
/*==============================================================*/
create table Magazyn (
   Magazyn_PK           numeric              null,
   Nazwa                varchar(100)         null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Kod_pocztowy         varchar(6)           null,
)
go

/*==============================================================*/
/* Table: Magazyn_CSV                                               */
/*==============================================================*/
create table Magazyn_CSV (
   Magazyn_PK           numeric              null,
   Nazwa                varchar(100)         null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Kod_pocztowy         varchar(6)           null,
)
go

/*==============================================================*/
/* Table: Pracownik                                             */
/*==============================================================*/
create table Pracownik (
   Pracownik_PK         numeric              null,
   Magazyn_ID           numeric              null,
   Pesel                varchar(11)          null,
   Imie                 varchar(30)          null,
   Nazwisko             varchar(30)          null,
   Numer_konta          varchar(26)          null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Stanowisko           varchar(100)         null,
)
go

/*==============================================================*/
/* Table: Pracownik_CSV                                         */
/*==============================================================*/
create table Pracownik_CSV (
   Pracownik_PK         numeric              null,
   Magazyn_ID           numeric              null,
   Pesel                varchar(11)          null,
   Imie                 varchar(30)          null,
   Nazwisko             varchar(30)          null,
   Numer_konta          varchar(26)          null,
   Miejscowosc          varchar(50)          null,
   Ulica                varchar(100)         null,
   Nr_domu              varchar(10)          null,
   Stanowisko           varchar(100)         null,
)
go

/*==============================================================*/
/* Table: Produkt                                               */
/*==============================================================*/
create table Produkt (
   Produkt_PK           numeric				 null,
   Nazwa                varchar(100)         null,
   Kategoria            varchar(100)         null,
   Cena                 decimal              null,
)
go

/*==============================================================*/
/* Table: Produkt_CSV                                           */
/*==============================================================*/
create table Produkt_CSV (
   Produkt_PK           numeric				 null,
   Nazwa                varchar(100)         null,
   Kategoria            varchar(100)         null,
   Cena                 decimal              null,
)
go

/*==============================================================*/
/* Table: Przesylka                                             */
/*==============================================================*/
create table Przesylka (
   Przesylka_PK         numeric              null,
   Firma_kurierska_ID   numeric              null,
   Waga                 decimal              null,
)
go

/*==============================================================*/
/* Table: Reklamacja                                            */
/*==============================================================*/
create table Reklamacja (
   Reklamacja_PK        numeric              null,
   Pracownik_ID         numeric              null,
   Egzemplarz_ID        numeric              null,
   Klient_ID            numeric              null,
)
go

/*==============================================================*/
/* Table: Reklamacja_CSV                                            */
/*==============================================================*/
create table Reklamacja_CSV (
   Reklamacja_PK        numeric              null,
   Pracownik_ID         numeric              null,
   Egzemplarz_ID        numeric              null,
   Klient_ID            numeric              null,
)
go

/*==============================================================*/
/* Table: Sprzedaz                                              */
/*==============================================================*/
create table Sprzedaz (
   Sprzedaz_PK          numeric              null,
   Klient_ID            numeric              null,
   Pracownik_ID         numeric              null,
   Egzemplarz_ID        numeric              null,
)
go

/*==============================================================*/
/* Table: Wysylka                                               */
/*==============================================================*/
create table Wysylka (
   Wysylka_PK           numeric              null,
   Egzemplarz_ID        numeric              null,
   Klient_ID            numeric              null,
   Przesylka_ID         numeric              null,
   Pracownik_ID         numeric              null,
)
go

/*==============================================================*/
/* Table: Zakup                                                 */
/*==============================================================*/
create table Zakup (
   Zakup_PK             numeric              null,
   Egzemplarz_ID        numeric              null,
   Hurtownia_ID        numeric               null,
   Pracownik_ID         numeric              null,
)
go

/*==============================================================*/
/* Table: Zamowienie                                            */
/*==============================================================*/
create table Zamowienie (
   Zamowienie_PK        numeric              null,
   Produkt_ID           numeric              null,
   Pracownik_ID         numeric              null,
   Klient_ID            numeric              null,
   L_sztuk              int                  null,
)
go



CREATE PROCEDURE [dbo].[InsertSource] as
declare @dane_order numeric
declare @system varchar(100)
declare @t_Source varchar(100)
declare @p_Source varchar(1000)
declare @t_Stage varchar(100)
declare @p_Stage varchar(1000)
declare cur CURSOR LOCAL for
    select Dane_order, System, T_Source, P_Source, T_Stage, P_Stage from [metadata].[dbo].Meta_dane order by 'Dane_order'
declare @sql nvarchar(max)
begin

EXEC sp_MSforeachtable 'DELETE FROM ?'

open cur

fetch next from cur into @dane_order, @system, @t_Source, @p_Source, @t_Stage, @p_Stage

while @@FETCH_STATUS = 0 BEGIN
    IF @system IN ('csv')
		Begin
			
			
			set @sql = 'BULK INSERT stage.dbo.'+@t_Stage+' ' +
			'From ''C:\Users\Dawid\OneDrive - Wojskowa Akademia Techniczna\Szkola\SEMESTR 6\Hurtownie danych\Stuktury\SourceCSV\'+@t_Source+'.csv'' '+
			'WITH (CODEPAGE = 65001,
				  FIRSTROW = 2,
				  FIELDTERMINATOR = '','',
				  ROWTERMINATOR = ''\n'')'
			EXECUTE(@sql)
		END
	ELSE
		Begin
			EXECUTE ('insert into stage.dbo.' + @t_Stage + ' (' + @p_Stage + ') ' + ' select ' + @p_Source + ' from ' + @system + '.dbo.' + @t_Source)
		END

	fetch next from cur into @dane_order, @system, @t_Source, @p_Source, @t_Stage, @p_Stage
END

close cur
deallocate cur

end
go

