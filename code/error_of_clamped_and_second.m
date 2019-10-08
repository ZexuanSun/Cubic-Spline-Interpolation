x = linspace(-5,5,100);
y  = 25 ./ (1+x.^2);
xx  = linspace(-5,5,150);
sl =  0.3698;
sr = -sl;
endcond = (200*xx([1 end]).^2)./(xx([1 end]).^2 + 1).^3 ... 
- 50./(xx([1 end]).^2 + 1).^2;
pp1 = csape(x,[sl,y,sr],'clamped');
plot(xx , 25 ./ (1+xx.^2)- fnval(pp1,xx),'ro');

hold on
pp2 = csape(x,[endcond(1) y endcond(2)],'second');
plot(xx , 25 ./ (1+xx.^2)-fnval(pp2,xx),'kh');



legend('Clamped','Matching the 2nd Derivative');
