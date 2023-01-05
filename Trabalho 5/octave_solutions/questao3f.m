%% Questão 3 f)
%% Trabalho 5 - Sinais e Sistemas

%Questão 3.a)
% Intervalo
dt = 0.001;

% Dados basicos
t = 0:dt:10 - dt; x = 2 * t - 4 + 5*exp(-1/2 * t);
plot (t, x, "r", "linewidth", 3), hold on

T = 2          %% Valor inicial do periodo
for j=0:3
  %% Coeficientes
  p = (T - 4) / (T + 4);
  A = (T^2 * (1 + p)) / (1 - p)^2;
  B = -A;
  C = (2*T^2) / (1 - p);

  k = 0:T:10;
  y = (A * p.^k) + B  + C * k;
  plot(k, y, "*"), hold on
  T = T / 2;    %% Mudanca no periodo segue um padrao
endfor

title("y(t) por t - 3.f)", "fontsize", 20), xlabel("t", "fontsize", 18), ylabel("y(t)", "fontsize", 18);
