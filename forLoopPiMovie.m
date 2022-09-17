function piEst = forLoopPiMovie(nTotal)
%This function is a modification of the original for loop, and plots the
%points as they have been generated. The for loop computes the estimation
%of pi and plots the points simultaneously. 

%Any number can be put in for nTotal, like 10000. 

    t = 1:nTotal;
    x = [];
    y = [];
    %This fills up the x and y arrays with random values
    for i = 1:length(t)
        x(i) = (rand*2)-1;
        y(i) = (rand*2)-1;
    end

    figure


    nInside = 0;

    %loop to plot the points and estimate the value of pi. 
    for k = 1:nTotal
        t_k = t(k);
        x_k = x(k);
        y_k = y(k);


        plot(x_k,y_k, 'bo', 'LineWidth', 0.5, 'MarkerSize', 10)

        hold on

        plot(x_k,y_k, 'bo', 'LineWidth', 0.5, 'MarkerSize', 10)
        

        xlim([-1 1])
        ylim([-1 1])

        grid on

        xlabel('x')
        ylabel('y')

        movieVector(k) = getframe;

        if(((x_k)^(2) + (y_k)^(2)) < 1)
            nInside = nInside + 1;
        end
   
    end
    myWriter = VideoWriter('Pi Movie');
    myWriter.FrameRate = 20;

    open(myWriter);
    writeVideo(myWriter,movieVector);
    close(myWriter);
    
    %Value of pi estimate using nInside and nTotal
    piEst = (4*nInside)./nTotal;
end