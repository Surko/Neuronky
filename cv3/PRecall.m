function out = PRecall( Par, inputVector )
%PRecall - Funkcia ktora vyhodnoti vystup neuronovej siete. V parametri Par
%je ulozena neuronova siet (napriklad perceptron) a v parametri inputVector
%zase vstupne hodnoty, na ktorych vyhodnotujeme. Vyhodnocovanie vykoname
%funkciou perc_recall.

out = perc_recall(Par{1},[inputVector;ones(1,size(inputVector,2))]);

end

