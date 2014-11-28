%testKMeans

[sifts,normes ] = randomSampling('../descripteurs/');

[centres, erreur] = solutionKMeans(sifts, 1000);


save('../descripteurs/visualDic.m',centres)
