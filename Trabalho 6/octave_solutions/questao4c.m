%Questao 4.c)
% Intervalo

% Dados básicos

fa = 1100;
amostragem = 200;

d_t = 1 / fa;
d_f = 1 / amostragem;

t = -amostragem / 2:d_t:amostragem / 2;
f = -fa / 2: d_f : fa / 2;

f1=261.1; p4 = exp(-0.5*(t-4).^2); x1=cos(2*pi*f1*t);
f2=293.7; p12=exp(-0.5*(t-12).^2); x2=cos(2*pi*f2*t);
f3=311.1; p20=exp(-0.5*(t-20).^2); x3=cos(2*pi*f3*t);
f4=396.6; p28=exp(-0.5*(t-28).^2); x4=cos(2*pi*f4*t);
f5=349.2; p36=exp(-0.5*(t-36).^2); x5=cos(2*pi*f5*t);
f6=392.0; p44=exp(-0.5*(t-44).^2); x6=cos(2*pi*f6*t);
f7=440.0; p52=exp(-0.5*(t-52).^2); x7=cos(2*pi*f7*t);
f8=466.2; p60=exp(-0.5*(t-60).^2); x8=cos(2*pi*f8*t);
f9=522.1; p68=exp(-0.5*(t-68).^2); x9=cos(2*pi*f9*t);
p76=exp(-0.5*(t-76).^2);
p84=exp(-0.5*(t-84).^2);

x = x1.*p4 + x2.*p12 + x4.*p20 + x1.*p28 + x1.*p36 + x2.*p44 + x7.*p52 + x1.*p60 + x4.*p68 + x5.*p76 + x6.*p84;

F_x = fft(x);
X_s = fftshift(F_x);

X_a = abs(X_s)/fa;

plot(f, X_a, ".", "markersize", 10);

xlabel("f", "fontsize", 15);
ylabel("X(f)", "fontsize", 15);

title("X(f) x f - Questão 4 - c");

E = sum(abs(x).^2).*dt


