dt=0.001;
t=-10:dt:10;
delta=5

x=(pi/2-(pi/(2*delta))*abs(t)).*(abs(t)<=delta);
plot(t, x, "r", "linewidth", 3)
title("Gráfico do Pulso Triangular com Delta = 1", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("rDelta(t)", "fontsize", 18);
