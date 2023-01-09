%Questão 1.d)

% Intervalo
dt=0.2;

% Dados basicos
t=-2:dt:2;
v=exp(-2*t.^2);
%plot (t, v, "rx", "linewidth", 10);
%title("v(t) por t - 1.d)", "fontsize", 20);
%label("t", "fontsize", 18);
%ylabel("v(t)", "fontsize", 18);

f=-2.5:(1/4):2.5;
V = fft(v)
V = fftshift(V);
modV = abs(V);
plot(f, modV, "r*")
title("Espectro de magnitudes", "fontsize", 20);

