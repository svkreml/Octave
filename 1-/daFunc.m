function [F_,F__,A1]=daFunc(Base)
  X1=[];
  X2=[];
  X3=[];
  for X = transpose(Base)
    X = transpose(X);
    if(X(7)==1)
      X1=[X1; X(1:6)];
    elseif(X(7)==2)
      X2=[X2; X(1:6)];
    elseif(X(7)==3)
      X3=[X3; X(1:6)];
    end
  end

  %������� ��������� ���������
  X1_=transpose(mean(X1));
  X2_=transpose(mean(X2));
  X3_=transpose(mean(X3));

  %�������������� �������
  K=(transpose(X1)-X1_);
  S1=(1/size(X1,1))*(K*transpose(K));
  K=(transpose(X2)-X2_);
  S2=(1/size(X2,1))*(K*transpose(K));
  K=(transpose(X3)-X3_);
  S3=(1/size(X3,1))*(K*transpose(K));


  %�����������
  S12=(1/(size(X1,1)+size(X2,1)-2))*(size(X1,1)*S1+(size(X2,1)*S2));
  S12_=inv(S12);

  %��������������� ���������
  A1= S12_*(X1_-X2_);

  %�������� ��������������� �������
  F=A1*X;

  F_=mean(F);
  F__=mean(transpose(F_));
 end