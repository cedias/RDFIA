function [sift] = computeSIFT(pt, s, Ig, Ior, Mg)
  nbin = 8;
  ps = 4; % patch size
  sift = zeros(s, nbin);
  k = 1;
  for i = 1 : s/4
    for j = 1 : s/4
      r1 = (i - 1) * ps + pt(1)
      r2 = r1 + ps - 1
      c1 = (j - 1) * ps + pt(2)
      c2 = c1 + ps - 1

      ## xg1 = (i - 1) * ps + 1;
      ## xg2 = xg1 + ps - 1;
      ## yg1 = (j - 1) * ps + 1;
      ## yg2 = yg1 + ps - 1;

      h = zeros(nbin, 1);
      for r = 0:3
        for c = 0:3
          b = Ior(r1+r, c1+c);
          if b != 0
            h(b, 1) = h(b, 1) + Ig(r1+r, c1+c) * Mg(r+1, c+1);
          end
        end
      end

      sift(k,:) = h
      k += 1;
    end
  end
  sift = reshape(sift', 1, s * nbin);
end
