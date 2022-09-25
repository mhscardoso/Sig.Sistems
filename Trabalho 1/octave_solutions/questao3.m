% Programa da terceira questao do trabalho de sinais e sistemas
% 2022.2

% Intervalos
dt=0.001;

% Dados basicos
t=-2:dt:2-dt; x=1-exp(abs(t));
plot(t, x, "r", "linewidth", 3);

title("Grafico de x(t) por t - Questao 3", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);

