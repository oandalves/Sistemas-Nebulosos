x = 0:0.01:10;

% Função de Pertinência Gaussiana

a = 2;
b = 8;

gaussiana = gaussmf(x, [a b]);

plot(x, gaussiana);
title('Função de Pertinência Gaussiana');
xlabel('x');
ylabel('\mu(x)');