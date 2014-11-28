function [squareDist] = sqDist(p1, p2)
  [n1, d] = size(p1);
  [n2, d] = size(p2);
  squareDist = zeros(n1, n2);
  for i = 1:d
    squareDist(:,:) += (p1(:,i) - p2(:,i)') .^ 2;
  end
end