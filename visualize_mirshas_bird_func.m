function visualize_mirshas_bird_func
  x=linspace(-10,0,100);
  y=linspace(-10,0,100);
  [xx,yy]=meshgrid(x,y);
  
  mask = (xx+5).^2 + (yy+5).^2 < 25;
  
  xx_mask = xx.*mask;
  yy_mask = yy.*mask;
  
  meshc(xx_mask,yy_mask,sin(yy_mask)*e.^((1-cos(xx_mask)).^2)+cos(xx_mask)*e.^((1-sin(yy_mask)).^2)+(xx_mask-yy_mask).^2)
endfunction