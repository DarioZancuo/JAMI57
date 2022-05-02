/* 1 */
select città.regione, persona.nome
from città join persona on città.nome = persona.cittàNascita
where persona.età >= 18