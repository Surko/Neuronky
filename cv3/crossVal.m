function [e] = crossVal( funcLearn1, funcRecall1, Par1, funcLearn2, funcRecall2, Par2, designs, expValue, k )
%crossVal - Funkcia vykona krizovu validaciu => porovna chyby dvoch
%algoritmov ucenia.
%des - vzory
%expValue - ocakavane vystupy
%k - pocet validacii

e = zeros(1,2);
delta = zeros(1,k);
des_length = size(designs, 2);
des_quocient = des_length / k;

for i=(0:1:k-1)
    pos = i*des_quocient + 1;
    pos1 = pos + des_quocient - 1;    
    Tr = designs(:,pos:pos1);
    TrOut = expValue(:,pos:pos1);
    
    diff = setdiff(1:size(designs,2),(pos:pos1));
    Ts = designs(:,diff);
    TsOut = expValue(:,diff);
    
    e1 = err(funcLearn1, funcRecall1, Par1, Tr, TrOut, Ts, TsOut);
    e2 = err(funcLearn2, funcRecall2, Par2, Tr, TrOut, Ts, TsOut);
    
    delta(i+1) = e1 - e2;
end
meanDelta = sum(delta) / k;
fprintf('stredna hodnota je %s',[meanDelta]);
devDelta = sqrt(sum((delta - meanDelta).^2) / (k * (k-1)));
fprintf('deviacia je %s',[devDelta]);

e(1)=meanDelta - tinv(97.5,k-1) * devDelta;
e(1)=meanDelta + tinv(97.5,k-1) * devDelta;
end

