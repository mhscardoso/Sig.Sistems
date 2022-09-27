%% Encontrando o Xk correto

dt = 0.001;
t = -2:dt:2-dt;
x = (1 - exp(abs(t)));

Xk = zeros(1, 7);
for k = -3:1:3;
  Xk(k + 4) = ((2 - 2*exp(2)*cos(k * pi))/(4 + (k*pi)^2)) + sinc(k);
end

disp(Xk);

% Magnitude
M = zeros(1, 7);
for k = 1:1:7;
  M(k) = abs(Xk(k));
end

disp(M);

% Potencia
P = zeros(1, 4);
for k = 1:1:4;
  P(k) = M(k + 3)^2;
end
for k = 2:1:4;
  P(k) = P(k) * 2;
end

disp(P);

disp("Potencia acumulada:"), disp(sum(P));

% Potencia total
P_total = (7 - 4*exp(2) + exp(4))/4;

% Potencias relativas
P_rel = P/P_total



