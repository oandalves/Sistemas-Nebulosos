x = 0:0.1:10;

% Função de Pertinência Sigmoidal

a = 3;
b = 6;

sigmoidal = sigmf(x, [a b]);

plot(x, sigmoidal);
title('Função de Pertinência Sigmoidal');
xlabel('x');
ylabel('\mu(x)');