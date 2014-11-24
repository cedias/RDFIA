function [sifts] = testExtractionSIFTsImage()

I = imread('../Scene/bedroom/image_0013.jpg');

sifts = computeSIFTsImage(I,16)

end 