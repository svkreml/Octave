clear
[A, B, C, D, S] = textread('iris.data.txt', ['%f %f %f %f %s'], 150);
X=[A,B,C,D];
[P,inf,Q,L]=GK(X,1,2);
Y=MN(P);
s= 25;
P1=P(1:s,1:2);
P2=P(51:50+s,1:2);
P3=P(101:100+s,1:2);
hold off;
plot(P1(:,1),P1(:,2),'xg');
hold on;
plot(P2(:,1),P2(:,2),'xb');
hold on;
plot(P3(:,1),P3(:,2),'xr');
hold on;
[G1,_]=jarvis(P1);
G1_=[G1;G1(1,:)];
plot(G1_(:,1),G1_(:,2),'g');
hold on;
[G2,_]=jarvis(P2);
G2_=[G2;G2(1,:)];
plot(G2_(:,1),G2_(:,2),'b');
hold on;
[G3,_]=jarvis(P3);
G3_=[G3;G3(1,:)];
plot(G3_(:,1),G3_(:,2),'r');
hold on;

P0=[P(26:50,1:2);P(76:100,1:2);P(126:150,1:2)];

for i=1:size(P0,1)
  if(LOC(G1,P0(i,1:2)))
    plot(P0(i,1),P0(i,2),'og');
    hold on
  elseif(LOC(G2,P0(i,1:2)))
    plot(P0(i,1),P0(i,2),'ob');
    hold on;  
  elseif(LOC(G3,P0(i,1:2)))
    plot(P0(i,1),P0(i,2),'or');
    hold on; 
  else 
    plot(P0(i,1),P0(i,2),'*k');
    hold on; 
  end
end