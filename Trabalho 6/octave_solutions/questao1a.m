%Questão 1.a)

% Intervalo
dt=0.001;

% Dados basicos
t=-2:dt:2-dt;
v=exp(-2*t.^2);
plot (t, v, "r", "linewidth", 3);
title("v(t) por t - 1.a)", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("v(t)", "fontsize", 18);

