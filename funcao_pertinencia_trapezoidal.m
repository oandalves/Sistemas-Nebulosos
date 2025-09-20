x = 0:0.01:10;

% Função de Pertinência Trapezoidal
% 4 parâmetros: a, b, c, d

a = 2;
b = 4;
c = 6;
d = 8;

trapezoidal = trapmf(x, [a b c d]);

plot(x, trapezoidal);
title('Função de Pertinência Trapezoidal (a,b,c, d)');
xlabel('x');
ylabel('\mu(x)');