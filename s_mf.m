function questao3
  
  x = 0:0.1:10;
  
  parametros = [2 5; 3 7; 0 8; 4 9];

  figure; 
  hold on; 
  grid on;

  for k = 1:size(parametros, 1)
    l = parametros(k,1);
    r = parametros(k,2);
    
    mu = s_mf(x, l, r);
    
    plot(x, mu, 'LineWidth', 2);
    
  endfor
  
  title('Função de Pertinência S');
  xlabel('x'); 
  ylabel('\mu(x)');
  legend('l=2,r=5','l=3,r=7','l=0,r=8','l=4,r=9');
  
end

function mu = s_mf(x, l, r)
  % Verifica se o valor de l é maior ou igual a r
  if l >= r
    error('Valor inserido de l deve ser menor que o de r');
  endif
  
  mu = zeros(size(x));  
  
  for i = 1:length(x)
    if x(i) <= l
      % Validação 01: x <= l
      mu(i) = 0;
    elseif x(i) <= (l+r)/2
      % Validação 02: l < x <= (l+r)/2
      mu(i) = 2 * ((x(i) - l) / (r - l))^2;
    elseif x(i) < r
      % Validação 03: (l+r)/2 < x <= r
      mu(i) = 1 - 2 * ((r - x(i)) / (r - l))^2;
    else
      % Validação 04: r < x
      mu(i) = 1;
    endif
  endfor
end