clear all

pkg load symbolic % OCTAVE_SPECIFIC

RESOLUTION = 50;
syms x(u, v) y(u, v) z(u, v)

fig_1 = figure()

[x, y, z] = monkeysaddle(u, v);
u_ = linspace(-1.5, 1.5, RESOLUTION);
v_ = linspace(-1.5, 1.5, RESOLUTION);
[x_, y_, z_] = SpatialParametricPlot(x, y, z,...
  RESOLUTION, RESOLUTION, u, v, u_, v_);
surf(x_, y_, z_);
saveas(fig_1, "../images/image_11_001.png");


fig_2 = figure();

[x, y, z] = stereographicellipsoid(1, 3, 5, u, v);
u_ = linspace(-2.8, 2.8, RESOLUTION);
v_ = linspace(-2.8, 2.8, RESOLUTION);
[x_, y_, z_] = SpatialParametricPlot(x, y, z,...
  RESOLUTION, RESOLUTION, u, v, u_, v_);
surf(x_, y_, z_); 

fig_3 = figure();

[x, y, z] = hyperbolicparaboloid(u, v);
u_ = linspace(-1.5, 1.5, RESOLUTION);
v_ = linspace(-1.5, 1.5, RESOLUTION);
[x_, y_, z_] = SpatialParametricPlot(x, y, z,...
  RESOLUTION, RESOLUTION, u, v, u_, v_);
surf(x_, y_, z_);