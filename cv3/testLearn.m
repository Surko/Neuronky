p=[1 3 -1];
xpos=[1 2 3; 1 3 1];
xneg=[3 4 4; 4 2 4];
x=[xpos xneg];
perm=[1 4 6 2 3 5];
x=x(:,perm);
c=[ones(1, 3) zeros(1, 3)];
c=c(perm);
xr=0:5;
plot(xpos(1,:),xpos(2,:),'or',xneg(1,:),xneg(2,:),'+b',xr,-(p(1)*xr+p(3))/p(2),'g')
pn=perc_learn(p,x,c,0.5,100);
plot(xpos(1,:),xpos(2,:),'or',xneg(1,:),xneg(2,:),'+b',xr,-(pn(1)*xr+pn(3))/pn(2),'g')