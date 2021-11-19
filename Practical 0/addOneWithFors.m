function [output]  = addOneWithFors(input)
[rows, colums] = size(input);
for i=1:rows
    for j=1:colums
        output(i,j) = input(i,j) + 1;
    end
end
end