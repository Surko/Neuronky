function [ X ] = randn2d( matrix, graph )
if nargin < 2
   graph = 0; 
end

if size(matrix,2) ~= 5
   error(' Matica musi mat pocet stlpcov rovny 5 '); 
end

retRows = 0;

for i=(1:1:size(matrix,1))
    retRows=retRows + matrix(i,1);    
end

X = zeros(retRows, 2);

cur = 1;
% Vygenerovanie vektorov do matice
for i=(1:1:size(matrix,1))
    X(cur:cur+matrix(i,1)-1,1)=sqrt(matrix(i, 4)) * randn(1,matrix(i,1)) + matrix(i,2);
    X(cur:cur+matrix(i,1)-1,2)=sqrt(matrix(i, 5)) * randn(1,matrix(i,1)) + matrix(i,3);
    cur = cur + matrix(i,1);
end

X = X(randperm(retRows),:);

if graph == 1    
   plot(X(:,1),X(:,2),'+') 
end

end

