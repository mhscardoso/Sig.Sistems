%Questão 3.a)

% Intervalo
dt=0.001;

% Dados basicos
t=0:dt:10-dt; x=2*t-4+5*exp(-1/2*t);
plot (t, x, "r", "linewidth", 3);
title("y(t) por t - 3.a)", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("y(t)", "fontsize", 18);
