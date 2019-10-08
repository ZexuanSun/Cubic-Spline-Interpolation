
x = linspace(-5,5,100);
y  = 25 ./ (1+x.^2);
xx  = linspace(-5,5,150);

%use an uniform distribution function to get the random perturbation
pd = makedist('Uniform','lower',-0.01,'upper',0.01);
dis = random(pd,1,10);

%plot the error in clamped cubic spline 
%before and after perturbation
subplot(3,1,1);

%find the cubic spline interpolation for Runge's example
%before perturbation
sl =  0.3698;
sr = -sl;
pp1 = csape(x,[sl,y,sr],'clamped');

%plot the error in clamped cubic spline before perturbation
plot(xx , 25 ./ (1+xx.^2)- fnval(pp1,xx),'ro');
hold on

%add the perturbation to the first part of the interval
%and find the cubic spline interpolation after perturbation
y(1:10) = y(1:10) + dis;
pp1_d = csape(x,[sl,y,sr],'clamped');

%plot the error in clamped cubic spline after perturbation
plot(xx , 25 ./ (1+xx.^2)- fnval(pp1_d,xx),'c*');
legend('Before','After');
title('Error in Clamped Before vs. After Perturbation');


%plot the error in cubic spline mathing the 2nd derivative
%before and after perturbation
subplot(3,1,2);

%find the cubic spline interpolation matching the 2nd
%derivative for Runge's example before perturbation
endcond = (200*xx([1 end]).^2)./(xx([1 end]).^2 + 1).^3 ... 
- 50./(xx([1 end]).^2 + 1).^2;
y  = 25 ./ (1+x.^2);
pp2 = csape(x,[endcond(1) y endcond(2)],'second');

%plot the error in cubic spline matching the 2nd derivative
%before perturbation
plot(xx , 25 ./ (1+xx.^2)-fnval(pp2,xx),'b');
hold on 

%add the perturbation to the middle part of the interval
%and find the cubic spline interpolation after perturbation
dis_2 =[zeros(1,40),dis,zeros(1,50)]; 
y = y + dis_2;
pp2_d = csape(x,[endcond(1) y endcond(2)],'second');

%plot the error in cubic spline matching the 2nd derivative
%after perturbation
plot(xx , 25 ./ (1+xx.^2)-fnval(pp2_d,xx),'m');
legend('Before','After');
title('Error in Matching the 2nd Derivative Before vs. After Perturbation');

%plot the error in  periodic cubic spline
%before and after Perturbation
subplot(3,1,3);

%find the periodic interpolation for Runge's example 
%before perturbation
y  = 25 ./ (1+x.^2);
pp2 = csape(x, y ,'periodic');

%plot the error in periodic cubic spline 
%before perturbation
plot(xx , 25 ./ (1+xx.^2)-fnval(pp2,xx),'kh--');
hold on 

%add the perturbation to the latter part of the interval
%and find the cubic spline interpolation after perturbation
dis_3 =[zeros(1,60),dis,zeros(1,30)];
y = y + dis_3;
pp2_d = csape(x,y,'periodic');

%plot the error in periodic cubic spline 
%after perturbation
plot(xx , 25 ./ (1+xx.^2)-fnval(pp2_d,xx),'bp-');
legend('Before','After');
title('Error in Periodic Before vs. After Perturbation');





