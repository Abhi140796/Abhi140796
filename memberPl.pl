l_member(X,[X|_]).
l_member(X,[_|TAIL]) :- l_member(X,TAIL).


l_delete(X, [X], []).
l_delete(X,[X|L1], L1).
l_delete(X, [Y|L2], [Y|L1]) :- list_delete(X,L2,L1).

l_append(A,T,T) :- l_member(A,T),!.
l_append(A,T,[A|T]).