function [upred,vpred,wpred] = NewtonNSE(u,v,w)
  % masukkan tebakan awal ke fungsi F(u,v,w) dan J(u,v,w)
  f_val = Ffunc(u,v,w);
  j_val = Jfunc(u,v,w);
  
  % selesaikan spl J(u,v,w)d = -F(u,v,w)
  
  % iterasi x1 = x0 + d
  
  % cek konvergensi
  
endfunction