dt=0.001;
t=-2:dt:2;
delta=1;

x=delta*(abs(t)<=delta);
plot(t, x, "r", "linewidth", 3)
title("Gráfico do Pulso Plano com Delta = 1", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("pDelta(t)", "fontsize", 18);
