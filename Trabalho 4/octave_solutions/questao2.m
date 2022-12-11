%% Testes
A = [0 1 0 0 ; -8 0 4 0 ; 0 0 0 1 ; 4 0 -8 0 ];
B = [0 ; 0 ; 0 ; 0];
C = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];

pkg load control

%% Sistema de espaço de estados
sp = ss(A, B, C, "outname", {"y1", "dy1/dt", "y2", "dy2/dt"});

x0 = [4 ; 0 ; 0 ; 0];

[Y, T, X] = initial(sp, x0);

plot(T, X);

