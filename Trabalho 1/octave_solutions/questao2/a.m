% Programa da segunda questao do trabalho de sinais e sistemas
% 2022.2

% Intervalo
dt=0.001;

%   Letra a)
% Dados basicos
t=-5:dt:5-dt; x=sin(pi*t)+cos(2*pi*t)/2+sin(3*pi*t)/3+cos(4*pi*t)/4;
plot (t, x);
title("Grafico de x(t) por t - Questao 2, Letra A", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
