gerou(kelly, maria). % Kelly gerou Maria
gerou(cleber, maria). % Cleber gerou Maria
gerou(cleber, bruna). % Cleber gerou Bruna
gerou(maria, julia). % Maria gerou Julia
gerou(maria, pedro). % Maria gerou Pedro
gerou(pedro, lucas). % Pedro gerou Lucas

% Todos os nomes são escritos em minúsculo. As letras maiúsculas são usadas
% como variáveis. Por exemplo, se quisermos saber quais são as filhas do
% Cleber, podemos usar gerou(cleber, X). Sendo o 'X' a variável.

% Exemplo para saber se são irmãos: gerou(X, julia), gerou(X, pedro).
% Exemplo para saber quem são os avós: gerou(X, Y), gerou(Y, pedro).
% Exemplo para saber quem são os netos: gerou(cleber, Y), gerou(Y, X).
% Segundo exemplo para saber quem são os avós: gerou(X, Y), gerou(Y, Z).