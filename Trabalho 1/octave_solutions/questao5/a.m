%% Programa da quinta questao do trabalho de Sinais e Sistemas
%% 2022.2

% dados basicos
f0=156; soma=0;
dt=1/2000;
t=0:dt:5-dt;
var=2*pi*f0.*t;

% Gerando o sinal
for i=0:1:2;
  sa=2*i+1;
  xq=sin(sa*var)/sa;
  soma=soma+xq;
end

plot(t, soma)
