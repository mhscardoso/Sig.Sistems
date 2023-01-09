dt=0.4;
t=-2:dt:2;
v=exp(-2*t.^2);
%plot (t, v, "r*-", "linewidth", 3);
%title("v(t) por t - 1.c)", "fontsize", 20);
%xlabel("t", "fontsize", 18);
%ylabel("v(t)", "fontsize", 18);

f=-1.25:(1/4):1.25;
V = fft(v)
V = fftshift(V);
modV = abs(V);
plot(f, modV, "r*-", "linewidth", 3)
title("Espectro de magnitudes", "fontsize", 20);
