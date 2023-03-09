%% Assignment
% Title: Finite Difference Time Domain modelling on a 2-D Staggered grid
% 1) Input the global paramters, and then calculate the max spatial and time step 
% 2) Initialize the fields and source function 
% 3) Iteration and plotting preasure field


%% 0) Clean sheet
clear variables  % remove items from workspace, freeing up system memory
close all        % close any open figures
clc              % and clear the command window


%% 1) Input: set global parameters
% (1.1) Medium parameters
vp  = 2000;     % velocity in the medium (constant, unit: m/s)
rho = 1500;     % density of the medium (constant, unit: kg/m3)
fc = 20;        % central frequency of the source (constant, unit: Hz)
% (1.2) Space + Time parameters
lx = 1200;      % x length (unit: m)
ly = 1200;      % y length (unit: m)
lt = 5;         % total time (unit: s)、
%% 
% Spatial step (Accuracy): The shortest wavelength is sampled with at least 10 points
% —— precisely 10 segments / 11 grid points per wavelength
% Time step (Stability): c * dt / dx <= 1
% —— In practice, a little less than this maximum to be stable !!
wavelength = vp / fc;
dx = wavelength / 10;   % max x step (unit: m) —— the smaller the more precise, but inefficient
dy = dx;                % max y step (unit: m) —— the smaller the more precise, but inefficient
dt = 0.7 * dx / vp;     % max t step (unit: s) —— the smaller the more precise, but inefficient —— 对比0.7和0.71即可
%%
% (1.3) Grid parameters
nx = floor(lx / dx);    % the number of x grids (120) —— 120 grids ⇌ 121 grid points
ny = floor(ly / dy);    % the number of y grids (120)
nt = floor(lt / dt);    % the number of t grids (10000)
% (1.4) Positions
all_x = [0 : nx]*dx;    % the value of each x grid point (start with 0)
all_y = [0 : ny]*dy;    % the value of each y grid point (start with 0)
all_t = [0 : nt]*dt;    % the value of each t grid point (start with 0)
% (1.4) Figure parameters
fontsize_large = 14;
fontsize_mid = 12;
fontsize_small = 10; 
seismic = getPyPlot_cMap('seismic_r', [], [], '"E:\TUD_Anaconda\setup\python.exe"');  % The 2 '[]' is necessary !


%% 2) Initialization
% (2.1) Fields
p = zeros(nx+1, ny+1);   % initial pressure field: 121 x 121
vx = zeros(nx+1, ny+1);  % initial vx velocity field: 121 x 121
vy = zeros(nx+1, ny+1);  % initial vy velocity field: 121 x 121
% (2.2) Source
ricker = @(fm,t) (1 - 2 * pi^2 * fm^2 * t^2) * exp(-pi^2 * fm^2 * t^2);   % Ricker wavelet as source
% (2.3) Source position: index
source_x = 40;           % range [1, 120]
source_y = 60;           % range [1, 120]


%% 3) Iteration and Plotting
Figure1 = figure('Position', [0 0 800 800]);
% Time loop
for t = 1:nt
    % (3.1) Inject source funtion: The source of numerical updates !!
    % Note: We place the update of p before vx/vy, because only the updates (source injection) of p lead to the updates of vx/vy !!
    p(source_x, source_y) = p(source_x, source_y) + dt*ricker(fc, all_t(t)-0.1);     
    % (3.2a) Update p totally (space loop)
    % Note: the values of the first row and column in p are alwasy 0 !!
    for x = 1:nx
        for y = 1:ny
            lhs = (vx(x+1,y) - vx(x,y)) / dx + (vy(x,y+1) - vy(x,y)) / dy;  % left hand side 
            p(x+1, y+1) = p(x+1, y+1) - (dt*rho*vp^2) * lhs; 
        end
    end
    % (3.2b) Update vx and vy totally (space loop)
    % Note: the values of the last row and column in vx / vy are always !!
    for x = 1:nx
        for y = 1:ny
            vx(x, y) = vx(x, y) - (dt/rho)*(p(x+1,y+1) - p(x,y+1)) / dx;
            vy(x, y) = vy(x, y) - (dt/rho)*(p(x+1,y+1) - p(x+1,y)) / dy;
        end
    end  
    % (3.3) Display every 10th time loop
    if mod(t, 10) == 0
        imagesc(all_x, all_y, p');  % p' = transpose of p → Try vx and vy 
        colormap(seismic);
        title(['P field: Time = ' sprintf('%.3f', all_t(t)) 's'], 'FontSize', fontsize_large);
        xlabel('X-axis [m]', 'FontSize', fontsize_mid);
        ylabel('Y-axis [m]', 'FontSize', fontsize_mid);
        % colorbar ylabel
        % clb1 = colorbar;
        % ylabel(clb1, 'Pressure', 'FontSize', fontsize_small);
        drawnow
    end
end

