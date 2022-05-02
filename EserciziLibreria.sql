/* 1 */
select Autore
from Romanzo
where AnnoPubblicazione = 2009

/* 2 */
select Titolo
from Romanzo
where AnnoPubblicazione > 1990

/* 3 */
select *
from Romanzo
where AnnoPubblicazione > 1900

/* 4 */
select autore.Nome, autore.Cognome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID