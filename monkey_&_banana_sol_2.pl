solution([]).
solution([X,Y|Others]):-
			solution(Others),
member1(Y,[1,2,3,4,5,6,7,8]),
noattack(X,Y,Others).

noattack(X,Y,[]).
noattack(X,Y,[X1,Y1|Other1]):-
		Y \= Y1, T1 is Y1 -Y, T2 is X1 -X, T3 is X -X1,
		Y1 - Y = X1 - X,
		Y1 - Y \= X -X1,
		noattack(X,Y,Other1).
		
member1(E,[E|T]).
member1(E,[_|T]):-
			member1(E,T).