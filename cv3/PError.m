function e = PError( Par, inputVector, estValue  )
%PError - Funkcia ktora navrati error neuronovej siete pre vstupne hodnoty
%inputVector a ocakavane hodnoty estValue

e = perc_error(Par{1}, inputVector, estValue);

end

