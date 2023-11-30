function [x, y, z] = monkeysaddle(u, v)
  %ELLIPSE Cretae a parameterized ellipse
  % Refers to ellipse function created in section 2.4
  x = u;
  y = v;
  z = u^3  - 3 * u * v^2;
end