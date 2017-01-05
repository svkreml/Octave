function M=further(X,C)
  M=0;
  m=0;
  X=transpose(X);
  C=transpose(C);
  for curr = X
   r = curr-C(2);
   if(r>m)
   M=0;
     M=curr;
     m=r;
   end
   end
   M=transpose(M);
   X=transpose(X);
end