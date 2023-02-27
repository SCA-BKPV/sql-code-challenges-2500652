-- Updaten Sie die Informationen in der Datenbank.

-- Tragen Sie Cleo Goldwaters Lieblingsgericht 
-- als "Quinoa Salmon Salad" ein.

select SpeiseID, Name from speise Where name = 'Quinoa Salmon Salad';
SELECT * FROM Kunden where Vorname = 'Cleo';

UPDATE Kunden
SET LieblingsGericht = 9
Where KundenID=42;