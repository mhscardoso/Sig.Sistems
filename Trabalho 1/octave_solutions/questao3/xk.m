%% Encontrando o Xk correto

dt = 0.001;
t = -2:dt:2-dt;
x = (1 - exp(abs(t)));

Xk = zeros(1, 7);

for k = -3:1:3;
  Xk(k + 4) = sum(x.*(cos(-k*(pi/2)*t) + i*sin(-k*(pi/2)*t))* dt)/4;
end

disp(Xk);
