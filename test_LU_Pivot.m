A = [2 4 -2; 4 8 6; 6 -4 2];

[LU, p] = LU_pivot(A);

L = tril( LU, -1 ) + eye( size( LU ) );
% Extract the upper triangular matrix
U = triu( LU );

ApplyPivots(A, p) - L*U
