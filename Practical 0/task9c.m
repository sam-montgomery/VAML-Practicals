clear all;
close all;

points = rand(10,3);
x = points(:,1)
y = points(:,2)
z = points(:,3)
plot3(x,y,z)
xlabel('x')
ylabel('y') 
zlabel('z')
