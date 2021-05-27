function h = hessian_g(w,x,y,z)
  h = zeros(4,4);
  h(1,1) = -2; h(1,2) = 1;
  h(2,1) = 1; h(2,2) = -2; h(2,3) = 1;
  h(3,2) = 1; h(3,3) = -2; h(3,4) = 1;
  h(4,3) = 1; h(4,4) = -2;
endfunction