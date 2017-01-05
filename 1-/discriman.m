clc; close; clear;
load lab_3_1.txt;
load lab_3_2.txt;
A = lab_3_1(1:9, 1:6);

[m1, n1] = size(A);

x11 = sum(A(:,1))/9;
x12 = sum(A(:,2))/9;
x13 = sum(A(:,3))/9;
x14 = sum(A(:,4))/9;
x15 = sum(A(:,5))/9;
x16 = sum(A(:,6))/9;
X1 = [x11, x12, x13, x14, x15, x16]

B = lab_3_1(10:21, 1:6);
[m2, n2] = size(B);
x21 = sum(B(:,1))/12;
x22 = sum(B(:,2))/12;
x23 = sum(B(:,3))/12;
x24 = sum(B(:,4))/12;
x25 = sum(B(:,5))/12;
x26 = sum(B(:,6))/12;
X2 = [x21, x22, x23, x24, x25, x26]

C = lab_3_1(22:30, 1:6);
[m3, n3] = size(C);
x31 = sum(C(:,1))/9;
x32 = sum(C(:,2))/9;
x33 = sum(C(:,3))/9;
x34 = sum(C(:,4))/9;
x35 = sum(C(:,5))/9;
x36 = sum(C(:,6))/9;
X3 = [x31, x32, x33, x34, x35, x36]



Total_N = m1 + m2+ m3 + 60

for i = 1:9
    S1(i,:) = A(i,:) - X1;
end
for i = 1:12
    S2(i,:) = B(i,:) - X2;
end
for i = 1:9
    S3(i,:) = C(i,:) - X3;
end

S1 = S1'*S1;
S2 = S2'*S2;
S3 = S3'*S3;

display(S1);
display(S2);
display(S3);

ST1 = 1/(m1 + m2 - 2)*(m1*S1 + m2*S2);
ST2 = 1/(m2 + m3 - 2)*(m1*S2 + m2*S3);
ST3 = 1/(m1 + m3 - 2)*(m1*S1 + m2*S3);
display(ST1);
display(ST2);
display(ST3);

ST1 = inv(ST1);
ST2 = inv(ST2);
ST3 = inv(ST3);

display(ST1);
display(ST2);
display(ST3);

A1 = ST1*(X1' - X2');
A2 = ST2*(X2' - X3');
A3 = ST3*(X1' - X3');

display(A1);
display(A2);
display(A3);

Array1 = [];
Array2 = [];
Array3 = [];

for i = 1:9
    Buf = A(i,:)*A1;
    Array1 = [Array1; Buf];
end
for i = 1:12
    Buf = B(i,:)*A2;
    Array2 = [Array2; Buf];
end
for i = 1:9
    Buf = C(i,:)*A3;
    Array3 = [Array3; Buf];
end

display(Array1);
display(Array2);
display(Array3);

midF1 = sum(Array1)/length(Array1)
midF2 = sum(Array2)/length(Array2)
midF3 = sum(Array3)/length(Array3)

F1 = 1/2*(midF1 + midF2);
F2 = 1/2*(midF2 + midF3);
display(F1);
display(F2);

Test = lab_3_2(1:60, 1:6);

display(Test);

M1 = [];
M2 = [];
M3 = [];

display(A1);
display(Test(1,:));
for i = 1:length(Test)
   if(midF1 - midF2)*(Test(i,:)*A1 - midF1) > 0
       M1 = [M1; Test(i,:)];
   elseif (midF2 - midF3)*(Test(i,:)*A2 - midF2) > 0
       M2 = [M2; Test(i,:)];
   else
       M3 = [M3; Test(i,:)];
   end
end

display(M1);
display(M2);
display(M3);