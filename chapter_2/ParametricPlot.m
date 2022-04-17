function output = ParametricPlot(resolution, input, t, t_)
%PARAMETRICPLOT Create points for parametric plot
% Create 2D points for parametric plot.  
  output = [];
  warning('off', 'all');
  for i = 1 : resolution
    temp(t) = input;
    temporary = temp(t_(i));
    output = [output; [double(temporary(1)), double(temporary(2))]];
  end
  warning('on', 'all');
end
