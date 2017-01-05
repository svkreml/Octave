function K=MN(X)
  c=CN(X);
  r=0;
  n=0;
  for i=1:size(X, 1)
    r1=PR(c, X(i,:));
    if r1>r; 
      r=r1;
      n=i;
    end
  end
K=X(n,:); 
end

