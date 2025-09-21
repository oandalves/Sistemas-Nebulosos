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
mu_intersecao = min(mu_trapezoidal, mu_sigmoidal);

plot(x, mu_intersecao);
title('Função de Pertinência \mu(x) Interseção');
xlabel('x');
ylabel('\mu(x)');
ylim([0 1.5])

