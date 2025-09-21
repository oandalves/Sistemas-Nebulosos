x = 0:0.1:10;

a = 2;
b = 4;
c = 6;
d = 8;

mu_triangular = trimf(x, [a b c]);
mu_trapezoidal = trapmf(x, [a b c d]);
mu_sigmoidal = sigmf(x, [a b]);
mu_gaussiana = gaussmf(x, [a b]);
mu_bellgaussiana = gbellmf(x, [a b c]);

% operações ponto a ponto
mu_complemento = 1 - mu_triangular;

plot(x, mu_complemento);
title('Função de Pertinência \mu(x) Complemento');
xlabel('x');
ylabel('\mu(x)');
ylim([0 1.5])
