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
_circle_ = [];
_circle(t) = circle_(2, x, y, t);
for i = 1 : GRAPH_RESOLUTION
  temporary = _circle(t_(i));
  _circle_ = [_circle_; [double(temporary(1)), double(temporary(2))]];
end
subplot(2, 2, 1);
plot(_circle_(:, 1), _circle_(:, 2));
title('Circle of radius 2');

% Plot untitled figure from page 27
_circle_1_ = [];
_circle_1(t) = circle_(2, x, y, t);
for i = 1 : GRAPH_RESOLUTION
  temporary = _circle_1(t_(i));
  _circle_1_ = [_circle_1_; [double(temporary(1)), double(temporary(2))]];
end
_circle_1_(:, 1) = _circle_1_(:, 1) + 1;
_circle_1_(:, 2) = _circle_1_(:, 2) + 2;
_circle_2_ = [];
_circle_2(t) = circle_(3, x, y, t);
for i = 1 : GRAPH_RESOLUTION
  temporary = _circle_2(t_(i));
  _circle_2_ = [_circle_2_; [double(temporary(1)), double(temporary(2))]];
end
_circle_2_(:, 1) = _circle_2_(:, 1) + 2;
_circle_2_(:, 2) = _circle_2_(:, 2) + 0;
subplot(2, 2, 2);
plot(_circle_1_(:, 1), _circle_1_(:, 2), _circle_2_(:, 1), _circle_2_(:, 2));


if (DISABLE_WARNINGS)
  warning('on', 'all');
end