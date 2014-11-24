function [ sift ] = testExtractionSIFT(I, name, s, delta)
  Ix = convolution_separable(I, [-1 0 1], (1/4) * [1; 2; 1]);
  Iy = convolution_separable(I, (1/4)*[1 2 1], [-1; 0; 1]);
  Ig = sqrt(Ix .^ 2 + Iy .^ 2);
  Ior = orientation(Ix, Iy, Ig);
  Mg = gaussSIFT(s);
  ## figure; imshow(Ix);
  ## figure; imshow(Iy);
  ## figure; imshow(Ig);

  sift = computeSIFT([11; 11], s, Ig, Ior, Mg);

  #r = denseSampling(I, s, delta);
  visuSIFT(I, Ig,  Ior, [11; 11], name, s, sift);
end
