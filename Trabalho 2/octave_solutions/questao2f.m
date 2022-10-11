%% Programa para o segundo trabalho de Sinais e Sistemas
%% 2022.2

% dados basicos
df = 0.0001;
f = -2.5985:df:2.5985-df;
En_total = 7 - 4*exp(2) + exp(4)

% funcao no dominio da frequencia
p1 = 4 .* sinc(4 .* f);
p2 = (2) ./ (1 + (2*pi.*f).^2);
p3 = (2*exp(2) .* cos(4*pi.*f)) ./ (1 + (2*pi.*f).^2);
p4 = (4*exp(2)*pi.*f.*sin(4*pi.*f)) ./ (1 + (2*pi.*f).^2);
Xf = p1 + p2 - p3 - p4;

% Quadrado da funcao
Q_xf = abs(Xf.^2);

% Aproximacao da Integral
En = sum(Q_xf .* df)

% Percentual para [-2.6 2.6]
p = (En / En_total) * 100


