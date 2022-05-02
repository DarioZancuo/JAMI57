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

/* 5 */
select autore.Cognome, autore.nome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID
order by Autore.Cognome

/* 6 */
select autore.nome, autore.cognome, romanzo.Titolo
from romanzo, autore
where romanzo.autore = autore.ID and autore.Nazionalità = "russo"
order by autore.cognome

/* 7 */
select romanzo.Titolo
from romanzo, autore
where romanzo.autore = autore.id and (autore.DataNascita > 1809 and autore.DataNascita < 2000)
order by autore.cognome

/* 8 */
select romanzo.titolo, romanzo.AnnoPubblicazione
from romanzo, autore
where romanzo.autore = autore.id and autore.DataMorte is null

/* 9 */
select *
from romanzo, autore
where romanzo.autore = autore.id and (autore.DataMorte is null or autore.LuogoMorte != "Torino")

/* 10 */
select romanzo.titolo, romanzo.AnnoPubblicazione
from romanzo, autore
where romanzo.autore = autore.id and autore.LuogoNascita = "Roma"