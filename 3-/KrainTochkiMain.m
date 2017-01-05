#метод крайних точек
[A, B, C, D, S] = textread('iris.data.txt', ['%f %f %f %f %s'], 150);
X=[A,B,C,D];
[P,inf,Q,L]=GK(X,1,2);
Y=MN(P);
s= 25;
P1=P(1:s,1:2);
hold off;
#plot(P1(1:s,1),P1(1:s,2),'xb')
C1=centroid(P1);
K1=further(P1, C1);
plot(P1(1:s,1),P1(1:s,2),'or')
hold on;
X=[C1;K1];
plot(X(1:2,1),X(1:2,2));

Q=[];

i=3;
  while(true)
  p1=[];
  for x = transpose(P1)
    x=transpose(x);
      if(nextPoint(C1,K1,x)>0)
        #plot(x(1,1),x(1,2),'pk')
        #hold on;
        p1=[p1; x];
      else
        #plot(x(1,1),x(1,2),'pr')
        #hold on;
        end
    end
    #p1
  #plot(p1(1:size(p1,1),1),p1(1:size(p1,1),2),'or')
  if(size(p1,1)<2)
    Q = [Q;p1];
    break
  end
  C1=centroid(p1);
  P1=p1;
  plot(K1(1,1),K1(1,2),'xb')
  hold on;

  end
