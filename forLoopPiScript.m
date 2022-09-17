a = 1:22;
b1 = [];
b2 = [];

%Script to call the function for different points. 
%Will call forLoopPi using 2^k points with k = 1,2,3,...,20.
for i = 1:length(a)
    b1(i) = forLoopPi(2^a(i));
end

%Plotting the first line for pi estimate
yyaxis left
semilogx(2.^(a),b1)
ylim([1 5])
ylabel('π est value');

hold on

%Plotting the second line for error
b2 = abs(b1 - pi)
yyaxis right
semilogx(2.^(a),b2)
ylim([-2 2])
ylabel('error value');

legend('π estimate', 'error');

xlabel('10^0 \leq x \leq 10^7');

%Saving to an SVG file
print forLoopPlot.svg -dsvg

hold off


