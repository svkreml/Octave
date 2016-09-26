 function Arrow(rot,scale)
 if ~isnumeric(rot)
 error('Input must be a numeric')
 end
 rot=rot/180*pi;
 k=22.5/180*pi;
 Z0=0;
 Z1 = scale*sqrt(2)*exp(1i*(rot));
 Z3 = scale*sqrt(5)/2*exp(1i*(rot+k));
 Z4 = scale*sqrt(5)/2*exp(1i*(rot-k));
 
 plot([Z0,Z1,Z4,Z1,Z3],'LineWidth', 2)
 end