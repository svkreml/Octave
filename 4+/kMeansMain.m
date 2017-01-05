clear;
[A, B, C, D, S] = textread('iris.data.txt', ['%f %f %f %f %s'], 150);
X=[A,B,C,D];
[P,inf,Q,L]=GK(X,1,2);
pkg load statistics;
r = randperm(size(P,1)); % permute row numbers



I=kMeans(P,3);

for i=1:size(P,1)
  if(mod(I(i),3)==1)
    plot(P(i,1),P(i,2),'or');
  elseif(mod(I(i),3)==2)
    plot(P(i,1),P(i,2),'xg');
  else
    plot(P(i,1),P(i,2),'pb');
    end
  hold on;
end
hold off;