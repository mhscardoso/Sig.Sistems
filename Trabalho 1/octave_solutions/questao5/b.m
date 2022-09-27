%% Programa da quinta questao do trabalho de Sinais e Sistemas
## 2022.2

% dados basicos
dt=0.001;
soma=0;
f0=132; var=(2*pi*f0);
A=1; cte=8*A/(pi*pi);
t=-2:dt:2;

% Gerando o sinal
for i=0:5,
  a=2*i+1;
  xt=(cte/(a*a)).*cos(a*var*t);
  soma=soma+xt;
end;

sound(soma);
