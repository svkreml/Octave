function P=CN(X)
numOfRows = size(X, 1); % число строк
numOfCols = size(X, 2); % число столбцов
P=[];
for i=1:numOfCols
P=[P, sum(X(1:numOfRows, i))/numOfRows];
end
end
%это считает центройды столбцов