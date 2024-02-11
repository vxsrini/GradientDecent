warning off
pkg load statistics
pkg load io

hgt=xlsread("./weight-height.csv", "", "A2:C5001");
rawH = hgt(:, 2);
rawHPdf=normpdf(sort(rawH), mean(rawH), std(rawH));
rawHCdf=normcdf(sort(rawH), mean(rawH), std(rawH));
plot(sort(rawH), rawHPdf);
plot(sort(rawH), rawHCdf);



for i=1:300
	samp(i, :) = rawH(randi(5000, 1, 100), 1)';
endfor

probS = sum(samp' < mean(mean(samp))) / 100;
origP = sum(rawH < mean(rawH))/5000;

pSam = mean(probS);
pSam
origP

#hist(probS)
