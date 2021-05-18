max_of_two(X,Y,X) :- X >= Y.
max_of_two(X,Y,Y) :- X < Y.

min_of_two(X,Y,X) :- Y >= X.
min_of_two(X,Y,Y) :- Y < X.

l_min_elem([X],X).
l_min_elem([X,Y|Rest],Min) :-
   			l_min_elem([Y|Rest],MinRest),
   			min_of_two(X,MinRest,Min).
l_max_elem([X],X).
l_max_elem([X,Y|Rest],Max) :-
   			l_max_elem([Y|Rest],MaxRest),
   			max_of_two(X,MaxRest,Max).


	