% Programa da quarta questao do trabalho de sinais e sistemas
% 2022.2

% Intervalos
dt=0.001;
T0 = 10;
w0 = 2*pi/T0;

% Dados basicos
t1=-5:dt:-3-dt; x1=-t1-5;
t2=-3:dt:-1-dt; x2=0*t2-2;
t3=-1:dt:1-dt; x3=-t3.^3+3*t3;
t4=1:dt:3-dt; x4=0*t4+2;
t5=3:dt:5-dt; x5=-t5+5;

% Concatenando e plotando
t=[t1 t2 t3 t4 t5]; x=[x1 x2 x3 x4 x5];
%plot(t, x, "-", "linewidth", 3)
%title("Grafico de x(t) por t", "fontsize", 20)
%xlabel("t", "fontsize", 18)
%ylabel("x(t)", "fontsize", 18)
%print plot4a.jpg

% Encontrando a potencia total P
Ptotal = sum(abs(x).^2*dt)/T0;

% Encontrando os Xk para k pertence a [-10 10]
xk0 = sum(x.*exp(-i*0*w0.*t)*dt)/T0;
xk1 = sum(x.*exp(-i*1*w0.*t)*dt)/T0;
xk2 = sum(x.*exp(-i*2*w0.*t)*dt)/T0;
xk3 = sum(x.*exp(-i*3*w0.*t)*dt)/T0;
xk4 = sum(x.*exp(-i*4*w0.*t)*dt)/T0;
xk5 = sum(x.*exp(-i*5*w0.*t)*dt)/T0;
xk6 = sum(x.*exp(-i*6*w0.*t)*dt)/T0;
xk7 = sum(x.*exp(-i*7*w0.*t)*dt)/T0;
xk8 = sum(x.*exp(-i*8*w0.*t)*dt)/T0;
xk9 = sum(x.*exp(-i*9*w0.*t)*dt)/T0;
xk10 = sum(x.*exp(-i*10*w0.*t)*dt)/T0;

Xks = zeros(1, 21);
for k = -10:1:10;
  Xks(k + 11) = sum(x.*exp(-i*k*w0.*t)*dt)/T0;
end

disp(Xks);

k = [-10:10];
magnitude = [abs(xk10) abs(xk9) abs(xk8) abs(xk7) abs(xk6) abs(xk5) abs(xk4) abs(xk3) abs(xk2) abs(xk1) abs(xk0) abs(xk1) abs(xk2) abs(xk3) abs(xk4) abs(xk5) abs(xk6) abs(xk7) abs(xk8) abs(xk9) abs(xk10)];
fase = [arg(xk10) arg(xk9) arg(xk8) arg(xk7) arg(xk6) arg(xk5) arg(xk4) arg(xk3) arg(xk2) arg(xk1) arg(xk0) arg(xk1) arg(xk2) arg(xk3) arg(xk4) arg(xk5) arg(xk6) arg(xk7) arg(xk8) arg(xk9) arg(xk10)];
%subplot(2,2,2)
%plot(k, magnitude, "*", "linewidth", 3)
%title("Grafico de magnitude", "fontsize", 20)
%xlabel("k", "fontsize", 18)
%ylabel("M", "fontsize", 18)
%print plot4dm.jpg

%subplot(2,2,3)
%plot(k, fase, "*", "linewidth", 3)
%title("Grafico de fase", "fontsize", 20)
%xlabel("k", "fontsize", 18)
%ylabel("F", "fontsize", 18)
%print plot4df.jpg

% Encontrando a potencia de cada Xk
P0 = abs(xk0)^2;
P1 = abs(xk1)^2;
P2 = abs(xk2)^2;
P3 = abs(xk3)^2;
P4 = abs(xk4)^2;
P5 = abs(xk5)^2;
P6 = abs(xk6)^2;
P7 = abs(xk7)^2;
P8 = abs(xk8)^2;
P9 = abs(xk9)^2;
P10 = abs(xk10)^2;

