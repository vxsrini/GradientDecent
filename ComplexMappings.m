warning off
pkg load statistics
pkg load io

choice = menu("Pick the type of mapping to display - ", 
"Mapping Unit Cicle using function 1/z",
"Mapping x=c using w=z^2",
"Mapping y=ci using w=z^2",
"Mapping x=c using w=1/z",
"Mapping y=ci using w=1/z",
"Custom Mapping");
%%%%%%%%%%%%%%%% Mapping a unit circle from z to w axis with function 1/z %%%%%%%%%%%%%%%%%%
if (choice == 1)
	x = -1:.5:1;
	y = (sqrt(1 - x.^2)).*i;
	samp_1 = x .+ y;
	samp_2 = x .- y;
	samp = [samp_1, samp_2];
	samps = 1./samp;
	%samps = (2.*samp .- 1) ./ (samp .- 2)
	plotComplexMapping(samp, samps)
%%%%%%%%%%%%%%%% Mapping a straight lines x=c from z to w axis with function z^2 %%%%%%%%%%%%%%%%%%
elseif (choice == 2)
	samp = []
	for x = [-4:1:4] 
		for y = [-10:1:10]
			samp = [samp, x+y*i];
		endfor
	endfor
	samps = samp.^2;
	plotComplexMapping(samp, samps)
%%%%%%%%%%%%%%%% Mapping a straight lines y=ci from z to w axis with function z^2 %%%%%%%%%%%%%%%%%%
elseif (choice == 3)
	samp = []
        for y = [-4:1:4]
                for x = [-10:1:10]
                        samp = [samp, x+y*i];
                endfor
        endfor
        samps = samp.^2;
        plotComplexMapping(samp, samps)
%%%%%%%%%%%%%%%% Mapping a straight lines x=c from z to w axis with function e^z %%%%%%%%%%%%%%%%%%
elseif (choice == 4)
	samp = []
        for x = [-10:1:10]
                for y = [-10:1:10]
                        samp = [samp, x+y*i];
                endfor
        endfor
        samps = exp(samp);
        plotComplexMapping(samp, samps)
%%%%%%%%%%%%%%%% Mapping a straight lines y=ci from z to w axis with function e^z %%%%%%%%%%%%%%%%%%
elseif (choice == 5)
	samp = []
        for y = [-10:1:10]
                for x = [-10:1:10]
                        samp = [samp, x+y*i];
                endfor
        endfor
        samps = exp(samp);
        plotComplexMapping(samp, samps)
%%%%%%%%%%%%%%%% Custom mapping %%%%%%%%%%%%%%%%%%
elseif (choice == 6)
	samp = []
	for x = [-1:.5:1] 
	%for x = [.5] 
		for y = [-sqrt(1 - x.^2):.1:sqrt(1 - x.^2)]
			samp = [samp, x+y*i];
		endfor
	endfor
	samps = (2.*samp .- 1) ./ (samp .- 2);
	plotComplexMapping(samp, samps)
	
endif

