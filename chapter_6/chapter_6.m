clear all

pkg load symbolic % OCTAVE_SPECIFIC

RESOLUTION = 1000;
syms x(t) y(t)

fig_1 = figure()

[x, y] = ellipse(3, 1, t);
[x, y] = rotate_(pi / 12, [x; y]);
t_ = linspace(0, 2 * pi, RESOLUTION);
x_ = ParametricPlot(RESOLUTION, x, t, t_);
y_ = ParametricPlot(RESOLUTION, y, t, t_);
plot(x_, y_);

fig_2 = figure()

syms t
[x, y] = logspiral(1, 0.1, t);
t_ = linspace(-10, 10, RESOLUTION);
x_ = ParametricPlot(RESOLUTION, x, t, t_);
y_ = ParametricPlot(RESOLUTION, y, t, t_);
plot(x_, y_);