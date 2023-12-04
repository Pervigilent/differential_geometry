function [x, y, z] = stereographicellipsoid(a, b, c, u, v)
  %ELLIPSE Cretae a parameterized ellipse
  % Refers to ellipse function created in section 2.4
  x = a * (1 - u^2 - v^2) / (1 + u^2 + v^2);
  y = 2 * b * u / (1 + u^2 + v^2);
  z = 2 * c * v / (1 + u^2 + v^2);
end