function [ X ] = sdscale( inputVector )

N = size(inputVector, 2);

if N<=0
   error('Dlzka vektoru je mensia alebo rovna 0')
end

mean = sum(inputVector) / N;

deviation = sqrt(sum((inputVector - mean).^2) / (N-1));

X = (inputVector - mean) ./deviation;

end

