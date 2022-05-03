/* 1 */
select autore.codice
from autore join programmatore on autore.codice = programmatore.codice
    join programma on programma.id = autore.id 
where programma.anno >= 2000 and programma.linguaggio = "Java"