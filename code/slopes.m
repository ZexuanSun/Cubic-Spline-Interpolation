%clamped cubic spline interpolant

xx  = linspace(-5,5,150);

sl =  0.3698;
sr = -sl;

for i = 1:4
    x = linspace(-5,5,20+20*(i-1));
    y  = 25 ./ (1+x.^2);
    subplot(2,2,i);
    plot(xx,25 ./ (1+xx.^2),'y','LineWidth',4);
    hold on
    pp = csape(x,[sl,y,sr],'clamped');
    plot(xx , fnval(pp,xx),x,y,'ro');
    tmp_title =['Interpolant to ',num2str(20+20*(i-1)),' Points'];
    title(tmp_title);
    legend('Exact','Interpolated','Points');
end


