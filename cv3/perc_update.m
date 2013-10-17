function M = perc_update( perceptron, inputVector, expValue, learnPar )
%perc_update - Funkcia vykona jeden krok ucenia perceptronu podla vstupneho
%vektoru inputVector, ktory porovna s pozadovanym vystupom expValue. Podla
%learnPar aktualizujeme vahy. Vektor je extended => v poslednych bunkach
%stlpcov matice/vektoru obsahuje jednotky.

if size(perceptron,2)~=size(inputVector,1)
   error(' Parametru perceptron a inputVector nepasuju vzajomne velkosti ');
end

M = perceptron;

estValue = perc_recall(perceptron,inputVector);
for i=(1:1:size(inputVector,2))   
   if estValue(i) ~= expValue(i)
       if estValue(i) == 0
          M=M+learnPar*inputVector(:,i)';
       else
          M=M-learnPar*inputVector(:,i)';
       end   
   end
end

end

