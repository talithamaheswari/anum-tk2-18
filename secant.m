function secant(x1,x2, TOL)
  F1 = x1 + 7 - x1^x1;
  MaxIter = 20;

  counter = 0;
  Err = 1000;

  while true
    counter=counter+1;
    F2 = x2 + 7 - x2^x2;
    x3 = x1 - (F1*(x2-x1)/(F2-F1))
    if x3!=0
      Err = abs ((x3-x1)/x3);
    else
      Err = abs (x3-x1);
    endif
    F1 = F2;
    x1 = x2;
    x2 = x3;
    if or (F1 ==0, or (Err<TOL,counter>MaxIter))
      break
    endif
  end
  counter
  Err
  x2
  x1

endfunction