function c = perc_recall( perceptron, inputVector )
%perc_update - Funkcia vypocita a vrati vystup perceptronu pre vstupny
%stlpcovy vektor inputVector. Vektor je extended => v poslednej bunke
%obsahuje cislo 1

if size(inputVector,1)~=size(perceptron,2)
   error(' Perceptron a vstupny vektor maju rozdielne velkosti '); 
end

c = perceptron * inputVector;

for i=(1:1:size(inputVector,2))       
    if c(i) > 0
        c(i) = 1;
    else
        c(i) = 0;
    end
end

end

