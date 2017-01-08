function r=INTERS(A,B,C,D)
  r=ROTATE(A,B,C)*ROTATE(A,B,D)<=0 && ROTATE(C,D,A)*ROTATE(C,D,B)<0;
  end