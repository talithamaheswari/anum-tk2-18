function f = Ffunc(u,v,w)
  f(1) = 2*u**2 - 4*u + v**2 + 3*v*w**2 +6*w - 2;
  f(2) = v*u**2 + v**2 - 2*v + 2*w**2 - 3;
  f(3) = 3*u**2 - 12*u + u*v**2 + 3*w**2 + 2;
  f=f';
endfunction