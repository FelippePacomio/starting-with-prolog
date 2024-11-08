fib(2,1).
fib(1,1).
fib(N,R) :- X is N-1, Y is N-2, fib(X,R1), fib(Y,R2), R is R1+R2.

soma_fib([], 0).                
soma_fib([E|T], R) :- fib(E, R2), soma_fib(T, R3), R is R2 + R3.               
