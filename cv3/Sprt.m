function LPar = Sprt(Tr,DTr,Par)
%uciaci algoritmus, ktory si iba zapamata trenovacie vzory
%   LPar = Sprt(Tr,Dtr,Par)
%
%vstupy: 
%   Tr      je matica s trenovacimi vzormi, kazdy stlpec je jeden trenovaci
%           vzor
%   DTr     je riadkovy vektor pozadovanych vystupov
%   Par     sa nepouziva, je tu iba kvoli kompatibilite
%vystup
%   LPar    je bunkove pole obsahujuce trenovacie vzory a k nim pozadovane
%           vystupy
LPar = {Tr,DTr};
end

