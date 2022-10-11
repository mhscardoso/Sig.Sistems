%% Programa para o segundo trabalho de Sinais e Sistemas
%% 2022.2

% dados basicos
df = 0.001;
f = -1:df:1-df;

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

% Plotando o espectro
plot(f, Q_xf, "r", "linewidth", 3)
grid on;
title("Espectro de Energia no dominio da frequencia", "fontsize", 14)
xlabel("f", "fontsize", 14)
ylabel("|X(f)|^2", "fontsize", 14)
