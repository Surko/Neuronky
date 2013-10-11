function [ X ] = sigmscale( inputVector, par )

X = 1./(1+exp(-inputVector*par));

end

