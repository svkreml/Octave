function [G,H]=jarvis(A)
  n = size(A,1);
  P = 1:1:n;
  for i=2:n
    if( A(P(i),1) < A(P(1),1) )
      P([i 1])=P([1 i]);
      end
    end  
  H=P(1);
  G=A(P(1),:);
  P(1)=[];
  P=[P H(1)];
  while(true)
    right = 1;
    for i = 1:size(P,2)
      if (ROTATE(A(H(end),:),A(P(right),:), A(P(i),:))<0)
        right = i;
        end
      end
    if P(right)==H(1)
      break
    else
      H=[H P(right)];
      G=[G;A(P(right),:)];
      P(right)=[];
      end
    end
  end