%Questão 4.a)

% Intervalo
dt=0.001;

% Dados basicos
t=0:dt:12-dt; y=e.^(-2/3*t).*(-3/4*cos(4*sqrt(2)/3*t)-15*sqrt(2)/16*sin(4*sqrt(2)/3*t))+3/4;
plot (t, y, "r", "linewidth", 3);
title("y(t) por t - 4.a)", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("y(t)", "fontsize", 18);
