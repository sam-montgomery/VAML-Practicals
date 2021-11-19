function [output] = myHistogram(input)
H = histogram(input);
output=H.Values;;
end