clc;
clear;
close;

pkg load fuzzy-logic-toolkit 

a = 0:0.01:1; % Variável A
b = 0:0.01:1; % Variável B

% Inicializar matrizes de T-Norma
Tminimo = zeros(length(a), length(b)); % T-Norma - Mínimo
Talgebrico = zeros(length(a), length(b)); % T-Norma - Algébrico
Tlimitado = zeros(length(a), length(b)); % T-Norma - Limitado
Tdrastico  = zeros(length(a), length(b)); % T-Norma - Drástico

for i = 1:length(a)
  for j = 1:length(b)
    Tminimo(i,j) = min(a(i), b(j)); % T-Norma - Mínimo
    Talgebrico(i,j) = a(i) * b(j); % T-Norma - Algébrico
    Tlimitado(i,j) = max(0, a(i) + b(j) - 1); % T-Norma - Limitado
    % T-Norma - Drástico
    if a(i) == 1 % a igual a 1
      Tdrastico(i,j) = b(j);
    elseif b(j) == 1 % b igual a 1
      Tdrastico(i,j) = a(i);
    else % Caso contrário
      Tdrastico(i,j) = 0;
    endif
  endfor
endfor

figure;
subplot(2,2,1); 
surf(a,b,Tminimo); 
title('T-norma Mínimo');
subplot(2,2,2); 
surf(a,b,Talgebrico); 
title('T-norma Produto Algébrico');
subplot(2,2,3); 
surf(a,b,Tlimitado); 
title('T-norma Produto Limitado');
subplot(2,2,4); 
surf(a,b,Tdrastico);  
title('T-norma Produto Drástico');

