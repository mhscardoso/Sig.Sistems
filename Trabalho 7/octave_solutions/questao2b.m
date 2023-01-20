%% Dados basicos
dt = 0.001;

t1 = -4:dt:0;
t2 = 0:dt:2;
t3 = 2:dt:4;

x1 = 4 - sqrt(-t1.^2 - 4 * t1);
x2 = 4 + t2 * (pi / 2);
x3 = 4 + 2 * pi - t3 * (pi / 2);

t = [t1 t2 t3];
x = [x1 x2 x3];

%% plot(t, x);

X = fft(x);

