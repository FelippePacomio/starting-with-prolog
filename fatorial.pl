fatorial(1,1).
fatorial(N,R) :- M is N-1, fatorial(M,R2), R is R2 * N.