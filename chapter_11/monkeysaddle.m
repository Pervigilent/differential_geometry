function [x, y, z] = monkeysaddle(u, v)
  %MONKEYSADDLE Create a parameterized monkey saddle
  % Create a parameterized monkey saddle
  x = u;
  y = v;
  z = u^3  - 3 * u * v^2;
end