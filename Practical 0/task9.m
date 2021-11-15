clear all;
close all;

x = 0:pi/100:2*pi;
y = sin(x);
%plot(x,y, 'r');

xlabel('x');
ylabel('sin(x)');
title('Plot of the Sine Function');

y2 = cos(x);
hold on;
%subplot(x, y2, 'm:');
legend('sin', 'cos');

points = rand(10,2);
%plot(points)



