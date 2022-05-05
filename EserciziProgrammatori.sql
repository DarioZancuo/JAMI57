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

/* 4 */
select distinct a1.codice as a1, a2.codice as a2
from autore a1 join programma on a1.id = programma.id
    join autore a2 on a1.id = a2.id
where a1.codice != a2.codice
    and a1.codice > a2.codice

/* 5 */
select autore.codice, programmatore.nome
from autore join programmatore on autore.codice = programmatore.codice
    join programma on programma.id = autore.id
where programma.linguaggio = "Java"
group by programma.linguaggio

/* 6 */
select programmatore.nome, programmatore.codice, programma.anno, count(*) as numeroProgrammi
from autore join programmatore on autore.codice = programmatore.codice
    join programma on programma.id = autore.id
    group by programmatore.codice, programma.anno

/* 7 */
select programma.linguaggio, count(*) as mediaProgrammatori
from autore join programmatore on autore.codice = programmatore.codice
    join programma on programma.id = autore.id
    group by programma.linguaggio

/* 5 */
select programmatore.codice, programmatore.nome
from programmatore 
where programmatore.nome in 
    (select programmatore.nome 
        from programmatore join autore on autore.codice = programmatore.codice 
            join programma on programma.id = autore.id 
                where programma.linguaggio = "Java")