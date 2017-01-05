clear;
F=randn(100,4);
[A, B, C, D, S] = textread('iris.data.txt', ['%f %f %f %f %s'], 150);
X=[A,B,C,D];

#staticFunc(F,X);


#figure(1);
#axis([0 150 -20 20]);
hold off;

          min1=100000;
          max1=0;
          
          Fbest=[];
      for i=1:size(F,1)

          F1=F(i,1:4);

          F2=[];
              for j=1:size(A,1)
                  F2=[F2;F(i,1)*A(j)+F(i,2)*B(j)+F(i,3)*C(j)+F(i,4)*D(j)];
                  end

          k1=abs(min(F2))+abs(max(F2));
          F2=F2.*(10/k1);
          F2=F2.+10;



          #D1=cov(F2(1:50));
          #D2=cov(F2(51:100));
          #D3=cov(F2(101:150));
          #M0=mean(F2(1:150));
          M1=mean(F2(1:50));
          M2=mean(F2(51:100));
          M3=mean(F2(101:150));
          Msum=cov([M1,M2,M3]);
          #Dsum=D1+D2+D3;
              if (Msum > max1)
                max1=Msum;
                Fbest=F2;
                end
          # f=[];
          end
          
display("--------")
minF1=min(Fbest(1:50));
minF2=min(Fbest(51:100));
minF3=min(Fbest(101:150));
maxF1=max(Fbest(1:50));
maxF2=max(Fbest(51:100));
maxF3=max(Fbest(101:150));
if(minF1<minF2)
  group12=mean([maxF1,minF2])
else
  group12=mean([minF1,maxF2])
end
if(minF2<minF3)
  group23=mean([maxF2,minF3])
else
  group23=mean([minF2,maxF3])
end
G12=ones(150);
G12=G12.*group12;
G23=ones(150);
G23=G23.*group23;
plot(G12);
hold on;
plot(G23);
hold on;
#figure(2);
plot(Fbest) 
hold off;
% [ -0.26731,  0.77048,  1.03854, -0.47914 ]