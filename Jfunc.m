function j = Jfunc(u,v,w)
  j(1,1) = 4*u - 4;
  j(1,2) = 3*w**2 + 2*v;
  j(1,3) = 6*v + 6;
  j(2,1) = 2*u*v;
  j(2,2) = u**2 + 2*v - 2;
  j(2,3) = 4*w;
  j(3,1) = v**2 + 6*u - 12;
  j(3,2) = 2*u*v;
  j(3,3) = 6*w;
endfunction