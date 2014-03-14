function LPar = PLearn( inputVector, expValue, Par )
%PLearn - Funkcia ma za ulohu naucit perceptron ulozeny v parametri Par.
%Uci sa podla uciacich dat v parametri inputVector pre ktore su ocakavane
%hodnoty ulozene v parametri expValue. Nakonci navrati perceptron, ktory
%zaobalime v bunkovom poli.
p = perc_learn(Par{1},inputVector,expValue,Par{2},Par{3});
LPar = {p};
end

