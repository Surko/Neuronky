function c = perc_recall( perceptron, inputVector )
%perc_update - Funkcia vypocita a vrati vystup perceptronu pre vstupny
%stlpcovy vektor inputVector. Vektor je extended => v poslednej bunke
%obsahuje cislo 1

if size(inputVector,1)~=size(perceptron,2)
   error(' Perceptron a vstupny vektor maju rozdielne velkosti '); 
end

if perceptron * inputVector > 0
    c = 1;
else
    c = 0;
end

end

