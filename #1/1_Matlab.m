A = zeros(5,6);


% Display
Figure1 = figure();
t = 0;
while t < 10
    A = A + rand(5,6);
    imagesc(A)  % plot the 2D matrix
    % dynamically display
    drawnow;
    % update the time
    t = t + 1;
end

