Disciplina de Sistemas Nebulosos. Utilizando a IDE GNU Octave. Trata de um ambiente de implementação de código aberto e alternativa ao Matlab. Minha proposta com esse repositório, além do estudo, é tentar trabalhar em paralelo com o Matlab e entender as lacunas dos sistemas. Seja bem-vindx aos Sistemas Nebulosos.

Funções:
- Triangular: trimf(x, [2 5 8]); 
- Trapezoidal: trapmf(x, [2 3 6 8]); 
- Gaussiana: gaussmf(x, [1 5]); 
- Bell Generalizada: gbellmf(x, [2 4 5]); 
- Sigmoidal: sigmf(x, [1 5]);

Operações com conjuntos Fuzzy:
- União: max(mu_triangular, mu_bell)
- Interseção: min(mu_sigmoidal, mu_trapezoidal)
- Complemento: 1 - mu_triangular

Operadores T-norma
- Mínimo
- Algébrico
- Limitado
- Drástico
  
Operadores T-conorma
- Máximo
- Algébrico
- Limitado
- Drástico
