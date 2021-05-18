l_delete(X,[X|L1], L1).
l_delete(X, [Y|L2], [Y|L1]) :- l_delete(X,L2,L1).

l_perm([],[]).
l_perm(L,[X|P]) :- l_delete(X,L,L1),l_perm(L1,P).