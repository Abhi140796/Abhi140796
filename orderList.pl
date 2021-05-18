l_order([X, Y | Tail]) :- X =< Y, l_order([Y|Tail]).
l_order([X]).