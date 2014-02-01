function M = perc_update( perceptron, inputVector, expValue, learnPar )
%perc_update - Funkcia vykona jeden krok ucenia perceptronu podla vstupneho
%vektoru inputVector, ktory porovna s pozadovanym vystupom expValue. Podla
%learnPar aktualizujeme vahy. Vektor je extended => v poslednych bunkach
%stlpcov matice/vektoru obsahuje jednotky.
%   perceptron - Vstupny perceptron, ktory aktualizujeme
%   inputVector - Vstupny vektor, podla ktoreho aktualizujeme perceptron
%   expValue - Vektor ocakavanych hodnot
%   learnPar - Uciaci parameter pri uceni perceptronu

if size(perceptron,2)~=size(inputVector,1)
   error(' Parametru perceptron a inputVector nepasuju vzajomne velkosti ');
end

M = perceptron;
for i=(1:1:size(inputVector,2)) 
   estValue = perc_recall(M,inputVector(:,i));
   if estValue(1) ~= expValue(i)
       if estValue(1) == 0
          M=M+learnPar*inputVector(:,i)';
       else
          M=M-learnPar*inputVector(:,i)';
       end   
   end
end

end

