function [ X ] = sigmscale_inv( inputVector, par ) 
% SIGMSCALE_INV prevedie inverznu funkciu sigmoidy podla parametru par.
%
% Tymto revedieme vektor normalizovanych cisel zadany parametrom inputVector
% spat na nenormalizovany tvar.
%       signscale_inv(m,n) vrati nenormalizovany vektor so stupnom strmosti par
%       signscale_inv(m) vrati nenormalizovany vektor so stupnom strmosti 1
if nargin < 2 || isempty(par)
   par = 1; 
end

X = log(1./inputVector - 1) / -par;

end

