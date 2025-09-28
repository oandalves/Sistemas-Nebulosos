clc;
clear;
close;

pkg load fuzzy-logic-toolkit 

a = 0:0.01:1; % Variável A
b = 0:0.01:1; % Variável B

% Inicializar matrizes de T-Conorma
Smaximo = zeros(length(a), length(b)); % T-conorma Máximo
Salgebrico = zeros(length(a), length(b)); % T-conorma Algébrico
Slimitado = zeros(length(a), length(b)); % T-conorma Limitado
Sdrastico  = zeros(length(a), length(b)); % T-conorma Drástico

for i = 1:length(a)
  for j = 1:length(b)
    Smaximo(i,j) = max(a(i), b(j)); % T-conorma Máximo
    Salgebrico(i,j) = a(i) + b(j) - a(i)*b(j); % T-conorma Algébrico
    Slimitado(i,j) = min(1, a(i) + b(j)); % T-conorma Limitado
    % T-conorma Drástico
    if a(i) == 1 || b(j) == 1 % a ou b = 1
      Sdrastico(i,j) = 1;
    else % Caso contrário
      Sdrastico(i,j) = max(a(i), b(j));
    endif
  endfor
endfor

figure;
subplot(2,2,1); 
surf(a,b,Smax); 
title('S-norma Máximo');
subplot(2,2,2); 
surf(a,b,Salg); 
title('S-norma Soma Algébrica');
subplot(2,2,3); 
surf(a,b,Slim); 
title('S-norma Soma Limitada');
subplot(2,2,4); 
surf(a,b,Sdr);  
title('S-norma Soma Drástica');
