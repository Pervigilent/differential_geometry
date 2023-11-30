clear all

pkg load symbolic % OCTAVE_SPECIFIC

RESOLUTION = 50;
syms x(u, v) y(u, v) z(u, v)

fig_1 = figure()

[x, y, z] = monkeysaddle(u, v);
u_ = linspace(-1.5, 1.5, RESOLUTION);
v_ = linspace(-1.5, 1.5, RESOLUTION);
x_ = ParametricPlot3D(RESOLUTION, RESOLUTION,...
  x, u, v, u_, v_);
y_ = ParametricPlot3D(RESOLUTION, RESOLUTION,...
  y, u, v, u_, v_);
z_ = ParametricPlot3D(RESOLUTION, RESOLUTION,...
  z, u, v, u_, v_);
surf(x_, y_, z_);