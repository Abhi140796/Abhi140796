fib2(1,1).
fib2(2,1).
fib2(N,F):-
		N > 2,
		N1 is N - 1, fib2(N1,F1),
		N2 is N - 2, fib2(N2,F2),
		F is F1 + F2,
		asserta(fib2).