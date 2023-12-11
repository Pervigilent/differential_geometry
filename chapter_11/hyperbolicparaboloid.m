function [x, y, z] = hyperbolicparaboloid(u, v)
  %HYPERBOLICPARABOLOID Simplest model to create a hyperbolic paraboloid
  % Simplest model to create a hyperbolic paraboloid
  x = u;
  y = v;
  z = u * v;
end