function alpha_ = diamond(n, a, b, x, y, t)
 %CIRCLE_ Parametrization of logarithmic spiral.
 %  Parametrization of logarithmic spiral from Gray page 29
  x(t) = a^1 * sqrt(cos(t)^2)^(n - 1) * cos(t);
  y(t) = b^1 * sqrt(sin(t)^2)^(n - 1) * sin(t);
  
  % There is an inconsistent definition of the function.
  % I believe that the commented definition below is correct.
  
  %x(t) = a^n * sqrt(cos(t)^2)^(n - 1) * cos(t);
  %y(t) = b^n * sqrt(sin(t)^2)^(n - 1) * sin(t);
  
  alpha_ = [x(t); y(t)];
end