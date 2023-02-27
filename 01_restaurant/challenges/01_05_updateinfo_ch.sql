-- Aktualisieren Sie die Kontak-Informationen eines Kunden.

-- Taylor Jenkins aus 27170 6th Ave., Washington, DC,
-- ist umgezogen nach 74 Pine St., New York, NY.
Update Kunden
SET Adresse = '74 Pine St.',Stadt = 'New York',State = 'NY'
Where KundenID = 26;

Select * from Kunden Where Vorname = 'Taylor' and Nachname = 'Jenkins';