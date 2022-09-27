%% Programa da terceira questao do trabalho de Sinais e Sistemas
%% 2022.2

X0 = (3 - exp(2))/2;
X = zeros(1, 7);

for k = -3:1:3;
  X(k + 4) = -((2*exp(2)*cos(k*pi) - 2)/(4 + (k^2)*(pi^2))) + i*(cos(k*pi)/(k*pi));
end
X(4) = X0;
disp(X)

% Magnitudes
M = zeros(1, 7);

for k = 1:1:7;
  M(k) = abs(X(k));
end

disp(M)

% Potencias
P_a = zeros(1, 4);

for k = 1:1:4;
  P_a(k) = M(k + 3)^2;
end

for k = 2:1:4;
  P_a(k) = P_a(k)*2;
end

disp(P_a)

P_r = sum(P_a)
