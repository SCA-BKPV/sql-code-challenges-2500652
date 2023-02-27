-- Erstellen Sie eine Reservierung für einen Kunden, 
-- dessen Daten eventuell schon in unserer Datenbank sind - oder auch nicht.

-- Die Reservierung ist für:
-- Sam McAdams (smac@kinetecoinc.com), 5 Personen
-- August 12, 2022 @ 6PM (18:00)

Select kunden.KundenID From Kunden WHERE Kunden.Email = 'smac@kinetecoinc.com';

--INSERT INTO Kunden (Vorname, Nachname, Email)
--VALUES ('Sam', 'McAdams','smac@kinetecoinc.com');
INSERT INTO Reservierung (KundenID, Datum, PartyGroesse)
VALUES (
(Select kunden.KundenID From Kunden WHERE Kunden.Email = 'smac@kinetecoinc.com');,
'2022-08-12 18:00:00',
 5)

Select * from Reservierung WHERE KundenID = 102;