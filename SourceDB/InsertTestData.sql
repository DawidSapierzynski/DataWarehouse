USE [sourceDB]
GO

insert into Klient (Pesel, Imie, Nazwisko, Numer_konta, Miejscowosc, Ulica, Nr_domu) 
	values ('78121817191', 'Jacek', 'Abacki', '77249000056609052614439847', 'Poznań', 'Poznańska', '6B'),
		   ('93092735859', 'Adam', 'Babacki', '30249000059327640744118234', 'Warszawa', 'Kwiatowa', '153'),
		   ('58041975393', 'Kamil', 'Nowak', '20249000053151667989096186', 'Wrocław', 'Wrocławska', '20C')
go

insert into Magazyn (Nazwa, Miejscowosc, Ulica, Nr_domu, Kod_pocztowy) 
	values ('Magazyn1', 'Warszawa', 'Targowa', '75', '03-729'),
		   ('Magazyn2', 'Kraków', 'Krakowska', '12A', '12-231'),
		   ('Magazyn3', 'Łódź', 'Polna', '56', '05-045')
go

insert into Produkt (Nazwa, Kategoria, Cena) 
	values ('DELL Inspiron 14', 'Laptop', 3299),
		   ('ACER Curved ED273wmidx', 'Monitor', 899),
		   ('Razer Ornata Chroma', 'Klawiatura', 399)
go


insert into Egzemplarz (Magazyn_ID, Produkt_ID) 
	values (0, 0),
		   (0, 0),
		   (0, 0),
		   (0, 1),
		   (0, 1),
		   (0, 2),
		   (1, 0),
		   (1, 0),
		   (1, 1),
		   (1, 1),
		   (1, 1),
		   (1, 1),
		   (1, 2),
		   (2, 0),
		   (2, 0),
		   (2, 0),
		   (2, 0),
		   (2, 1),
		   (2, 1)
go


insert into Hurtownia (Nazwa, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy) 
	values ('Hurtownia1', 'Warszawa', 'Przemysłowa', '2', '42', '02-123'),
		   ('Hurtownia2', 'Gdynia', 'Fabryczna', '56', '9', '11-054'),
		   ('Hurtownia3', 'Zamość', 'Nowowiejska', '210', '45', '09-038')
go


insert into Firma_kurierska (Nazwa) 
	values ('Firma kurierska1'),
		   ('Firma kurierska2'),
		   ('Firma kurierska3')
go


insert into Przesylka (Firma_kurierska_ID, Waga) 
	values (0, 5),
		   (1, 2.21),
		   (0, 6.63),
		   (2, 0.2),
		   (2, 1)
go


insert into Pracownik (Magazyn_ID, Pesel, Imie, Nazwisko, Numer_konta, Miejscowosc, Ulica, Nr_domu, Stanowisko) 
	values (0, '46040179115', 'Adam', 'Cabacki', '93249000051792045433089372', 'Sopot', 'Nowa', '12', 'Magazynier'),
		   (1, '63050291699', 'Hubert', 'Kowalski', '26249000050153452676598620', 'Katowice', 'Fabryczna', '85', 'Magazynier'),
		   (2, '53012448195', 'Paweł', 'Nowak', '30249000056587385577422934', 'Warszawa', 'Polowa', '12', 'Magazynier')
go



insert into Wysylka (Egzemplarz_ID, Klient_ID, Przesylka_ID, Pracownik_ID) 
	values (2, 1, 0, 1),
		   (5, 1, 1, 2),
		   (7, 2, 2, 1),
		   (11, 0, 3, 2),
		   (12, 0, 4, 0)
go



insert into Zamowienie (Produkt_ID, Pracownik_ID, Klient_ID, L_sztuk) 
	values (0, 0, 1, 1),
		   (1, 2, 1, 1),
		   (0, 1, 2, 1),
		   (1, 2, 0, 1),
		   (2, 0, 0, 1)
go



insert into Reklamacja (Pracownik_ID, Egzemplarz_ID, Klient_ID) 
	values (1, 2, 1),
		   (2, 5, 1),
		   (1, 7, 2)
		   
go


insert into Zakup (Egzemplarz_ID, Hurtownia_ID, Pracownik_ID) 
	values (0, 2, 2),
		   (1, 2, 1),
		   (2, 0, 2),
		   (3, 2, 2),
		   (4, 1, 1),
		   (5, 2, 2),
		   (6, 2, 0),
		   (7, 2, 2),
		   (8, 0, 0),
		   (9, 0, 2),
		   (10, 0, 2),
		   (11, 0, 1),
		   (12, 1, 2),
		   (13, 2, 2),
		   (14, 1, 0),
		   (15, 2, 0),
		   (16, 1, 2),
		   (17, 0, 1),
		   (18, 1, 2)
go



insert into Sprzedaz (Klient_ID, Pracownik_ID, Egzemplarz_ID) 
	values (1, 0, 2),
		   (1, 2, 5),
		   (2, 1, 7),
		   (0, 2, 11),
		   (0, 0, 12)
		   
go


USE [master]
GO
