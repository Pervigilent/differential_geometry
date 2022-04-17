%chapter_3.m
% Chapter 3 - Famous Plane Curves
DISABLE_WARNINGS = false;
GRAPH_RESOLUTION = 100;

pkg load symbolic
if DISABLE_WARNINGS
  warning('off', 'all');
end
syms x(t) y(t);

% Cycloid
% Gray pages 37 - 39
t_ = linspace(0, 2 * pi, GRAPH_RESOLUTION);
_cycloid(t) = cycloid(1, 1, x, y, t);
cycloid_ = ParametricPlot(GRAPH_RESOLUTION, _cycloid(t), t, t_);
subplot(2, 1, 1)
plot(cycloid_(:, 1), cycloid_(:, 2));
title('The cycloid (t-sin(t),1-cos(t))');
%axis equal;

kappa2_cycloid(t) = kappa2(_cycloid(t));
kappa2_cycloid_ = [];
for i = 1 : GRAPH_RESOLUTION
  kappa2_cycloid_ = [kappa2_cycloid_; double(kappa2_cycloid(t_(i)))];  
end
subplot(2, 1, 2);
plot(t_, kappa2_cycloid_);
title('Curvature of the cycloid');

if (DISABLE_WARNINGS)
  warning('on', 'all');
end