function [ pivot_out ] = pivot ( alpha, V )
  if alpha ~= 0
    pivot_out = 0;
  else
    nonZeroIndeces = find(V ~= 0);
    pivot_out = nonZeroIndeces(1);
  end
end