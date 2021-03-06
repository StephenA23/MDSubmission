doPlot = 1;
dt = 15e-15;
TStop = 1000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon
Mass1 = 5 * C.am; % Argon

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1/6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

% cloned from the repo
% AddRectAtomicArray(10, 10, 0, 0, 0, 0, 0, T, 0);
% % vy0 = -sqrt(0.02*Ep/Mass1);
% % AddRectAtomicArray(4,4,0,12*AtomSpacing,0,vy0,0,T,1);

% Added by me
Ep = 2;
AddParticleStream(5, 0.1, 10, 85, -pi / 2, 1, Ep * C.q_0, 5);
AddEllipAtomicArray(10, 6, 5, 0, 5, 5, 0, T, 0);

Size = 20 * AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;
MarkerSize = 10;
PlotFile = 'Block.gif';
doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .2e-11;
ScaleF = 20;