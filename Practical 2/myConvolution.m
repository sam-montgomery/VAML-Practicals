function Iout = myConvolution(Iin,B)

Iin = double(Iin); %cast image I as a double 
B = double(B); %cast B as a double

%assigning Iout an array populated with zeros with a size of the image
%values array x by y for rows and columns - length and height
%length of the image minus the length of the mask + 1 (to pad it with
%zeros) and height of image minus the height of the mask + 1

Iout = zeros(length(Iin) - (length(B) + 1), height(Iin) - (height(B) + 1));
maskResult = zeros(size(B)); %creating a mask the size of B and filling it with zeros

for i=1:length(Iout) %loop from 1 to the last pixel in the image x axis
    for j=1:height(Iout) %loop from 1 to the last pixel in the image y axis
        for k=1:length(B) %loop from 1 to the last value in the x axis for mask
            for l=1:height(B) %loop from 1 to the last value in the y axis for mask
                maskResult(k,l) = (Iin(k+i-1, l+j-1) * B(k,l));
            end
        end
        Iout(i,j) = sum(maskResult, 'all');
    end
end
end