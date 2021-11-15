clear all;
close all;

points = rand(10,2);
x = points(1,:)
y = points(2,:)
plot(points(:,1), points(:,2), 'o')
xlabel('x')
ylabel('y') 
hold on
line ([x(1) x(2)],[y(1) y(2)]) 
line ([x(1) x(1)],[y(1) y(2)]) 
line ([x(2) x(1)],[y(2) y(2)]) 
hold off


