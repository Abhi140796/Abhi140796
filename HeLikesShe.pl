likes(jhon, food).
likes(food, jhon).
likes(merry, jhon).
likes(david, merry).
likes(salman, single).
likes(kate, salman).
likes(salman, kate).

love(X, Y) :- likes(X, Y), likes(Y, X).