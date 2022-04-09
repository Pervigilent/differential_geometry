function alpha_ = arclengthprime (alpha)
%ARCLENGTHPRIME The derivative component of the arclength function.
% The derivative component of the arc length function. Described
% on page 23 of Gray. The arc length function is detailed on pages 6 - 8.
  alpha_ = dot(diff(alpha), diff(alpha));
  alpha_ = sqrt(alpha_);
endfunction
