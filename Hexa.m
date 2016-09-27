 function Hexa(pos)
  if ~isnumeric(pos)
 error('Input must be a numeric')
 end
  Z=exp(1i*2*pi*(1:4)/6) +pos;
  plot(Z,'r','LineWidth', 3)
 end