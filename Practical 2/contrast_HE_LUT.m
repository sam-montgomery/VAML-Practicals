function Lut = contrast_HE_LUT(Iin)
%CONTRAST_HE_LUT - create a lookup table for histogram equalisation
%   takes an image in and produces a Lut as output
Lut = uint8(max(0,round((cumsum(histogram(double(Iin),'BinLimits',[0 256],'BinWidth',1).Values)./(numel(Iin)/256))-1)));
end

