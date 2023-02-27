-- Registrieren Sie einen Kunden 'atapley2j@kinetecoinc.com' 
-- für unsere Jubilaeumsfeier.
-- Der Kunde wird mit drei Freunden an der Feier teilnehmen.

INSERT  INTO Jubilaeum (KundenID, AnzahlPersonen)
VALUES((select KundenID from kunden where Email = 'atapley2j@kinetecoinc.com')
    , 3);

UPDATE Jubilaeum
SET AnzahlPersonen = 4;

Select * from Jubilaeum;