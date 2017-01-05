clear
clc
%  обучающие данные
[A,B,C,D,E,F,G] = textread('data.txt', ['%f %f %f %f %f %f %f'], 30);
%  тестовые данные
[A1,B1,C1,D1,E1,F1] = textread('ed.txt', ['%f %f %f %f %f %f'], 60);

%заполнение матриц подгрупп

Base=[A,B,C,D,E,F,G];

X0=[A1,B1,C1,D1,E1,F1];

[F_,F__,A1_] = daFunc(Base);
F_;
F__



for x= transpose(X0)
  F0_= A1_.*x;
  F0__= mean(transpose(F0_))
  end
