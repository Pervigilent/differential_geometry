function output = J(alpha)
%J  Complex structure of R2 := R x R
%   Complex structure of R2, page 3 of Gray 1st edition,
%   Mathematica definition on page 20 of Gray. R2 is 2-dimensional
%   real space R x R := (R, R).
  p1 = alpha(1);
  p2 = alpha(2);
  p1_ = -p2;
  p2_ = p1;
  output = [p1_; p2_];
end