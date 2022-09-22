% Programa da segunda questao do trabalho de sinais e sistemas
% 2022.2

% Intervalo
dt=0.001;

%   Letra c)
w=1;
t=-15:dt:15-dt; x=sin(w*(t.^2));

% Plotando
plot(t,x);
title("Grafico de x(t) por t - Questao 2, Letra C", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
