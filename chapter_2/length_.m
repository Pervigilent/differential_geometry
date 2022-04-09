function alpha_ = length_(a, b, alpha)
%LENGTH_ The length function is the definite integral of arclengthprime.
% The length function is the definite integral of arclengthprime.
% It is found on page 23 of Gray. Arc length is described on pages 6 - 8.
  alpha_ = int(arclengthprime(alpha), a, b);
end