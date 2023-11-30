
clear all

pkg load symbolic % OCTAVE_SPECIFIC

RESOLUTION = 1000;
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

function [x, y, z] = monkeysaddle(u, v)
  %ELLIPSE Cretae a parameterized ellipse
  % Refers to ellipse function created in section 2.4
  x = u;
  y = v;
  z = u^3  - 3 * u * v^2;
end

function output = ParametricPlot3D(resolution_u, resolution_v,...
   input_, u, v, u_, v_)
%PARAMETRICPLOT3D Create points for parametric plot
% Create 3D points for parametric plot.  
  output = zeros(resolution_u, resolution_v);
  warning('off', 'all');
  for i = 1 : resolution_u
    for j = 1 : resolution_v
      temp(u, v) = input_;
      temporary = temp(u_(i), v_(j));
      %output = [output; [double(temporary(1)), double(temporary(2))]];
      output(i, j) = double(temporary);
    end
  end
  warning('on', 'all');
end