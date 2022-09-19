dt = 0.001;
t = -2 * pi:dt:2 * pi - dt;

w = 7;

x = sin(w * t.^2);

plot(t, x);
