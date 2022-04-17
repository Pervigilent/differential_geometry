% Chapter 2 Sandbox
clc
clear

GRAPH_RESOLUTION = 100;

pkg load symbolic
syms x(t) y(t);

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
