dt = 0.001;
t = -2 * pi:dt:2 * pi - dt;

w1 = 3;
w2 = 2;

x1 = sin(w2 * t);
x = sin(w1 .* x1 .* t);

plot(t, x);
