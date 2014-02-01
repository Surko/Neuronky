% Skript ktory vykona 5-krizovu validaciu a porovna ucenie perceptronoveho
% algoritmu ucenia s maximalne 10 iteraciami a toho isteho algoritmu s
% maximalne 100 iteraciami. Funkcia crossVal navrati interval spolahlivosti
% s pravdepodobnostou 95%
In = randn(2,200);
c = In(1,:)-3*In(2,:) >= 0.5;
k = 5;
Par1 = {[1 1 -1], 1, 10};
Par2 = {[1 1 -1], 1, 100};
crossVal('PLearn','PRecall',Par1,'PLearn','PRecall',Par2,In,c,5)