clear
[A, B, C, D, S] = textread('iris.data.txt', ['%f %f %f %f %s'], 150);
X=[A,B,C,D];
[P,inf,Q,L]=GK(X,1,2);
Y=MN(P);
clc
plot(P(1:50,1),P(1:50,2),'or')
hold on;
plot(P(51:100,1),P(51:100,2),'xg')
hold on;
plot(P(101:150,1),P(101:150,2),'pb')
#Y
inf