-- Kreieren Sie eine Liste, die verwendet wird um drei Menues zu erstellen.

-- Kreieren Sie eine Liste aller Speisen. Sortieren Sie diese nach dem Preis beginnend beim niedrigsten.
-- Kreieren Sie eine Liste von Vorspeisen und Getraenken.
-- Kreieren Sie eine Liste des ganzen Angebots ausgenommen der Getränke.
-- Die letzten beiden Menues sollen nach Gericht-Art sortiert sein.
Select Name , Preis From Speise Where Typ = 'Hauptspeise' ORder by Preis ASC;

Select Name , Preis From Speise Where Typ = 'Vorspeise' OR Typ = 'Getränk' ORder by Typ;

Select Name , Preis From Speise Where Typ <>  'Getränk' ORder by Typ;