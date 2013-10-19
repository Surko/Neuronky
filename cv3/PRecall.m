function out = PRecall( Par, inputVector )
%PRecall - 

out = perc_recall(Par{1},[inputVector;ones(1,size(inputVector,2))]);

end

