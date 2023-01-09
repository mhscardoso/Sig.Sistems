%Questão 1.d)

% Intervalo
dt=0.2;

% Dados basicos
t=-2:dt:2;
v=exp(-2*t.^2);
% plot (t, v, "rx", "linewidth", 10);
% title("v(t) por t - 1.d)", "fontsize", 20);
% xlabel("t", "fontsize", 18);
% ylabel("v(t)", "fontsize", 18);
V = fft(v);
modV = abs(V);
angV = angle(V);
V = fftshift(V);
modV = abs(V);
plot(t, modV, "r*")
title("Espectro de magnitudes", "fontsize", 20);

