clear all

pkg load symbolic % OCTAVE_SPECIFIC

RESOLUTION = 5;
syms x(u, v) y(u, v) z(u, v)

fig_1 = figure()

[x, y, z] = monkeysaddle(u, v);
u_ = linspace(-1.5, 1.5, RESOLUTION);
v_ = linspace(-1.5, 1.5, RESOLUTION);
[x_, y_, z_] = SpatialParametricPlot(x, y, z,...
  RESOLUTION, RESOLUTION, u, v, u_, v_);
surf(x_, y_, z_);
saveas(fig_1, "../documentation/images/image_11_001.png");