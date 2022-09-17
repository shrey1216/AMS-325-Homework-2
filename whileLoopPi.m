function piEst = whileLoopPi(tol)
%Function whileLoopPi takes in tol as an argument and returns as estimation
%of pi.

%The tolerance level is the maximum error the pi estimation can have, so
%the smaller the tol, the better the pi estimate. 
%Using a while loop, points are added infinitely until the tol level is
%reached. 


    %Finding the first pi estimate needed to begin the while loop
    nInside = 0;
    nTotal = 0;
    x = (rand*2)-1;
    y =  (rand*2)-1;

    if(((x)^(2) + (y)^(2)) < 1)
        nInside = nInside + 1;
    end

    nTotal = nTotal + 1;

    piEst = 4.*(nInside./nTotal);


    %The condition for the while loop is that the relative error for the pi
    %estimate has to be greater than the tol. As soon as it is less than or
    %equal to tol, the while loop will end. 
    while (abs(piEst - pi)/pi > tol)
        x = (rand*2)-1;
        y =  (rand*2)-1;
        if(((x)^(2) + (y)^(2)) < 1)
            nInside = nInside + 1;
        end

        nTotal = nTotal + 1;

        piEst = 4.*(nInside./nTotal);
    
    end
end