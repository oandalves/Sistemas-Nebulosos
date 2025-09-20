x = 0:0.1:10;

% Função de Pertinência Triangular
% 3 parâmetros: a, b, c

a = 2;
b = 4;
c = 6;

triangular = trimf(x, [a b c]);

plot(x, triangular);
title('Função de Pertinência Triangular (a,b,c)');
xlabel('x');
ylabel('\mu(x)');