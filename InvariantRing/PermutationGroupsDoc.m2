-* 
   Copyright 2025, ??????

   You may redistribute this file under the terms of the GNU General Public
   License as published by the Free Software Foundation, either version 2 of
   the License, or any later version.
*-

document { 
    Key => PermutationAction,
    Headline => "computations involving the action of permutations on matrices and vectors",

    PARA {
        "This module provides methods for computing actions of permutations on ",
        "matrices, vectors, and other algebraic structures. It includes functions ",
        "to obtain the matrix representation of a permutation, to apply a permutation ",
        "to the rows or columns of a matrix, and to act on lists or vectors."
    }
}

document {
    Key => permuteRows,
    Headline => "permutes the rows of a matrix according to a permutation",

    PARA {
        "This function applies the permutation to the rows of a matrix. ",
        "If p is a permutation and M a matrix, then permuteRows(p, M) ",
        "returns the matrix whose i-th row is the p(i)-th row of M."
    },

    EXAMPLE {
        "i1 : p = permutation {3,1,2}",
        "o1 = Permutation{3,1,2}",
        "",
        "i2 : M = matrix {{1,2,3},{4,5,6},{7,8,9}}",
        "o2 = | 1 2 3 |",
        "     | 4 5 6 |",
        "     | 7 8 9 |",
        "",
        "i3 : permuteRows(p, M)",
        "o3 = | 7 8 9 |",
        "     | 1 2 3 |",
        "     | 4 5 6 |"
    },

    PARA {"See also ", TO permuteColumns, " and ", TO permutationAction, "."}
}

document {
    Key => permuteColumns,
    Headline => "permutes the columns of a matrix according to a permutation",

    PARA {
        "This function applies a permutation to the columns of a matrix. ",
        "It is equivalent to multiplying the matrix by the permutation matrix on the right."
    },

    EXAMPLE {
        "i1 : p = permutation {3,1,2}",
        "o1 = Permutation{3,1,2}",
        "",
        "i2 : M = matrix {{1,2,3},{4,5,6},{7,8,9}}",
        "o2 = | 1 2 3 |",
        "     | 4 5 6 |",
        "     | 7 8 9 |",
        "",
        "i3 : permuteColumns(M, p)",
        "o3 = | 2 3 1 |",
        "     | 5 6 4 |",
        "     | 8 9 7 |"
    },

    PARA {"See also ", TO permuteRows, " and ", TO permutationAction, "."}
}

document {
    Key => permutationAction,
    Headline => "applies a permutation to a list, vector, or matrix",

    PARA {
        "This function generalizes the action of permutations to various data types. ",
        "When the input is a list, it returns the permuted list. ",
        "When it is a matrix or vector, it applies the permutation to its indices. ",
        "Internally, this may call either permuteRows or permuteColumns depending on the object type."
    },

    EXAMPLE {
        "i1 : p = permutation {3,1,2}",
        "o1 = Permutation{3,1,2}",
        "",
        "i2 : v = {a,b,c}",
        "o2 = {a, b, c}",
        "",
        "i3 : permutationAction(p, v)",
        "o3 = {b, c, a}"
    },

    PARA {"See also ", TO permuteRows, ", ", TO permuteColumns, ", and ", TO matrix, "."}
}
