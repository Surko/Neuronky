function [ X ] = triv_h( x, theta )
%triv_h - funkcia vrati vektor s hodnotami 0 alebo 1 podla pravidiel :
%Ak sa s zhoduje s i-tym vektorom trenovacej mnoziny (t.j. theta.M(:,i)),
%tak vráti odpoved podla trenovacieho vzoru (t.j. theta.c(i)),inak
%si nahodne zvolí odpoved’ 0 alebo 1.

if any(size(x)~=size(theta.M))
    error(' Matice nemaju rovnake velkosti ')
end

columns = size(theta.c,2);

if size(theta.c,2) < 1
    error(' Vektor pozadovanych vystupov je mensi alebo rovny nule ');
end

X = zeros(1,columns);

for i=(1:1:columns)
    if all(theta.M(:,i)==x(:,i))
        X(i)=theta.c(i);
    else
        X(i)=randi([0,1],1);
    end
end

end

