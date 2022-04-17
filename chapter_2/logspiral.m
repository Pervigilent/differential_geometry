function alpha_ = logspiral(a, b, x, y, t)
 %CIRCLE_ Parametrization of logarithmic spiral.
 %  Parametrization of logarithmic spiral from Gray page 29
  x(t) = a * exp(b * t) * cos(t);
  y(t) = a * exp(b * t) * sin(t);
  alpha_ = [x(t); y(t)];
end