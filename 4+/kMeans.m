function I=kMeans(X,k);
  Iold=zeros(1,size(X,1));
  K0=zeros(k,2);
  #1  выбираем произвольные центройды к штук
  for i=1:k
    K0(i,:)=X(i,:);
    end
  #2  делим все точки на эти к групп
  for i=1:size(X,1)
    for j=1:k
      r(j)=PR(X(i,:),K0(j,:));
      end
    [_,I(i)]=min(r);
    end
    #3-4-5 пока групппы измен€ютс€ повтор€ем перегруппировку
    while(I!=Iold)
   # I
    #Iold
    Iold=I;
      Kx=zeros(k,1);
      Ky=zeros(k,1);
      Cx=zeros(k,1);
      Cy=zeros(k,1);
      Cc=zeros(k,1);
      j++;
      #3
      for i=1:size(X,1)
        X(i,1);
        X(i,2);
        Cx(I(i))=Cx(I(i))+ X(i,1);
        Cy(I(i))=Cy(I(i))+ X(i,2);
        Cc(I(i))=Cc(I(i))+1;
      end
      for i=1:k
        Kx(i)=Cx(i)/Cc(i);
        Ky(i)=Cy(i)/Cc(i);
        end
        #4
      for i=1:size(X,1)
        for j=1:k
          r(j)=PR(X(i,:),[Kx(j) Ky(j)]);
          end
        [_,I(i)]=min(r);
      end
      
    
    end
    

     % C=mean(C);
    
  end