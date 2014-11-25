function [centres, erreur] = solutionKMeans(points, nbCentres)

centres = randomSeed(points,nbCentres)

assignement = assignementKMeans(centres,points)
[newCenters,erreur,moveCenters] = miseAjourKMeans(listPts,assignement, centres)

while sum(moveCenters) > 0
	
assignement = assignementKMeans(centres,points)
[newCenters,erreur,moveCenters] = miseAjourKMeans(listPts,assignement, centres)

end

centres = newCenters

end