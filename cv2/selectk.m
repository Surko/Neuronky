function [ X ] = selectk( rm, count )
%selectk - Funkcia vyberie count stlpcov z matice rm

if size(rm, 2) < count || count < 1
   error(' Hodnota count je chybna '); 
end

indexes = randperm(size(rm,2));
X = rm(:,indexes(1:count));

end

