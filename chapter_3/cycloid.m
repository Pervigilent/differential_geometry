function alpha_ = cycloid(a, b, x, y, t)
 %CYCLOID Cycloid.
 %  Cycloid from Gray page 37
  x(t) = a * t - b * sin(t);
  y(t) = a - b * cos(t);
  alpha_ = [x(t); y(t)];
end
