% Programa da primeira questao do trabalho de sinais e sistemas
% 2022.2

% Intervalos
dt=0.001;

% Dados basicos
t1=-5:dt:-3-dt; x1=0*t1-3;
t2=-3:dt:-1-dt; x2=3*t2+6;
t3=-1:dt:1-dt; x3=-3*t3.^3;
t4=1:dt:3-dt; x4=3*t4-6;
t5=3:dt:5-dt; x5=-t5.^2+5*t5-3;

% Concatenando e plotando
t=[t1 t2 t3 t4 t5]; x=[x1 x2 x3 x4 x5];
plot(t, x, "r", "linewidth", 3);

title("Grafico de x(t) por t - Questao 1", "fontsize", 20);
xlabel("t", "fontsize", 18);
ylabel("x(t)", "fontsize", 18);
