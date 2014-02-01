function Out = SprtRecall(LPar,In)
%vybavovacia funkcia algoritmu Sprt, ktory si iba zapamata trenovacie vzory
%   Out = SprtRecall(LPar,In)
%
%vstupy: 
%   LPar    je bunkove pole obsahujuce trenovacie vzory a k nim pozadovane
%           vystupy
%   In      je matica so vzormi, kazdy stlpec je jeden vzor
%vystup
%   Out     riadkovy vektor; ak je i-ty vzor medzi zapamatanymi, tak Out(i) 
%           bude zapamatana hodnota, inak nahodne bud 0 alebo 1  
Known = LPar{1};
KnownOut = LPar{2};
j=1;
Out = zeros(1,size(In,2));
for i = 1:size(In,2)
    j=1;
    while j<=size(Known,2)
        if In(:,i)==Known(:,j)
            break
        else
            j=j+1;
        end
    end
    if j<=size(Known,2)
        Out(i) = KnownOut(j);
    else
        Out(i) = rand(1)>0.5;
    end
end
end

