function visualize_mirshas_bird_func
  x=linspace(-10,0,100);
  y=linspace(-10,0,100);
  [xx,yy]=meshgrid(x,y);
  
  meshc(xx,yy,sin(yy)*e.^((1-cos(xx)).^2)+cos(xx)*e.^((1-sin(yy)).^2)+(xx-yy).^2)
endfunction