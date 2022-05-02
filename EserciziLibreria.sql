/* 1 */
select Autore
from Romanzo
where AnnoPubblicazione = 2009

/* 2 */
select Titolo
from Romanzo
where AnnoPubblicazione >= 1990

/* 3 */
select *
from Romanzo
where AnnoPubblicazione > 1900 and AnnoPubblicazione <= 2000

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
where romanzo.autore = autore.id and (autore.DataNascita > 1900 and autore.DataNascita <= 2000)
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

/* 11 */
select *
from romanzo
where romanzo.titolo like "Tokyo%"

/* 12 */
select *
from romanzo
where romanzo.titolo like "%Sposi%"

/* 13 */
select *
from romanzo
where romanzo.titolo like "%i_"

/* 14 */
select *
from romanzo
where romanzo.titolo like "%blues"

/* 15 */
select *
from romanzo
where romanzo.titolo like "%Zeno%" and (romanzo.AnnoPubblicazione > 1900 and romanzo.AnnoPubblicazione <= 2000)

/* 16 */
select*
from romanzo
where romanzo.AnnoPubblicazione < 1900 and romanzo.titolo like "%Sposi%" 

/* 17 */
select * 
from romanzo, autore
where romanzo.autore = autore.id and autore.nome = "Alessandro" and autore.cognome = "Manzoni"

/* 18 */
select distinct *
from romanzo, autore
where romanzo.autore = autore.id and autore.cognome = "Don DeLillo"