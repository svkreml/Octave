function Y=NP(X, A)
  numOfRows = size(X, 1); 
  Y=X;

  for j=1:size(X, 1)
    min1=100;
    min2=100;
    min3=100;
    k1=0;
    k2=0;
    k3=0;
    for i=1:size(A, 1)
      n=PR(X(j,1:2),A(i,1:2));
      if n<min1
        min3=min2;
        min2=min1;
        min1=n;
        k3=k2;
        k2=k1;
        k1=A(i,3);
      elseif n<min2
        min3=min2;
        min2=n;
        k3=k2;
        k2=A(i,3);
      elseif n<min3
        min3=n;
        k3=A(i,3);
      end
    end  
    if k1==k2&&k1==k3
      Y(j,3)=k1;
    elseif k1==k2
      Y(j,3)=k1+0.1;
    elseif k2==k3
      Y(j,3)=k2+0.2;
    elseif k1==k3
      Y(j,3)=k1+0.3;
    else 
      Y(j,3)=0.1;
    end
  end
end
