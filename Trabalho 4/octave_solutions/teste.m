%% Testes
A = [0 1 0 ; 0 0 1 ; -4 -2 0];
B = [0 ; 0 ; 1];
C = [1 0 0];

pkg load control

%% Sistema de espaço de estados
sp = ss(A, B, C);

%% Funcao de transferencia
SYS = tf(sp);

%% Resposta ao Degrau
[Y_degrau, T_degrau, X_degrau] = step(sp);
%% Plotagem
%plot(T_degrau, Y_degrau, "r", "linewidth", 3), title("Y x T - Resposta ao Degrau"), xlabel("t"), ylabel("y")
%plot(T_degrau, X_degrau, "linewidth", 3), title("X x T - Resposta ao Degrau"), xlabel("t"), ylabel("x")

%% REN
%% x0 como multiplo de V:
lambda1 = eig(A)(1)
x0_1 = [1 ; lambda1 ; lambda1^2]
[Y_ren_v, T_ren_v, X_ren_v] = initial(sp, x0_1)

%% Plotagem
%plot(T_ren_v, Y_ren_v, "r", "linewidth", 3), title("Y x T - REN (x0 = \lambda V)"), xlabel("t"), ylabel("y")
%plot(T_ren_v, X_ren_v, "linewidth", 3), title("X x T - REN (x0 = \lambda V)"), xlabel("t"), ylabel("x")

%% REN
%% x0 como multiplo das colunas de W:
sigma = (eig(A)(2) + eig(A)(3)) / 2       %% Parte real
omega = (eig(A)(2) - eig(A)(3)) / (2 * i) %% Parte imaginaria
x0_2 = [1 ; sigma + omega ; (sigma^2 - omega^2) + 2 * sigma * omega]
[Y_ren_w, T_ren_w, X_ren_w] = initial(sp, x0_2)

%% Plotagem
%plot(T_ren_w, Y_ren_w, "r", "linewidth", 3), title("Y x T - REN (x0 = C.L de W)"), xlabel("t"), ylabel("y")
plot(T_ren_w, X_ren_w, "linewidth", 3), title("X x T - REN (x0 = C.L de W)"), xlabel("t"), ylabel("x")




