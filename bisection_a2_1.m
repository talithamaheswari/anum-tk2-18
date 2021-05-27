function [x,n] = bisection_a2_1(a,b,tol)
  n = 0;
  fa = a^2 - cos(pi*a);
  fb = b^2 - cos(pi*b);
  while b-a>tol
    m = (a+b)/2;
    fm = m^2 - cos(pi*m);
    if fm*fa<0
      b = m;
      fb = fm;
    else
      a = m;
      fa = fm;
    end
    n = n+1;
  endwhile
  x = m;
endfunction
