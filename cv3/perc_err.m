function c = perc_err( perceptron, inputVector, expValue )
%perc_err - Funkcia vrati chybu perceptronu pre vstupny vektor
%inputVector, ked pozadovane vystupy su expValue
%   inputVector - vstupne data, ktore testujeme a zistujeme chybu
%   expValue - ocakavane vystupy pre vstupy
estValue = perc_recall(perceptron,inputVector);

if size(estValue,2) ~= size(expValue,2)
    error(' Vektor skutocnych hodnot ma roznu velkost od velkosti vektoru ocakavanych hodnot ');
end

c = sum(xor(estValue,expValue));

end

