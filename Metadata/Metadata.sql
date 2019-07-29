/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     30.05.2019 12:01:59                          */
/*==============================================================*/

USE [master]
GO

if exists (select 1
           from  sysdatabases
           where  name IN ('metadata'))
   DROP DATABASE metadata
go


CREATE DATABASE [metadata]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'metadata', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\metadata.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'metadata_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.DAWID\MSSQL\DATA\metadata_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [metadata] SET COMPATIBILITY_LEVEL = 140
GO
ALTER DATABASE [metadata] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [metadata] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [metadata] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [metadata] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [metadata] SET ARITHABORT OFF 
GO
ALTER DATABASE [metadata] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [metadata] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [metadata] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [metadata] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [metadata] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [metadata] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [metadata] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [metadata] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [metadata] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [metadata] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [metadata] SET  DISABLE_BROKER 
GO
ALTER DATABASE [metadata] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [metadata] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [metadata] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [metadata] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [metadata] SET  READ_WRITE 
GO
ALTER DATABASE [metadata] SET RECOVERY FULL 
GO
ALTER DATABASE [metadata] SET  MULTI_USER 
GO
ALTER DATABASE [metadata] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [metadata] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [metadata] SET DELAYED_DURABILITY = DISABLED 
GO
USE [metadata]
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
USE [metadata]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [metadata] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO


if exists (select 1
            from  sysobjects
           where  id = object_id('Meta_dane')
            and   type = 'U')
   drop table Meta_dane
go


/*==============================================================*/
/* Table: Meta_dane                                             */
/*==============================================================*/
create table Meta_dane (
   Dane_order			numeric				 null, 
   System               varchar(100)         null,
   T_Source             varchar(100)         null,
   P_Source             varchar(1000)        null,
   T_Stage              varchar(100)         null,
   P_Stage              varchar(1000)        null,
   T_Target             varchar(100)         null,
   P_Target             varchar(1000)        null,
)
go



insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (1, 'csv', 'Klient_CSV', 'Klient_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu', 'Klient_CSV', 'Klient_PK,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu', 'Klient', 'Klient_Key,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (2, 'csv', 'Magazyn_CSV', 'Magazyn_ID,Nazwa,Miejscowosc,Ulica,Nr_domu,Kod_pocztowy', 'Magazyn_CSV', 'Magazyn_PK,Nazwa,Miejscowosc,Ulica,Nr_domu,Kod_pocztowy', 'Magazyn', 'Magazyn_Key,Nazwa,Miejscowosc,Ulica,Nr_domu,Kod_pocztowy')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (3, 'sourceDB', 'Klient', 'Klient_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu', 'Klient', 'Klient_PK,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu', 'Klient', 'Klient_Key,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (4, 'sourceDB', 'Magazyn', 'Magazyn_ID,Nazwa,Miejscowosc,Ulica,Nr_domu,Kod_pocztowy', 'Magazyn', 'Magazyn_PK,Nazwa,Miejscowosc,Ulica,Nr_domu,Kod_pocztowy', 'Magazyn', 'Magazyn_Key,Nazwa,Miejscowosc,Ulica,Nr_domu,Kod_pocztowy')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (5, 'csv', 'Produkt_CSV', 'Produkt_ID,Nazwa,Kategoria,Cena', 'Produkt_CSV', 'Produkt_PK,Nazwa,Kategoria,Cena', 'Produkt', 'Produkt_Key,Nazwa,Kategoria,Cena')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (6, 'sourceDB', 'Produkt', 'Produkt_ID,Nazwa,Kategoria,Cena', 'Produkt', 'Produkt_PK,Nazwa,Kategoria,Cena', 'Produkt', 'Produkt_Key,Nazwa,Kategoria,Cena')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (7, 'csv', 'Egzemplarz_CSV', 'Egzemplarz_ID,Produkt_ID,Magazyn_ID', 'Egzemplarz_CSV', 'Egzemplarz_PK,Produkt_ID,Magazyn_ID', 'Egzemplarz', 'Egzemplarz_Key,Produkt_ID,Magazyn_ID')
go
 
insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (8, 'sourceDB', 'Egzemplarz', 'Egzemplarz_ID,Produkt_ID,Magazyn_ID', 'Egzemplarz', 'Egzemplarz_PK,Produkt_ID,Magazyn_ID', 'Egzemplarz', 'Egzemplarz_Key,Produkt_ID,Magazyn_ID')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (9, 'sourceDB', 'Hurtownia', 'Hurtownia_ID,Nazwa,Miejscowosc,Ulica,Nr_domu,Nr_mieszkania,Kod_pocztowy', 'Hurtownia', 'Hurtownia_PK,Nazwa,Miejscowosc,Ulica,Nr_domu,Nr_mieszkania,Kod_pocztowy', 'Hurtownia', 'Hurtownia_Key,Nazwa,Miejscowosc,Ulica,Nr_domu,Nr_mieszkania,Kod_pocztowy')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (10, 'sourceDB', 'Firma_kurierska', 'Firma_kurierska_ID,Nazwa', 'Firma_kurierska', 'Firma_kurierska_PK,Nazwa', 'Firma_kurierska', 'Firma_kurierska_Key,Nazwa')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (11, 'sourceDB', 'Przesylka', 'Przesylka_ID,Firma_kurierska_ID,Waga', 'Przesylka', 'Przesylka_PK,Firma_kurierska_ID,Waga', 'Przesylka', 'Przesylka_Key,Firma_kurierska_ID,Waga')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (12, 'csv', 'Pracownik_CSV', 'Pracownik_ID,Magazyn_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu,Stanowisko', 'Pracownik_CSV', 'Pracownik_PK,Magazyn_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu,Stanowisko', 'Pracownik', 'Pracownik_Key,Magazyn_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu,Stanowisko')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (13, 'sourceDB', 'Pracownik', 'Pracownik_ID,Magazyn_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu,Stanowisko', 'Pracownik', 'Pracownik_PK,Magazyn_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu,Stanowisko', 'Pracownik', 'Pracownik_Key,Magazyn_ID,Pesel,Imie,Nazwisko,Numer_konta,Miejscowosc,Ulica,Nr_domu,Stanowisko')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (14, 'sourceDB', 'Wysylka', 'Wysylka_ID,Egzemplarz_ID,Klient_ID,Przesylka_ID,Pracownik_ID', 'Wysylka', 'Wysylka_PK,Egzemplarz_ID,Klient_ID,Przesylka_ID,Pracownik_ID', 'Wysylka', 'Wysylka_Key,Egzemplarz_ID,Klient_ID,Przesylka_ID,Pracownik_ID')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (15, 'sourceDB', 'Zamowienie', 'Zamowienie_ID,Produkt_ID,Pracownik_ID,Klient_ID,L_sztuk', 'Zamowienie', 'Zamowienie_PK,Produkt_ID,Pracownik_ID,Klient_ID,L_sztuk', 'Zamowienie', 'Zamowienie_Key,Produkt_ID,Pracownik_ID,Klient_ID,L_sztuk')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (16, 'csv', 'Reklamacja_CSV', 'Reklamacja_ID,Pracownik_ID,Egzemplarz_ID,Klient_ID', 'Reklamacja_CSV', 'Reklamacja_PK,Pracownik_ID,Egzemplarz_ID,Klient_ID', 'Reklamacja', 'Reklamacja_Key,Pracownik_ID,Egzemplarz_ID,Klient_ID')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (17, 'sourceDB', 'Reklamacja', 'Reklamacja_ID,Pracownik_ID,Egzemplarz_ID,Klient_ID', 'Reklamacja', 'Reklamacja_PK,Pracownik_ID,Egzemplarz_ID,Klient_ID', 'Reklamacja', 'Reklamacja_Key,Pracownik_ID,Egzemplarz_ID,Klient_ID')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (18, 'sourceDB', 'Zakup', 'Zakup_ID,Egzemplarz_ID,Hurtownia_ID,Pracownik_ID', 'Zakup', 'Zakup_PK,Egzemplarz_ID,Hurtownia_ID,Pracownik_ID', 'Zakup', 'Zakup_Key,Egzemplarz_ID,Hurtownia_ID,Pracownik_ID')
go

insert into Meta_dane (Dane_order, System, T_Source, P_Source, T_Stage, P_Stage, T_Target, P_Target) values (19, 'sourceDB', 'Sprzedaz', 'Sprzedaz_ID,Klient_ID,Pracownik_ID,Egzemplarz_ID', 'Sprzedaz', 'Sprzedaz_PK,Klient_ID,Pracownik_ID,Egzemplarz_ID', 'Sprzedaz', 'Sprzedaz_Key,Klient_ID,Pracownik_ID,Egzemplarz_ID')
go