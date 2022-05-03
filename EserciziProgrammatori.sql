/* 1 */
select autore.codice
from autore join programmatore on autore.codice = programmatore.codice
    join programma on programma.id = autore.id 
where programma.anno >= 2000 and programma.linguaggio = "Java"

/* 2 */
select programmatore.nome, programmatore.categoria
from autore join programmatore on autore.codice = programmatore.codice
join programma on programma.id = autore.id
where programma.linguaggio != "Python"
order by programmatore.nome

/* 3 */
select programmatore.nome, autore.codice, programma.anno, programma.linguaggio
from autore join programmatore on autore.codice = programmatore.codice 
    join programma on programma.id = autore.id
where programmatore.categoria = 10 and programma.linguaggio != "Java"