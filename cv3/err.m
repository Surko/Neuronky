function e = err( funcLearn, funcRecall, Par, Tr, expTr, Ts, expTs )
%err - 

disp(' Ucim sa ')
Par{1} = feval(funcLearn, Tr, expTr, Par); 
disp(' Doucil som sa => zacinam testovat ');
estTs = feval( funcRecall, Par, Ts );
fprintf(' Dokoncene testovanie s error %d\n',sum(xor(expTs,estTs)));
e = sum(xor(estTs,expTs));

end

