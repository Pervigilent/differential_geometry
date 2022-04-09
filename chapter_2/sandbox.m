% Chapter 2 Sandbox
clc
clear

GRAPH_RESOLUTION = 100;

pkg load symbolic
syms x(t) y(t);

t_ = linspace(0, 2 * pi, GRAPH_RESOLUTION);

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