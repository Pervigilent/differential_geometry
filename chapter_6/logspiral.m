function [x, y] = logspiral(a, b, t)
  %LOGSPIRAL Creates a logarithmic spiral
  % Refers to log spiral function in section 2.4
  x = a .* exp(b .* t) .* cos(t);
  y = a .* exp(b .* t) .* sin(t);
end
