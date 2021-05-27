function f = nabla_f(x, y)
  f(1) = 2*x - y - y*e**(x*y);
  f(2) = 2*y - x - x*e**(x*y);
  f=f';
endfunction