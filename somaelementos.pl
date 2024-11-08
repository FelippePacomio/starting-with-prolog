soma([],0).
soma([E],E).
soma([H|T],R) :- soma(T,R2), R is H+R2.
soma(L,R).