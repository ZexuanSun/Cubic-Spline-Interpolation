xx  = linspace(-5,5,150);
endcond = (200*xx([1 end]).^2)./(xx([1 end]).^2 + 1).^3 ... 
- 50./(xx([1 end]).^2 + 1).^2;
figure;
title('Clamped cubic spline to');
for i = 1:4
    x = linspace(-5,5,20+20*(i-1));
    y  = 25 ./ (1+x.^2);
    subplot(2,2,i);
    plot(xx,25 ./ (1+xx.^2),'c','LineWidth',4);
    hold on
    pp = csape(x,[endcond(1) y endcond(2)],'second');
    plot(xx , fnval(pp,xx),x,y,'m+');
    tmp_title =['Interpolant to ',num2str(20+20*(i-1)),' Points'];
    title(tmp_title);
    
    legend('Exact','Interpolated','Points');
end
