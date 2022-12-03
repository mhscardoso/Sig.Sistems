%% Testes
A = [0 1 0 ; 0 0 1 ; -4 -2 0];
B = [0 ; 0 ; 1];
C = [1 0 0];

pkg load control

%% Sistema de espaço de estados
sys = ss(A, B, C);

%% Funcao de transferencia
SYS = tf(sys);

%% Resposta ao Degrau
[Y, T, X] = step(SYS);

%% Plotando Y
%plot(T, Y);
%title("y X t - Resposta ao Degrau");
%xlabel("t");
%ylabel("y");


%% Plotando X
plot(T, X);
title("x X t - Resposta ao Degrau");
xlabel("t");
ylabel("x");
