f0=132; soma=0;
dt=1/2000;
t=0:dt:5;
var=2*pi*f0*t
soma = 0;
for i=0:1:5;
  a=2*i+1;
  xq=sin(a*var)/a;
  soma=soma+xq;
end
sound(soma);