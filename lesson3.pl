% Lesson 3 - Listas

% [pam, liz, pat, ann, tom, bob, jim]
% pam é a cabeça, [liz, pat, ann, tom, bob, jim] é a cauda.

% [1, 2, 3, 4, 5]
% 1 é a cabeça, [2, 3, 4, 5] é a cauda.

% [a, [b, c], d, e]
% a é a cabeça, [[b, c], d, e] é a cauda.


% Ex 01 - Um elemento pertence a uma lista?

pertence(X, [X|_]). % verifica se o elemento está presente na cabeça da lista (head).
pertence(X, [_|T]). :- pertence(X,T). %verifica se o elemento está presente na cauda da lista (tail).
% Exemplo de teste: ' pertence(3, [5, 4, 3]). ' retorna true.


% Ex 03 - Encontrar o último elemento de uma lista

ultimo_elemento(X, [X]).
ultimo_elemento(X, [_|T]) :- ultimo_elemento(X,T).
% Exemplo de teste: ' ultimo_elemento(3, [5, 4, 3]). ' retorna true.


% Ex 06 - Remover um elemento de uma lista

remover_lista(X, [], []). % Caso base 1: lista vazia retorna lista vazia. Exemplo de teste: ' remover_lista(3, [], L). '
remover_lista(X, [X], []). % Caso base 2: se a lista contém só um elemento, retorna a própria lista. Exemplo de teste: ' remover_lista(3, [3], L). ' 
remover_lista(X, [X|T], T). % Caso base 3: retorna o tail(T) quando é o primeiro elemento. Exemplo de teste: ' remover_lista(3, [3, 4, 5], L). ' 
remover_lista(X, [H|T], [H|L]) :- remover_lista(X, T, L). % Caso base 4: chama a recursão do HEAD, TAILS e HEAD, LISTA. Exemplo de teste: ' remover_lista(3, [5, 3, 4], L). '  

% Ex 09 - Filtrar elementos pares de uma lista
% Exemplo de teste: ' filtrar_pares([5, 4, 2, 1, 7, 8],L). ' 

even(N) :- mod(N, 2) =:= 0.
filtrar_pares([], []). % Caso base 1: lista vazia retorna lista vazia.
filtrar_pares([X], [X]) :- even(X). % Caso base 2: se a lista contém só um elemento e for par.
filtrar_pares([X], []) :- not(even(X)). % Caso base 3: se a lista estiver vazia e o elemento passado for ímpar.
filtrar_pares([X|T], [X|L]):- even(X), filtrar_pares(T,L). % Caso base 4: se há elementos pares, retorna-los em uma lista.
filtrar_pares([X|T], L):- not(even(X)), filtrar_pares(T,L). % Caso base 5: se o Head NÃO for par, processar restante da lista.