P = [P10 P9 P8 P7 P6 P5 P4 P3 P2 P1 P0 P1 P2 P3 P4 P5 P6 P7 P8 P9 P10];
%subplot(2,2,4)
%plot(k, P, "*", "linewidth", 3)
%title("Grafico da potencia", "fontsize", 20)
%xlabel("k", "fontsize", 18)
%ylabel("P", "fontsize", 18)
%print plot4dp.jpg

% Estimando a quantidade de harmonicos necessarios para reter 90% da potencia total
p = abs(sum(x.*exp(-i*0*w0.*t)*dt)/T0)^2/Ptotal;
harmonico = 1;
while (p < 0.9)
  p = p + 2*abs(sum(x.*exp(-i*harmonico*w0.*t)*dt)/T0)^2/Ptotal
  harmonico++
endwhile

a0 = xk0;
a1 = (xk1+conj(xk1));
a2 = (xk2+conj(xk2));
a3 = (xk3+conj(xk3));
a4 = (xk4+conj(xk4));
a5 = (xk5+conj(xk5));
a6 = (xk6+conj(xk6));
a7 = (xk7+conj(xk7));
a8 = (xk8+conj(xk8));
a9 = (xk9+conj(xk9));
a10 = (xk10+conj(xk10));

b0 = i*(xk0-conj(xk0));
b1 = i*(xk1-conj(xk1));
b2 = i*(xk2-conj(xk2));
b3 = i*(xk3-conj(xk3));
b4 = i*(xk4-conj(xk4));
b5 = i*(xk5-conj(xk5));
b6 = i*(xk6-conj(xk6));
b7 = i*(xk7-conj(xk7));
b8 = i*(xk8-conj(xk8));
b9 = i*(xk9-conj(xk9));
b10 = i*(xk10-conj(xk10));



% Tracando grafico de x(t) e aproximacoes
f0 = xk0*exp(i*0*w0.*t);
f1 = f0 + xk1*exp(i*1*w0.*t) + conj(xk1)*exp(-i*1*w0.*t);
f2 = f1 + xk2*exp(i*2*w0.*t) + conj(xk2)*exp(-i*2*w0.*t);
f3 = f2 + xk3*exp(i*3*w0.*t) + conj(xk3)*exp(-i*3*w0.*t);
f4 = f3 + xk4*exp(i*4*w0.*t) + conj(xk4)*exp(-i*4*w0.*t);
f5 = f4 + xk5*exp(i*5*w0.*t) + conj(xk5)*exp(-i*5*w0.*t);
f6 = f5 + xk6*exp(i*6*w0.*t) + conj(xk6)*exp(-i*6*w0.*t);
f7 = f6 + xk7*exp(i*7*w0.*t) + conj(xk7)*exp(-i*7*w0.*t);
f8 = f7 + xk8*exp(i*8*w0.*t) + conj(xk8)*exp(-i*8*w0.*t);
f9 = f8 + xk9*exp(i*9*w0.*t) + conj(xk9)*exp(-i*9*w0.*t);
f10 = f9 + xk10*exp(i*10*w0.*t) + conj(xk10)*exp(-i*10*w0.*t);
plot(t, x, "linewidth", 3), hold on
plot(t, f0, "linewidth", 3), hold on
plot(t, f1, "linewidth", 3), hold on
plot(t, f2, "linewidth", 3), hold on
plot(t, f3, "linewidth", 3), hold on
plot(t, f4, "linewidth", 3), hold on
plot(t, f5, "linewidth", 3), hold on
plot(t, f6, "linewidth", 3), hold on
plot(t, f7, "linewidth", 3), hold on
plot(t, f8, "linewidth", 3), hold on
plot(t, f9, "linewidth", 3), hold on
plot(t, f10, "linewidth", 3)
title("Questao 4 - g")
xlabel("t")
ylabel("x(t)")



