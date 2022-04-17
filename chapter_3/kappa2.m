function alpha_ = kappa2(alpha)
%KAPPA2 Signed curvature of R2
%   The curvature in R2 defined on p. 11 of Gray, 1st edition.
%   Mathematica definition given on p. 20 of Gray.
  alpha_ = dot(diff(alpha, 2), J(diff(alpha)));
  alpha_ = alpha_ / dot(diff(alpha), diff(alpha))^(3/2);  
end
