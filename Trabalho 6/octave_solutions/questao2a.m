%Questão 2.a)

% Intervalo
dt=0.001;

% Dados basicos
t=-10:dt:10-dt;
x=8*sinc(4*t)-2*sinc(2*t);
plot (t, x, "r", "linewidth", 3);
title("x(t) por t - 2.a)", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
