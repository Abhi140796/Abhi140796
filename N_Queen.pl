queens([]).

queens([ Row/Col | Rest]) :-
					queens(Rest), member(Col, [1,2,3,4,5,6,7,8]), safe( Row/Col, Rest).
					
safe(Anything, []).

safe(Row/Col, [Row1/Col1 | Rest]) :-
							 Col =\= Col1, Col1 - Col =\= Row1 - Row, 
							 Col1 - Col =\= Row - Row1, safe(Row/Col, Rest).
							 
member(X, [X | Tail]).

member(X, [Head | Tail]) :-
					member(X, Tail).