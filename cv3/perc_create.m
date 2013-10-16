function perceptron = perc_create( n, min, max )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if nargin < 2
    min = 0;
    max = 1;
end

perceptron = [randi([min,max],1,n),randi([-max,-min])];

end

