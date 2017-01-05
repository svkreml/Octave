function f=nextPoint(p1 , p2 , p)
  z=(p(1)-p1(1))/(p2(1)-p1(1))-(p(2)-p1(2))/(p2(2)-p1(2));
  if(z>=0)
    f=1;
  else f=-1;
  end