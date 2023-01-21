%% dados basicos
T0 = 10;
N = 1024;
dt = T0 / (N - 1);
df = 1 / T0;
fa = 1 / dt;


t = -T0 / 2 : dt : T0 / 2;
f = -fa / 2 : df : fa / 2;

%% p_4(t) + r_2(t - 2) - c_2(t + 2)
x = 4*(abs(t) <= 4) + \
    (pi / 2 - (pi / 4) * abs(t - 2)).*(abs(t - 2) <= 2) - \
    (sqrt(4 - (t + 2).^2)) .* (abs(t + 2) <= 2);

X = fft(x);
Xa = fftshift(X);

modX = abs(Xa);
angleX = angle(Xa);

subplot(2, 1, 1)
plot(f, modX, "linewidth", 3)
title("Espectro de magnitudes", "fontsize", 20);

subplot(2, 1, 2)
plot(f, angleX, "linewidth", 3)
title("Espectro de fases", "fontsize", 20);

