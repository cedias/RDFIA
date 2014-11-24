function [ sifts ] = computeSIFTsImage(I, s)
  sifts = [];

  Ix = convolution_separable(I, [-1 0 1], (1/4) * [1; 2; 1]);
  Iy = convolution_separable(I, (1/4)*[1 2 1], [-1; 0; 1]);
  Ig = sqrt(Ix .^ 2 + Iy .^ 2);
  Ior = orientation(Ix, Iy, Ig);
  Mg = gaussSIFT(s);
  r = denseSampling(I, s, 8);

  for i=1:size(r,2)
  	sifts = [sifts ; computeSIFT(r(:,i), s, Ig, Ior, Mg)];
  end

end
