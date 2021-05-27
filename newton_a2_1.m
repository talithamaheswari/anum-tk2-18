function [x,n] = newton_a2_1(x0,tol)
  f = @(x) x^2 - cos(pi*x);
  fdif = @(x) 2*x + pi*sin(pi * x);
  n = 0;
  f0 = f(x0);
  while abs(f0) > tol
    x0 = x0 - f(x0)/fdif(x0);
    f0 = f(x0);
    n = n+1;
  endwhile
  x = x0;
endfunction
