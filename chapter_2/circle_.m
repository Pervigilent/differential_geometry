function alpha_ = circle_(a, x, y, t)
 %CIRCLE_ Parametrization of circle.
 %  Parametrization of circle from Gray page 26
  x(t) = a * cos(t);
  y(t) = a * sin(t);
  alpha_ = [x(t); y(t)];
end
