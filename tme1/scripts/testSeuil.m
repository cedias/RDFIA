function [] = testSeuil()
I = imread('../Scene/MITstreet/image_0002.jpg');

sifts = computeSIFTsImage(I,16);
r = denseSampling(I, 16, 8);
drawPatches(I,r,16,sifts')

endfunction