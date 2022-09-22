% Programa da segunda questao do trabalho de sinais e sistemas
% 2022.2

% Intervalo
dt=0.001;

%   Letra b)
% Dados basicos
w=1;
t=-7:dt:7-dt; x=sin(w*t).*cos(50*w*t);

% Plotando
plot (t, x);
title("Grafico de x(t) por t - Questao 2, Letra B", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
