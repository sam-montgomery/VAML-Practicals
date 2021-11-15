function Lut = brightnessLUT(c)
%BRIGHTNESSLUT 
%   Contains the transfer function for increasing/decreasing brightness of
%   a figure in a given amount c.
%   Lut is an array of 256 elements indexed from 1 to 256.
%   The index of an element represents the input pixel value+1
%   The value stored in the element is the corresponding output value
col1 = 1;
% col2 = 2;
counter = 0;
%initialise your matrix - it will have 256 rows and 1 column
Lut = zeros(256,1);
%iterate from 1 to 256, to alter pixels zero to 255 (this is the purpose of counter)
for i = 1:256
    if counter < -c
        %to prevent any values from going to <0. 0 is as dark as we can go
%         Lut(i,col1) = counter;
        Lut(i,col1) = 0;
    else if counter > 255-c
            %to prevent any values from going to >255. 255 is as light as we can go
%             Lut(i,col1) = counter;
            Lut(i,col1) = 255;
        else
            %else the output value = input value + c;
%             Lut(i,col1) = counter;
            Lut(i,col1) = counter + c;
        end
    end
    counter = counter+1;
end
%To ensure Lut is of the same type of data as the pixels (shorts)
Lut = uint8(Lut);
end


