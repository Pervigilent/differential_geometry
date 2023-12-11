%chapter_2.m
% Chapter 2 - Studying Curves in the Plane with Mathematica
DISABLE_WARNINGS = false;
GRAPH_RESOLUTION = 100;

pkg load symbolic
if DISABLE_WARNINGS
  warning('off', 'all');
end
syms x(t) y(t);

% Lemniscate of Gerono or figure eight curve
% Gray page 21
x(t) = sin(t);
y(t) = sin(t) * cos(t);
eight(t) = [x(t); y(t)];
kappa2_eight(t) = kappa2(eight(t));

t_ = linspace(0, 2 * pi, GRAPH_RESOLUTION);
eight_ = [];
kappa2_eight_ = [];
for i = 1 : GRAPH_RESOLUTION
  temporary = eight(t_(i));
  eight_ = [eight_; [double(temporary(1)), double(temporary(2))]];
  kappa2_eight_ = [kappa2_eight_; double(kappa2_eight(t_(i)))];  
end

f1 = figure;

subplot(2, 1, 1);
plot(eight_(:, 1), eight_(:, 2));
title('Figure eight curve');

subplot(2, 1, 2);
plot(t_, kappa2_eight_);
title('Curvature of the figure eight curve');

saveas(f1, "../documentation/images/fig_02_001.png");

% Semicubical parabola on page 23 and 24.
% Described on page 15 of Gray.
%clear x y;
%syms x(t) y(t);
x(t) = t^2;
y(t) = t^3;
sc(t) = [x(t); y(t)];
syms a b;
length_(a, b, sc(t))
nlength(1, 2, sc(t))

f2 = figure;

%_circle_ = circle_(2, x(t), y(t), t);
% Circle - plot from page 26
_circle(t) = circle_(2, x, y, t);
_circle_ = ParametricPlot(GRAPH_RESOLUTION, _circle(t), t, t_);
subplot(2, 2, 1);
plot(_circle_(:, 1), _circle_(:, 2));
title('Circle of radius 2');
axis equal;

_circle_1(t) = circle_(2, x, y, t);
_circle_1_ = ParametricPlot(GRAPH_RESOLUTION, _circle_1(t), t, t_);
_circle_1_(:, 1) = _circle_1_(:, 1) + 1;
_circle_1_(:, 2) = _circle_1_(:, 2) + 2;

_circle_2(t) = circle_(3, x, y, t);
_circle_2_ = ParametricPlot(GRAPH_RESOLUTION, _circle_2(t), t, t_);
_circle_2_(:, 1) = _circle_2_(:, 1) + 2;
_circle_2_(:, 2) = _circle_2_(:, 2) + 0;

subplot(2, 2, 2);
plot(_circle_1_(:, 1), _circle_1_(:, 2), _circle_2_(:, 1), _circle_2_(:, 2));
axis equal;

% Ellipse - plot from page 28
_ellipse(t) = ellipse_(2, 1, x, y, t);
_ellipse_ = ParametricPlot(GRAPH_RESOLUTION, _ellipse(t), t, t_);
subplot(2, 2, 4);
plot(_ellipse_(:, 1), _ellipse_(:, 2));
title('The ellipse x^2/4 + y^2 = 1');
axis equal;

kappa2_ellipse(t) = kappa2(_ellipse(t));
kappa2_ellipse_ = [];
for i = 1 : GRAPH_RESOLUTION
  kappa2_ellipse_ = [kappa2_ellipse_; double(kappa2_ellipse(t_(i)))];  
end
subplot(2, 2, 3);
plot(t_, kappa2_ellipse_);
title('Curvature of the ellipse x^2/4+y^2=1');

saveas(f2, "../documentation/images/fig_02_002.png");

t_ = linspace(0, 12 * pi, GRAPH_RESOLUTION);

f3 = figure;

_logspiral(t) = logspiral(1, 0.08, x, y, t);
logspiral_ = ParametricPlot(GRAPH_RESOLUTION, _logspiral(t), t, t_);
subplot(2, 2, 1);
plot(logspiral_(:, 1), logspiral_(:, 2));
title('The logarithmic spiral');
axis equal;

kappa2_logspiral(t) = kappa2(_logspiral(t));
kappa2_logspiral_ = [];
for i = 1 : GRAPH_RESOLUTION
  kappa2_logspiral_ = [kappa2_logspiral_; double(kappa2_logspiral(t_(i)))];  
end
subplot(2, 2, 2);
plot(t_, kappa2_logspiral_);
title('Curvature of the logarithmic spiral');

t_ = linspace(0.1, 2 * pi + 0.1, GRAPH_RESOLUTION);

subplot(2, 2, 3);
for n = 1 : 8
  _diamond_1(t) = diamond(n, 1, 1, x, y, t);
  diamond_1 = ParametricPlot(GRAPH_RESOLUTION, _diamond_1(t), t, t_);
  plot(diamond_1(:, 1), diamond_1(:, 2));
  hold on;
end
title('Diamond (n, 1, 1)');
axis equal;
hold off;

subplot(2, 2, 4);
for n = 1 : 8
  _diamond_2(t) = diamond(1/n, 1, 3/2, x, y, t);
  diamond_2 = ParametricPlot(GRAPH_RESOLUTION, _diamond_2(t), t, t_);
  plot(diamond_2(:, 1), diamond_2(:, 2));
  hold on;
end
title('Diamond (1/n, 1, 1.5)');
axis equal;
hold off;

saveas(f3, "../documentation/images/fig_02_003.png");

if (DISABLE_WARNINGS)
  warning('on', 'all');
end