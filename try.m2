restart
load "InvariantRing.m2"
needsPackage "Permutations"


p = permutation {3,1,2,5,4}
M = Core$matrix p
assert (numRows M == 5 and numColumns M == 5)
assert (M_(0,1) == 1 and M_(1,2) == 1 and M_(2,0) == 1)

-- Test permuteRows
N = matrix {{1,2,3},{4,5,6},{7,8,9}}
q = permutation {3,1,2}
P1 = permuteRows(q, N)
-- assert (P1 == matrix {{7,8,9},{1,2,3},{4,5,6}})

-- Test permuteColumns
P2 = permuteColumns(N, q)
-- assert (P2 == matrix {{2,3,1},{5,6,4},{8,9,7}})

-- Test permutationAction on a list
v = {a,b,c}
r = permutationAction(q, v)
assert (r == {b,c,a})

-- Test permutationAction on a matrix
R = QQ[x,y,z]
M = matrix {{x,y,z}}
S = permutationAction(q, M)
-- assert (S == matrix {{y,z,x}})

-- Test orbit sum generation (basic correctness)
R1 = QQ[x_1..x_3]
W = {permutation {2,3,1}}
A = permutationAction(W, R1)
invariants(A,1)