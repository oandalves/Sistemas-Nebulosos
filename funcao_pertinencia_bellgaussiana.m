x = 0:0.1:10;

% Função de Pertinência BellGaussiana

a = 1;
b = 5;
c = 8;

bellgaussiana = gbellmf(x, [a b c]);

plot(x, bellgaussiana);
title('Função de Pertinência Bell Gaussiana');
xlabel('x');
ylabel('\mu(x)');