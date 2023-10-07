function [x, y] = rotate_(theta, alpha)
  x = cos(theta) .* alpha(1, :) - sin(theta) .* alpha(2, :);
  y = sin(theta) .* alpha(1, :) + cos(theta) .* alpha(2, :);
end
