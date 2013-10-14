function [ X ] = randv2n( n1, s1, r1, n2, s2, r2 )
    
    X = zeros(1,n1+n2);
    
    vec1 = sqrt(r1) * randn(1,n1) + s1;
    vec2 = sqrt(r2) * randn(1,n2) + s2;
    
    X(1,1:n1)= vec1;
    X(1,n1+1:n1+n2) = vec2;

    X = X(randperm(length(X)));
    
end

