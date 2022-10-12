% Tonica:
dt = 1/44000;
t = 0:dt:3;
f0 = 120; A=0.02;
w0 = 2*pi*f0;

xt = square(w0*t);

x8 = square(2*w0*t);
x5 = square((3/2)*w0*t);
x4 = square((4/3)*w0*t);
x3 = square((5/4)*w0*t);
x2 = square((9/8)*w0*t);
xd = square((321/319)*w0*t);

% sound(A*x3, 44000);

z = xt + x3 + x5;
sound(A*z, 44000);

