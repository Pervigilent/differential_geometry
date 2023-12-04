function [x, y, z] = SpatialParametricPlot(x_, y_, z_,...
  resolution_u, resolution_v, u, v, u_, v_)
%SPATIALPARAMETRICPLOT Create points for parametric plot
% Create 3D points for parametric plot.  
  x = zeros(resolution_u, resolution_v);
  y = zeros(resolution_u, resolution_v);
  z = zeros(resolution_u, resolution_v);
  warning('off', 'all');
  for i = 1 : resolution_u
    for j = 1 : resolution_v
      xtemp(u, v) = x_;
      ytemp(u, v) = y_;
      ztemp(u, v) = z_;
      xtemporary = xtemp(u_(i), v_(j));
      ytemporary = ytemp(u_(i), v_(j));
      ztemporary = ztemp(u_(i), v_(j));
      %output = [output; [double(temporary(1)), double(temporary(2))]];
      x(i, j) = double(xtemporary);
      y(i, j) = double(ytemporary);
      z(i, j) = double(ztemporary);
    end
  end
  warning('on', 'all');
end