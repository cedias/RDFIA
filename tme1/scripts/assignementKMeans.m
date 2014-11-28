function [nc] = assignementKMeans(points, centers)
  sqDist = sqDist(points, centers);
  [dummy, nc] = min(sqDist, [], 1);
end