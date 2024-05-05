
function plotComplexMapping(samp, samps)
        plot(real(samp),imag(samp),"bo", "markersize", 12, real(samps),imag(samps),"k*", "markersize", 12)
        axis equal
        grid on
        legend("Z","W")
        xlabel('Real','FontSize',20,'FontWeight','bold');
        ylabel('Img','FontSize',20,'FontWeight','bold');
        set(gca,'FontSize',30,'Fontname','arial');
endfunction

%%%
%hold on;
%%xlim([-60 60]);
%%ylim([0 5]);
%plot(real(samp),imag(samp),'-s')
%%plot(real(samps),imag(samps),'-s')
%hold off;

%plot(real(samp),imag(samp),'-s','Color', cmap(x,:));  %# Plot each column with a

