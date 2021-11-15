function [output] = searchingZeros(input)
output = 0;
for index = 1:numel(input)
    if input(index) == 0
        output = output + 1;
    end
end
end