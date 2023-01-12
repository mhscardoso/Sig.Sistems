dt=0.001;
T0=5;
t=-(T0/2):dt:(T0/2);

p=4;
r=2;
c=2;

x=4*(abs(t)<=p)+(pi/2-(pi/(2*r))*abs(t-2)).*(abs(t-2)<=r)+sqrt(c^2-(t+2).^2).*(abs(t+2)<=c);

X = fft(x)
X = fftshift(X);
modX = abs(X);
angX = angle(X);
plot(f, modX, "r*-", "linewidth", 3)
title("Espectro de magnitudes", "fontsize", 20);
plot(f, angX, "r*-", "linewidth", 3)
title("Espectro de fases", "fontsize", 20);
