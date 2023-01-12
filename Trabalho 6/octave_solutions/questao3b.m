dt=0.05;
T0=10;
t=-(T0/2):dt:(T0/2);

p=4;
r=2;
c=2;

x=4*(abs(t)<=p)+(pi/2-(pi/(2*r))*abs(t-2)).*(abs(t-2)<=r)+sqrt(c^2-(t+2).^2).*(abs(t+2)<=c);

f=-1/(2*dt):(1/T0):1/(2*dt);
X = fft(x)
X = fftshift(X);
modX = abs(X);
angX = angle(X);
subplot(2, 1, 1)
plot(f, modX, "linewidth", 3)
title("Espectro de magnitudes", "fontsize", 20);
subplot(2, 1, 2)
plot(f, angX, "linewidth", 3)
title("Espectro de fases", "fontsize", 20);
