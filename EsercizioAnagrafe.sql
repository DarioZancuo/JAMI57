/* 1 */
select città.regione, persona.nome
from città join persona on città.nome = persona.cittàNascita
where persona.età >= 18

/* 2 */
select PF.CittàNascita, PF.Sesso, PF.Età, PF.Reddito, Genia.Figlio, Genia.Genitore, PG.Reddito, PG.Età, PG.Sesso, PG.CittàNascita
from Genia join Persona PF on Genia.Figlio=PF.Nome
    join Persona PG on Genia.Genitore = PG.Nome

/* 3 */
select distinct persona.nome, persona.cittàNascita
from persona join genia on persona.nome = genia.genitore
where persona.età >=50

/* 4 */
select G1.Genitore
from Genia G1 join Genia G2 on G2.Genitore = G1.Figlio