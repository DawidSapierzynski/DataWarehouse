/*
INSERT INTO sourceDB.dbo.Reklamacja (Pracownik_ID, Egzemplarz_ID, Klient_ID) VALUES (2,11,0), (1,12,0)
UPDATE sourceDB.dbo.Reklamacja SET Pracownik_ID=0 WHERE Reklamacja_ID=0
DELETE FROM sourceDB.dbo.Reklamacja WHERE Reklamacja_ID=1
*/

--------------------------------------------------------------------
--Insert Source to Stage
EXEC stage.dbo.InsertSource
Select 'stage.dbo.Reklamacja_CSV'
Select * FROM stage.dbo.Reklamacja_CSV
Select 'stage.dbo.Reklamacja'
Select * FROM stage.dbo.Reklamacja
go

--------------------------------------------------------------------
--Insert Stage to TMP
EXEC temp.dbo.InsertStage
Select 'temp.dbo.Reklamacja_TMP'
Select * FROM temp.dbo.Reklamacja_TMP
Select 'temp.dbo.Reklamacja_BAD'
Select * FROM temp.dbo.Reklamacja_BAD
Select 'target.dbo.Reklamacja_KEY'
Select * FROM target.dbo.Reklamacja_KEY
Select 'target.dbo.Pracownik_KEY'
Select * FROM target.dbo.Pracownik_KEY
Select 'target.dbo.Egzemplarz_KEY'
Select * FROM target.dbo.Egzemplarz_KEY
Select 'target.dbo.Klient_KEY'
Select * FROM target.dbo.Klient_KEY
go

--------------------------------------------------------------------
--Insert TMP to STG
EXEC temp.dbo.InsertTMPtoSTG
Select 'temp.dbo.Reklamacja_STG'
Select * FROM temp.dbo.Reklamacja_STG
go

--------------------------------------------------------------------
--Insert STG to Target
EXEC target.dbo.InsertTEMPtoTARGET
Select 'target.dbo.Reklamacja_TARGET'
Select * FROM target.dbo.Reklamacja_TARGET
Select 'target.dbo.Reklamacja_HST'
Select * FROM target.dbo.Reklamacja_HST
go

--------------------------------------------------------------------
USE [master]
go


/*
SELECT * FROM target.dbo.Liczba_reklamacji
SELECT * FROM target.dbo.Liczba_egzemplarzy_produktow
SELECT * FROM target.dbo.Wydatki_klientow

USE [sourceDB]
EXEC sp_MSforeachtable 'SELECT * FROM ?'
go

USE [stage]
EXEC sp_MSforeachtable '
	SELECT ''?''
	SELECT * FROM ?'
go

USE [temp]
EXEC sp_MSforeachtable '
	SELECT ''?''
	SELECT * FROM ?'
go

USE [target]
EXEC sp_MSforeachtable '
	SELECT ''?''
	SELECT * FROM ?'
go

USE [target]
EXEC sp_MSforeachtable 'DELETE FROM ?'
go
*/