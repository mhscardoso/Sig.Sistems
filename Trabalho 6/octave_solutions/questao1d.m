dt=0.2;
t=-2:dt:2;
v=exp(-2*t.^2);
%plot (t, v, "r*-", "linewidth", 3);
%title("v(t) por t - 1.d)", "fontsize", 20);
%xlabel("t", "fontsize", 18);
%ylabel("v(t)", "fontsize", 18);

f=-2.5:(1/4):2.5;
V = fft(v)
V = fftshift(V);
modV = abs(V);
plot(f, modV, "r*-", "linewidth", 3)
title("Espectro de magnitudes", "fontsize", 20);

