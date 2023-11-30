function output = ParametricPlot3D(resolution_u, resolution_v,...
   input_, u, v, u_, v_)
%PARAMETRICPLOT3D Create points for parametric plot
% Create 3D points for parametric plot.  
  output = zeros(resolution_u, resolution_v);
  warning('off', 'all');
  for i = 1 : resolution_u
    for j = 1 : resolution_v
      temp(u, v) = input_;
      temporary = temp(u_(i), v_(j));
      %output = [output; [double(temporary(1)), double(temporary(2))]];
      output(i, j) = double(temporary);
    end
  end
  warning('on', 'all');
end