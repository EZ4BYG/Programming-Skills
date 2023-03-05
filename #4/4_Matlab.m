%% 1) Input: set global parameters
% Note: t means Time, T means Temperature field !!!
nx = 100;       % grid points of x-axis
ny = 50;        % grid points of y-axis
k = 1.0;        % diffusivity constant 
a = 0.2;        % time step constant 
t1 = 0;         % stable
t2 = t1;        % unstable
t_end = 0.05;   % end time
T0 = 'Spike';

%% 2) Initilization
h = 1 / (ny-1);            % grid spacing 
dt1 = a * h^2 / k;         % stable
dt2 = 1.3 * a * h^2 / k;   % unstable
% Spike
T1 = zeros(ny, nx);    
T1(25, 50) = 1; 
T2 = T1;            % for unstable

%% 3) Data
% Stable
while t1 < t_end
    T1 = T1 + dt1 * k * Laplacian(T1, h, nx, ny);
    % Update the time
    t1 = t1 + dt1;
end
% Unstable
while t2 < t_end
    T2 = T2 + dt2 * k * Laplacian(T2, h, nx, ny);
    % Update the time
    t2 = t2 + dt2;
end

%% 4) Plotting: tiledlayout + nexttile + exportgraphics
fig = tiledlayout(2, 1, 'TileSpacing', 'Compact', 'Padding', 'tight');  % 2,1 = 2行1列
% subplot1: stable
nexttile   % 每开始一个新子图，以该函数开头       
imagesc(T1);
colormap('hot'); 
clb1 = colorbar;
xlabel('X-axis');
ylabel('Y-axis');
title(['Stable simulation with a spike field: dt = ' num2str(dt1)]);
ylabel(clb1, 'Temperature');
% subplot2: nstable
nexttile
imagesc(T2);
colormap('hot'); 
clb2 = colorbar;
xlabel('X-axis');
ylabel('Y-axis');
title(['Unstable simulation with a spike field: dt = ' num2str(dt2)]);
ylabel(clb2, 'Temperature');

%% 5) Save
exportgraphics(fig, 'Homo_Stability.png', 'Resolution', 300);
