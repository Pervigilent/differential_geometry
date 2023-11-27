a = 0;

c_0 = 0;
d_0 = 0;
theta_0 = 0;

syms x(t) y(t) theta(t) f(t)

syms f1(t) f2(t) f3(t) f4(t)

RESOLUTION = 500
IS_ITERATION_TRACKED = true;
TRACKING_INTERVAL = 100;

f1(t) = sin(t) + t;
f2(t) = t * sin(t);
f3(t) = t * (sin(t)) * 2;
f4(t) = t * 2 * sin(t);

a1 = 0;
a2 = 0;
a3 = 0;
a4 = 0;

c1 = 0;
c2 = 0;
c3 = 0;
c4 = 0;

d1 = 0;
d2 = 0;
d3 = 0;
d4 = 0;

theta1 = 0;
theta2 = 0;
theta3 = 0;
theta4 = 0;

tmin1 = -20;
tmin2 = -20;
tmin3 = -20;
tmin4 = -20;

tmax1 = 20;
tmax2 = 20;
tmax3 = 20;
tmax4 = 20;

plotintrinsic(f1, a1, c1, d1, theta1, tmin1, tmax1,...
	RESOLUTION, IS_ITERATION_TRACKED, TRACKING_INTERVAL);
plotintrinsic(f2, a2, c2, d2, theta2, tmin2, tmax2,...
	RESOLUTION, IS_ITERATION_TRACKED, TRACKING_INTERVAL);
plotintrinsic(f3, a3, c3, d3, theta3, tmin3, tmax3,...
	RESOLUTION, IS_ITERATION_TRACKED, TRACKING_INTERVAL);
plotintrinsic(f4, a4, c4, d4, theta4, tmin4, tmax4,...
	RESOLUTION, IS_ITERATION_TRACKED, TRACKING_INTERVAL);
	
function [xx,  yy] = intrinsic(f, a,...
	c, d, theta0,...
	tmin, tmax,...
	resolution,...
	isIterationTracked, trackingInterval)
%INTRINSIC Generate parametric curve from curvature
%	Generate parametric curve from curvature
	if nargin < 8
		resolution = 100;
	elseif nargin < 10
		trackingInterval = 100;
	elseif nargin < 9
		isIterationTracked = false;
	end
	
	theta = int(f) + theta0;
	xx = [];
	yy = [];
	t_ = linspace(tmin, tmax, resolution);
	for i = 1 : resolution
		x = int(cos(theta), tmin, t_(i)) + c;
		y = int(sin(theta), tmin, t_(i)) + d;
		xx = [xx; double(x)];
		yy = [yy; double(y)];
		if isIterationTracked
			if mod(i, trackingInterval) == 0
				notification = strcat("intrinsic: iteration number ", num2str(i), ".");
				disp(notification);
			end
		end
	end
end

function output = plotintrinsic(f, a,...
	c, d, theta0,...
	tmin, tmax,...
	resolution,...
	isIterationTracked, trackingInterval)
%PLOTINTRINSIC Plot parametric curve from curvature
%	Plot parametric curve from curvature
	if nargin < 8
		resolution = 100;
	elseif nargin < 10
		trackingInterval = 100;
	elseif nargin < 9
		isIterationTracked = false;
	end
	
	output = figure();
	[xx,  yy] = intrinsic(f, a,...
	c, d, theta0,...
	tmin, tmax,...
	resolution,...
	isIterationTracked, trackingInterval);
	plot(xx, yy);
end
		
	
