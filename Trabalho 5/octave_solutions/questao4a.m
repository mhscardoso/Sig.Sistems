%Questão 4.a)

% Intervalo
dt=0.001;

% Dados basicos
t=0:dt:12-dt; x=9/4*t-39/16+39/16*exp(-4/3*t);
plot (t, x, "r", "linewidth", 3);
title("y(t) por t - 4.a)", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("y(t)", "fontsize", 18);
