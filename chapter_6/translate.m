function [x, y] = translate(p, alpha)
  x = alpha(1, :) + p(1);
  y = alpha(2, :) + p(2);
end
