warning off
pkg load statistics
pkg load io

cmap = hsv(50);  %# Creates a 6-by-3 set of colors from the HSV colormap
samp = [];
for x=1:50
	for y = 1:50
	        samp(x, y) = x + i*y;
	endfor
endfor
rad2deg(angle(samp));
samps = exp(samp);
size(samps)
hold on;
set(gca,'FontSize',20,'Fontname','arial');
%xlim([-60 60]);
%ylim([0 5]);
xlabel('Real','FontSize',20,'FontWeight','bold');
ylabel('Img','FontSize',20,'FontWeight','bold');
plot(real(samps),imag(samps),'-s')
hold off;

%plot(real(samp),imag(samp),'-s','Color', cmap(x,:));  %# Plot each column with a

