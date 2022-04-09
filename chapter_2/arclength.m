function alpha_ = arclength(alpha)
%ARCLENGTH The arclength function is the indefinite integral of arclengthprime.
% The arclength function is the indefinite integral of arclengthprime.
% This is from page 23 of Gray. The arclength is described on pages 6 - 8.
  alpha_ = int(arclengthprime(alpha));
endfunction
