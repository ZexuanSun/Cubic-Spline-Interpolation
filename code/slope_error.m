xx  = linspace(-5,5,150);

sl =  0.3698;
sr = -sl;
%endcond = -50*xx([1 end])./((1 + xx([1 end]).^2).^2)
for i = 1:4
    x = linspace(-5,5,20+20*(i-1));
    y  = 25 ./ (1+x.^2);
    subplot(2,2,i);
    hold on
    pp = csape(x,[sl,y,sr],'clamped');
    plot(xx , 25 ./ (1+xx.^2)- fnval(pp,xx));
    tmp_title =['Interpolant to ',num2str(20+20*(i-1)),' Points'];
    title(tmp_title);
    %title('Clamped Cubic Spline Interpolant to Twenty Points');
    legend('Error');
end
