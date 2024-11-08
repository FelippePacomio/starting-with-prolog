fatorial(1,1).
fatorial(N,R) :- M is N-1, fatorial(M,R2), R is R2 * N.

densidade(PAIS, DENSIDADE) :- populacao(PAIS, POP), area(PAIS, AREA), DENSIDADE is POP/AREA.

populacao(eua, 203).
populacao(india, 548).
populacao(china, 800).
populacao(brasil, 108).

area(eua, 8).
area(india, 3).
area(china, 10).
area(brasil, 8).