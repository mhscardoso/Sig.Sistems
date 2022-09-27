A=1;f0=132;w0=2*pi*f0;cossenos=0;
dt=1/2000; t=0:dt:5;
for i=1:6,
    n=2*i;
    soma=(2*A/(pi*(power(n,2)-1))).*cos(n*w0*t);
    cossenos = soma + cossenos;
end;
xs = (A/2)*sin(w0*t) - cossenos;
sound(xs);