-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- für Freitag stornieren moechte. Heute ist der 24.Juli 2022.
select * FROM kunden WHERE Vorname LIKE '%Norby%';
select * FROM Reservierung WHERE KundenID = 64 order by ReservierungsID DESC;
select * FROM Reservierung WHERE datum > '2022-07-24' order by ReservierungsID DESC;

--DELETE FROM Reservierung WHERE ReservierungsID = 1962;