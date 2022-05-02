/* 1 */
select città.regione, persona.nome
from città join persona on città.nome = persona.cittàNascita
where persona.età >= 18

/* 3 */
select distinct persona.nome, persona.cittàNascita
from persona join genia on persona.nome = genia.genitore
where persona.età >=50