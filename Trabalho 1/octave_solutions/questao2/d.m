% Programa da segunda questao do trabalho de sinais e sistemas
% 2022.2

% Intervalo
dt=0.001;

%   Letra d)
w1=1;
w2=1;
t=-15:dt:15-dt; x=sin(w1.*sin(w2*t).*t);

% Plotando
plot(t,x);
title("Grafico de x(t) por t - Questao 2, Letra D", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
