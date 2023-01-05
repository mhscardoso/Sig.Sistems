clear all
t = 0:0.001:8/(2/3);
y5=e.^(-2/3*t).*(-3/4*cos(4*sqrt(2)/3*t)-15*sqrt(2)/16*sin(4*sqrt(2)/3*t))+3/4;
function res = x(k,j)
  if(k > 0)
    I = [1 0; 0 1];
    A = [0 1; -4 -4/3];
    B = [-1; 13/3];
    res = (I+j*A)*(x(k-1,j)) + B*j;
  else
    res = [0 ; 0];
  endif
endfunction

function res = y(k, j)
  for l = 1:legth(k)
    v(l) = [1 0]*x(k(l), j);
  endfor
  res = v;
endfunction

T = (1/(2/3));
plot(t, y5), hold on

for j=0:3
  k1 = 0:1:(8/(2/3))/T;
  y1 = y(k1,T);
  plot(k1*T, y1, "*-"), hold on
  T = T/2;
endfor
