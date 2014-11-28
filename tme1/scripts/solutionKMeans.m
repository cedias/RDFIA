function [centres, erreur] = solutionKMeans(points, nbCentres)

centres = randomSeed(points,nbCentres);

assignement = assignementKMeans(centres,points);
[newCenters,erreur] = miseAjourKMeans(points,centres, assignement);

dep = deplacement(centres,newCenters)

while (dep != 0)
	
	assignement = assignementKMeans(centres,points);
	[newCenters,erreur] = miseAjourKMeans(points,centres, assignement);

	dep = deplacement(centres,newCenters);
	centres = newCenters;
	dep
	erreur
end

end