/* 1 */
select città.regione, persona.nome
from città join persona on città.nome = persona.cittàNascita
where persona.età >= 18

/* 2 */
select pf.nome as nome_figlio, pg.nome as nome_genitore
from persona as pf join genia on pf.nome = genia.figlio
    join persona as pg on pg.nome = genia.genitore
where pf.cittàNascita = pg.cittàNascita

/* 3 */
select distinct persona.nome, persona.cittàNascita
from persona join genia on persona.nome = genia.genitore
where persona.età >=50

/* 4 */
select distinct p.Genitore as Nonni
from Genia p join Genia g on g.Genitore = p.Figlio