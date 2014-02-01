function c = perc_recall( perceptron, inputVector )
%perc_update - Funkcia vypocita a vrati vystup perceptronu pre vstupny
%stlpcovy vektor inputVector. Vektor je extended => v poslednej bunke
%obsahuje cislo 1
%   perceptron - Vstupny perceptron, podla ktoreho vyhodnocujeme vystup
%   inputVector - Vstupny vektor, na ktorom vyhodnocujeme vystup

if size(inputVector,1)~=size(perceptron,2)
   error(' Perceptron a vstupny vektor maju rozdielne velkosti '); 
end

c = perceptron * inputVector >= 0;

end

