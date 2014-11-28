function [newCenters,erreur] = miseAjourKMeans(listPoints,cent,nc)

nbCenters = max(nc);
newCenters = [];
erreur = 0;
dist = 0;


for i=1:nbCenters
	ind = find(nc == i);

	pointsClu = listPoints(ind,:);

	if (size(pointsClu) ==0)
		pointsCenter = randomSeed(listPoints,1)
	else
		pointsCenter =  mean(pointsClu,1);
	end

	newCenters = [newCenters ; pointsCenter];
	%pow = power(pointsClu - pointsCenter,2);
	%seum = sum(pow,2)
	%dist+= mean(seum)
	

	if (size(pointsClu) != 0)
		dist += mean(sum(power(pointsClu - pointsCenter , 2) ,2 ) );
	end

end
	erreur = (dist/nbCenters);


end