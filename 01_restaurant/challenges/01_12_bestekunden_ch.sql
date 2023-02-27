-- Erstellen Sie eine Liste von Kundinnen/Kunden,
-- die die meisten Bestellungen abgegeben haben,
-- sodass wir ihnen einen Coupon schenken können.

-- Geben Sie die Anzahl der Bestellungen, 
-- den Vornamen, Nachnamen sowie die Email-Adresse an.

Select Vorname, Nachname, Email, Count(Bestellungen.BestellungsID) AS AnzahlBestellungen from Kunden
LEFT JOIN Bestellungen
ON Kunden.KundenID = Bestellungen.KundenID
Group by bestellungen.KundenID
ORDER by 4 DESC
LIMIT 3;
