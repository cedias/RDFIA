function [newCenters] = miseAjourKMeans(listPoints,centers,nc)

nbCenters = max(nc)
newCenters = []

for i=1:nbCenters
	ind = find(nbCenters == i)
	newCenters = [newCenters mean(listPoints(ind,:))]
end

end