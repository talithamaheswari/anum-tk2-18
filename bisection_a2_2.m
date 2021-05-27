function [x,n] = bisection_a2_2(a,b,tol)
  n = 0;
  fa = a + 7 - a^a;
  fb = b + 7 - b^b;
  while b-a>tol
    m = (a+b)/2;
    fm = m + 7 - m^m;
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
