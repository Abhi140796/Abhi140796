fact1(X, N):-
			myfact(X,1,N).
			
myfact(0, A, A).
myfact(X, A, N):-
				X > 0,
				A1 is A * X,
				X1 is X -1,
				myfact(X1,A1,N).