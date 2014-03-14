function [e] = crossVal( funcLearn1, funcRecall1, Par1, funcLearn2, funcRecall2, Par2, designs, expValue, k )
%crossVal - Funkcia vykona krizovu validaciu => porovna chyby dvoch
%algoritmov ucenia.
%   funcLearn1 - Meno prvej funkcie ktorou budeme ucit neuronovu siet
%   funcRecall - Meno vyhodnocovacej funkcie na zistenie vystupu    
%   Par1 - Parameter prvej neuronovej siete, ktoru porovnavame
%   funcLearn2 - Meno druhej funkcie ktorou budeme ucit neuronovu siet
%   funcRecal2 - Meno vyhodnocovacej funkcie na zistenie vystupu    
%   Par2 - Parameter druhej neuronovej siete, ktoru porovnavame
%   designs - vzory
%   expValue - ocakavane vystupy
%   k - pocet validacii

% Prepripravenie vektoru pre interval
e = zeros(1,2);
% Prepripravenie vektoru pre rozdiely chyb
delta = zeros(1,k);
% Dlzka vstupov
des_length = size(designs, 2);
% Dlzka jednej prehriadku pri k-nasobnej validacii
des_quocient = des_length / k;

for i=(0:1:k-1)    
    pos = i*des_quocient + 1;
    pos1 = pos + des_quocient - 1;    
    fprintf('----------------------\nValidujem %i interval [%i,%i]\n',i,pos,pos1);
    % Ziskanie trenovacich dat
    Tr = designs(:,pos:pos1);
    TrOut = expValue(:,pos:pos1);
    
    % Ziskanie zostatku intervalu metodou setdiff.
    diff = setdiff(1:size(designs,2),(pos:pos1));
    
    % Ziskanie testovacich dat
    Ts = designs(:,diff);
    TsOut = expValue(:,diff);
    
    % Error hodnota pre prvu neuronovu siet
    e1 = err(funcLearn1, funcRecall1, Par1, Tr, TrOut, Ts, TsOut);
    % Error hodnota pre druhu neuronovu siet
    e2 = err(funcLearn2, funcRecall2, Par2, Tr, TrOut, Ts, TsOut);
    
    fprintf(' Error funkcie algoritmov su %d a %d \n',[e1,e2]);
    
    % Ziskanie rozdielu error hodnoty
    delta(1,i+1) = e1 - e2;
end
% Priemer rozdielu chyb
meanDelta = sum(delta) / k;
% Deviaca priemeru chyb
devDelta = sqrt(sum((delta - meanDelta).^2) / (k * (k-1)));
fprintf('---------------------------\n stredna hodnota je %f \n',[meanDelta]);
fprintf('---------------------------\n deviacia je %f \n',[devDelta]);

% Dopocitanie zaciatku intervalu
e(1)=meanDelta - tinv(0.975,k-1) * devDelta;
% Dopocitanie konca intervalu
e(2)=meanDelta + tinv(0.975,k-1) * devDelta;
end

