-- Fuegen Sie die Bestellung einer Kundin in unsere Datenbank ein
-- und stellen Sie ihr die Gesamtkosten bereit

-- Bestellungsinformationen sind:
-- Für: Loretta Hundey, 6939 Elka Place, 
-- Im Einkaufskorb: 1 House Salad, 1 Mini Cheeseburgers, 1 Tropical Blue Smoothie,
-- Lieferdatum und Zeit: September 20, 2022, @2PM (14:00)
SELECT KundenID from Kunden WHERE Nachname='Hundey';
SELECT SpeiseID, Name FROM Speise WHERE Name = 'House Salad' 
                                   OR Name = 'Mini Cheeseburgers'
                                  OR Name = 'Tropical Blue Smoothie';
SELECT (BestellungsID) From Bestellungen WHERE KundenID=70 order by BestellungsDatum DESC;


/*INSERT INTO Bestellungen (KundenID, BestellungsDatum)
VALUES ((SELECT KundenID from Kunden WHERE Nachname='Hundey';),
         '2022-09-20 14:00:00');*/

/*INSERT INTO BestellungSpeise (BestellungsID, SpeiseID)
VALUES (1001 , 4),
       (1001 , 7),
       (1001 , 20);*/

SELECT SpeiseID, NAME, Preis, Typ FROM Speise;

SELECT Name, SUM(Preis) AS Gesamt  From Speise
LEFT JOIN BestellungSpeise
ON Speise.SpeiseID = BestellungSpeise.SpeiseID
WHERE 
 BestellungsID=1001 
;

