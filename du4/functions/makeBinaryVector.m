function binary = makeBinaryVector( vector )
% Vytvorenie Binarneho vektoru z vektoru zadaneho parametrom. Podla cisla vo vektore
% urcime na ktorom mieste v binarnom vektoru bude 1.
binary = zeros(10,size(vector,2));

for i=(1:size(vector,2))
    binary(vector(i)+1,i)=1;
end    


end

