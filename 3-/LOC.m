function ret=LOC(P,A)
  n=size(P,1);
  if ROTATE(P(1,:),P(2,:),A)<0 || ROTATE(P(1,:),P(n,:),A)>0
    ret=false;
    return
    end
  p=1;
  r = n;
  while (r-p>1)
  q = fix((p+r)/2);
  if (ROTATE(P(1,:),P(q,:),A)<0)
    r = q;
  else 
    p = q;
    end
  ret= ~INTERS(P(1,:),A,P(p,:),P(r,:));
  end
 end