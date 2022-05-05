/* 1 */
select scalata.scalatore as Scalatore, nazione.continente as Continente
from scalata join nazione on scalata.nazione = nazione.nome
order by scalata.scalatore

/* 2 */
select scalatore.cf, nazione.continente
from scalata join nazione on scalata.nazione = nazione.nome
    join scalatore on scalatore.cf = scalata.scalatore
where scalatore.annoNascita < 1980
order by scalatore.cf, nazione.continente

/* 3 */
select nazione.nome, nazione.continente
from nazione join scalata on nazione.nome = scalata.nazione
    join scalatore on scalatore.cf = scalata.scalatore
where (scalata.anno - scalatore.annoNascita) < 18

/* 4 */
select nazione.nome as Nazione, count(*) as NumeroScalate
from nazione join scalata on nazione.nome = scalata.nazione
    join scalatore on scalatore.cf = scalata.scalatore
where scalatore.nazioneNascita = scalata.nazione
group by nazione.nome

/* 6 */
select distinct scalatore.cf, scalatore.NazioneNascita, n1.continente as ContinenteNascita, scalata.nazione
from scalatore join scalata on scalatore.cf = scalata.scalatore
    left join nazione on nazione.nome = scalata.nazione
    join nazione n1 on n1.nome = scalatore.nazioneNascita
where n1.continente != "America" 

/* 7 */
select scalata.nazione, scalata.anno, count(*) as NumeroScalate
from scalatore join scalata on scalatore.cf = scalata.scalatore
    join nazione on nazione.nome = scalata.nazione
group by scalata.nazione, scalata.anno
having count(*) > 1
order by scalata.anno

/* 8 */
select scalata.nazione, count(*) / count(distinct anno) as Media
from Scalatore join Scalata on scalatore.cf = scalata.scalatore
where scalatore.nazioneNascita != scalata.nazione
group by scalata.nazione

/* 9 */
select scalatore, scalata.nazione, scalatore.annoNascita, scalatore.nazioneNascita
from scalatore join scalata on scalatore.cf = scalata.scalatore
where scalata.nazione = scalatore.nazioneNascita and scalatore
    in (select scalatore from scalata where scalata.anno - scalatore.annoNascita < 18)