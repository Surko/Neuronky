function maxVector = makeMaximumVector( vector )

maxVector = zeros(size(vector,1),size(vector,2));

for i=(1:size(vector,2))
   row = find(vector(:,i)==max(vector(:,i)));
   maxVector(row,i) = 1;    
end


end

