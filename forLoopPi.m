function piEst = forLoopPi(nTotal)
%Function forLoopPi uses nTotal (total points generated) to calculate (4 * (nInside/nTotal))
%nInside is the total number of points inside the circle
%Calculated using a for loop
%Function returns the estimated value of pi
    
    nInside = 0;

    %For each iteration, a new (x,y) is generated
    %nInside incremented if (x,y) falls inside the circle (calculated using
    %the circle formula)
    for i = 1:nTotal
        x = (rand*2)-1;
        y =  (rand*2)-1;
        if(((x)^(2) + (y)^(2)) < 1)
            nInside = nInside + 1;
        end
   
    end
    
    %Value of pi estimate using nInside and nTotal
    piEst = (4*nInside)./nTotal;
end