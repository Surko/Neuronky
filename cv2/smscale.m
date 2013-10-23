function out = smscale( input, mn, mx )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

maxElem = max(input);
minElem = min(input);
q=(mx - mn)/(maxElem - minElem);

out = mn+(input - minElem).* q ;


end

