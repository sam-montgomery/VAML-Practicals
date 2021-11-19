%edges is the combined edge image. Ihor and Iver are the images containing
%the horizontal and vertical gradients images. B1 and B2 are the masks.
function [Edges, Ihor, Iver] = edgeExtraction(Iin,B1,B2)
Iin = double(Iin); %cast the inputs as doubles
B1 = double(B1);
B2 = double(B2);

%call the myconvolution function we created with parameters I for the image
%and each of the masks separatly and equal them to Iver and Ihor
Iver = myConvolution(Iin,B1);
Ihor = myConvolution(Iin,B2);
Edges = sqrt(Iver.^2 + Ihor.^2); %use the edges equation 
end