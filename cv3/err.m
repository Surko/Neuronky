function e = err( funcLearn, funcRecall, Par, Tr, expTr, Ts, expTs )
%err - 

Par{1} = feval(funcLearn, Tr, expTr, Par); 
disp(Par{1})
estTs = feval( funcRecall, Par, Ts );

e = sum(xor(estTs,expTs));

end

