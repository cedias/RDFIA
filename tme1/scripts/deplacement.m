function [deplacement] = deplacement(oldC,newC)
	size(oldC)
	size(newC)
	moyOld = mean(oldC,1);
	moyNew = mean(newC,1);
	
	deplacement = sqrt(sum((moyOld - moyNew).*(moyOld-moyNew)));

end