function [nc] = assignementKMeans(centers,points,nbCenters,ndim)

minus = repmat(points,nbCenters,1) - reshape(repmat(centers,1,nbCenters)',ndim,ndim*nbCenters)';
minusNorm = minus*minus'
[val, nc] = min(minusNorm)
end