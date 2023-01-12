dt=0.001;
t=-5:dt:5;
p=4;
r=2;
c=2;
x=4*(abs(t)<=p)+(pi/2-(pi/(2*r))*abs(t-2)).*(abs(t-2)<=r)+sqrt(c^2-(t+2).^2).*(abs(t+2)<=c);
plot(t, x, "r", "linewidth", 3)
title("x(t) por t - 3.a)", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
