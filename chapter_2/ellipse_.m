function alpha_ = ellipse_(a, b, x, y, t)
 %CIRCLE_ Parametrization of ellipse
 %  Parametrization of ellipse from Gray page 27
  x(t) = a * cos(t);
  y(t) = b * sin(t);
  alpha_ = [x(t); y(t)];
end