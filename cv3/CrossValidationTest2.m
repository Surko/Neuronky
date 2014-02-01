% Skript, ktory metodou 6-nasobnej krizovej validacia porovna algoritmy
% Sprt a perceptronovy algoritmus s maximalne 50 iteraciami.

%najpr resetujeme generator nahodnych cisel, aby sme
%pri kazdom spusteni dostali totozne trenovacie data
stream = RandStream.getGlobalStream; 
reset(stream);
%vygenerujeme trenovacie vzory
In = randi(20,4,300);

c = In(1,: )-3*In(2,: )+2*In(3,: )-In(4,: )>= 0;
k = 6;
Par1 ={};
Par2 = {[1 1 1 1 -1], 1, 50};
crossVal('Sprt','SprtRecall',Par1,'PLearn','PRecall',Par2,In,c,k)