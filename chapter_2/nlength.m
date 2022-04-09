function alpha_ = nlength(a, b, alpha)
%NLENGTH Numerical value for the length of a curve
% The numerical value for the length of a curve given on page 23 of Gray.
% Arc length is described on pages 6 - 8 of Gray.
  alpha_ = double(length_(a, b, alpha));
endfunction
