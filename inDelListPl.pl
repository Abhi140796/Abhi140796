l_delete(X, [X], []).
l_delete(X,[X|L1], L1).
l_delete(X, [Y|L2], [Y|L1]) :- l_delete(X,L2,L1).

l_insert(X,L,R) :- l_delete(X,R,L).