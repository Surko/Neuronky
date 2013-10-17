function perceptron = perc_learn( perceptron, inputVector, expValue, lam, maxit )
%perc_learn - Funkcia urobi maximalne maxit iteracii ucenia perceptronu.
if maxit <= 0
    error(' Parameter maxit musi byt vacsi ako nula ');
end
if size(expValue,2) ~= size(inputVector,2)
    error(' Velkosti vstupneho vektoru a ocakavanych hodnot niesu rovnake ');
end
if (size(perceptron,2)-1)~=size(inputVector,1)
    error(' Velkosti perceptronu a vstupneho vektoru su rozdielne ');
end

inputVector=[inputVector;ones(1,size(inputVector,2))];
for i=(1:1:maxit)
    errorFunction = perc_err(perceptron,inputVector,expValue);
    if errorFunction > 0
        perceptron=perc_update(perceptron,inputVector,expValue,lam);
    else
        sprintf(' Zastavil som na epoche %d ', i)
        break;
    end    
end


end

