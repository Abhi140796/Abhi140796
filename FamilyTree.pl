male(abhishek).
male(chandrabhushan).
male(santosh).
male(ram).

female(sita).
female(asha).
female(sonal).
female(priyanka).

parent(chandrabhushan, asha, abhishek).
parent(chandrabhushan, asha, santosh).
parent(chandrabhushan, asha, sonal).
parent(chandrabhushan, asha, priyanka).
parent(ram, sita, chandrabhushan).

brother(abhishek, santosh).
brother(santosh, abhishek).
brother(abhishek, sonal).
brother(santosh, sonal).
brother(abhishek, priyanka).
brother(santosh, priyanka).

sister(sonal, priyanka).
sister(priyanka, sonal).
sister(sonal, abhishek).
sister(priyanka, santosh).
sister(sonal, santosh).
sister(priyanka, abhishek).

father(X, Y) :- parent(X,Z,Y).
mother(X, Y) :- parent(Z, X, Y).

grandfather(X, Y) :- male(X), father(X, Z), father(Z, Y).
grandmother(X, Y) :- female(X), mother(X, Z), father(Z, Y).

son(X, Y, Z) :- male(X), father(Y,X), mother(Z, X).
daughter(X, Y, Z) :- female(X), father(Y, X), mother(Z, X).

wife(X,Y) :- female(X), parent(Y, X, Z).