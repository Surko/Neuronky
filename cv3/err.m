function e = err( funcLearn, funcRecall, Par, Tr, expTr, Ts, expTs )
%err - Funkcia ktora vykona ucenie neuronovej siete podla nejakych
%trenovacich dat. Po nauceni zacinam testovat s testovacimi datami. Po
%otestovani spocitam chybu testovania
%   funcLearn - meno funkcie ktorou sa ucime
%   funcRecall - meno funkcie ktorou vyhodnocujem
%   Par - Parameter s neuronovou sietou
%   Tr - Trenovacia data
%   expTr - Ocakavane vystupy pre trenovacie data
%   Ts - Testovacie data
%   expTs - Ocakavane vystupy pre testovacie data

disp(' Ucim sa ')
Par = feval(funcLearn, Tr, expTr, Par); 
disp(' Doucil som sa => zacinam testovat ');
estTs = feval( funcRecall, Par, Ts );
fprintf(' Dokoncene testovanie s error %d\n',sum(xor(expTs,estTs)));
e = sum(xor(estTs,expTs));

end

