function perceptron = perc_create( n, min, max )
%perc_create - Vytvara perceptron s n hodnotami. DOsadenie hodnot do
%perceptronu je z [min,max]
if nargin < 2
    min = 0;
    max = 1;
end

perceptron = [randi([min,max],1,n),randi([-max,-min])];

end

