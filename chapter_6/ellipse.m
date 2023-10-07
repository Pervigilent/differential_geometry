function [x, y] = ellipse(a, b, t)
  %ELLIPSE Cretae a parameterized ellipse
  % Refers to ellipse function created in section 2.4
  x = a * cos(t);
  y = b * sin(t);
end
