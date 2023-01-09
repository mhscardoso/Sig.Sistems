dt=0.0005;
t=-2:dt:2;
v=exp(-2*t.^2);

f=-(1/(2*dt)):(1/4):(1/(2*dt));
V = fft(v)
V = fftshift(V);
modV = abs(V);
plot(f, modV, "r*")
title("Espectro de magnitudes", "fontsize", 20);

