% Facts

father(ram, shyam).
father(ram, mohan).
father(shyam, rohan).

mother(sita, shyam).
mother(sita, mohan).
mother(gita, rohan).

male(ram).
male(shyam).
male(mohan).
male(rohan).

female(sita).
female(gita).

% Rules

parent(X,Y):- father(X,Y).
parent(X,Y):- mother(X,Y).

grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).

brother(X,Y):-
    father(F,X),
    father(F,Y),
    X \= Y,
    male(X).

sister(X,Y):-
    father(F,X),
    father(F,Y),
    X \= Y,
    female(X).