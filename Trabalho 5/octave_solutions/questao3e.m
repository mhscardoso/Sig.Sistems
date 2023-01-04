%% Questão 3 e)
%% Trabalho 5 - Sinais e Sistemas

%Questão 3.a)
% Intervalo
dt = 0.001;

% Dados basicos
t = 0:dt:10 - dt; x = 2 * t - 4 + 5*exp(-1/2 * t);
plot (t, x, "r", "linewidth", 3), hold on

T = 2          %% Valor inicial do periodo
for j=0:3
  k = 0:T:10;
  y = (5 * (1 - T/2).^k) + (2 * T * k) - 4;
  plot(k, y, "*"), hold on
  T = T / 2;    %% Mudanca no periodo segue um padrao
endfor

title("y(t) por t - 3.e)", "fontsize", 20), xlabel("t", "fontsize", 18), ylabel("y(t)", "fontsize", 18);


