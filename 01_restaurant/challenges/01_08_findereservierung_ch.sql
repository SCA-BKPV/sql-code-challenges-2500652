-- Finden Sie die Reservierung eines Kunden, 
-- dessen Namen wir nicht genau buchstabieren können.

-- Der Name hat unter anderem folgenede Variationen:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- Heute ist der 14.Juni.

Select Kunden.KundenID, Kunden.Vorname, Kunden.Nachname, Reservierung.Datum , Reservierung.PartyGroesse from kunden 
LEFT JOIN Reservierung
ON Kunden.KundenID = Reservierung.KundenID
where Kunden.Nachname like 'Ste%'
AND Reservierung.Datum >= '2022-06-14'
;