warning off
pkg load statistics
pkg load io

cmap = hsv(50);  %# Creates a 6-by-3 set of colors from the HSV colormap
x = -2:.1:2;
y = (sqrt(4 - x.^2)).*i;
samp_1 = x .+ y;
samp_2 = x .- y;
samp = [samp_1, samp_2];

samps = 1./samp;

plot(real(samp),imag(samp),"o", "markersize", 15, real(samps),imag(samps),"+", "markersize", 15)
%plot(real(samp),imag(samp),"o")
axis equal
grid on
legend("z1","w2")
xlabel('Real','FontSize',20,'FontWeight','bold');
ylabel('Img','FontSize',20,'FontWeight','bold');
set(gca,'FontSize',30,'Fontname','arial');

%hold on;
%%xlim([-60 60]);
%%ylim([0 5]);
%plot(real(samp),imag(samp),'-s')
%%plot(real(samps),imag(samps),'-s')
%hold off;

%plot(real(samp),imag(samp),'-s','Color', cmap(x,:));  %# Plot each column with a

