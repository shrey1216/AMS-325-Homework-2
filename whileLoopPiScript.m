k = 1:11;
tol = 10.^(-k);
time = [];

%Script to call the function for tol.
%Will call whileLoopPi using 10^(-k) points with k = 1,2,3,...,11.
%The function is also timed using tic and toc. The toc values are added to
%the time array to be graphed later. 
for i = 1:length(k)
    tic
    whileLoopPi(tol(i));
    time(i) = toc;
end

%Computational costs vs tol graph. As the tol gets smaller, the
%computational cost increases.
semilogx(tol,time)
yyaxis left
ylim([-4.5 4.5])


xlabel('Tolerance');
ylabel('Time')

%Saving to an SVG file
print whileLoopPlot.svg -dsvg