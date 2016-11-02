function [ P_out ] = MakePivotMatrix( p, A )
  pivotSize = size(A,1);

  if(p == 0)
    P_out = eye(pivotSize);
    return;
  end

  if(p == 1)
    p = 2;
  end

  % Make vector like [1,2,3...pivotSize];
  pivotVector = [1 : pivotSize];
  % Swap number one and the pivotIndex
  index1 = pivotVector(1);
  pivotVector(1) = pivotVector(p);
  pivotVector(p) = index1;
  % if p = 2, then pivotVec = [2,1,3,...pivotSize];

  % Make source array to overwrite
  P_out = zeros(pivotSize);
  
  % Insert 1 at the correct places  
  for i = 1:numel(pivotVector)
    pivotCol = pivotVector(i);
    P_out(i, pivotCol) = 1;
  end

end