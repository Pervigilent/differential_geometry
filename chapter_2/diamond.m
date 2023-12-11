function output = diamond(n, a, b, x, y, t)
 %DIAMOND Parametrization of the diamond.
 %  Parametrization of the diamond from Gray page 31
  x(t) = a^1 * sqrt(cos(t)^2)^(n - 1) * cos(t);
  y(t) = b^1 * sqrt(sin(t)^2)^(n - 1) * sin(t);
  
  % There is an inconsistent definition of the function.
  % I believe that the commented definition below is correct.
  
  %x(t) = a^n * sqrt(cos(t)^2)^(n - 1) * cos(t);
  %y(t) = b^n * sqrt(sin(t)^2)^(n - 1) * sin(t);
  
  output = [x(t); y(t)];
end