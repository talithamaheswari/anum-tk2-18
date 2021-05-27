function [x,n] = newton_a2_2(x0,tol)
  f = @(x) x + 7 - x^x;
  fdif = @(x) 1 - x^x * (ln(x) + 1);
  n = 0;
  f0 = f(x0);
  while abs(f0) > tol
    x0 = x0 - f(x0)/fdif(x0)
    f0 = f(x0);
    n = n+1
  endwhile
  x = x0;
endfunction
