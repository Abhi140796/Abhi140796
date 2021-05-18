l_length([],0).
l_length([_|TAIL],N) :- l_length(TAIL,N1), N is N1 + 1.