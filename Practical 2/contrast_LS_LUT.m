function Lut = contrast_LS_LUT(m,c)
%CONTRAST_LS_LUT function to enhance contrast of image w/ linear stretching
%   This method returns a lookup table
%   Similar to brightness enhancement, which can be seen as a particular
%   case of contrast enhancement. They both use straight line equation. In
%   brightness enhancement, m=1. In contrast enhancement, m>1

counter = 0;
col1 = 1;
Lut = zeros(256,1);

for i = 1:256
    if counter < (-c/m)
        Lut(i,col1) = 0;
    else if counter > (255-c)/m
            Lut(i,col1) = 255;
        else
            Lut(i,col1) = m*counter + c;
        end
    end
    counter = counter + 1;
end
Lut = uint8(Lut);    
end

